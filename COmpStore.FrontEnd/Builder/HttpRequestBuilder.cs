﻿using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace COmpStore.FrontEnd.Builder
{
    public class HttpRequestBuilder
    {
        private HttpMethod method = null;
        private string requestUri = "http://localhost:2693/api/";
        private HttpContent content = null;
        private string bearerToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtcnRlYUBnbWFpbC5jb20iLCJqdGkiOiIzOWI0ZmRjMS04NTVkLTQzNjItYmI1MS04ODMyZWI2NDRmNGUiLCJlbWFpbCI6Im1ydGVhQGdtYWlsLmNvbSIsImV4cCI6MTUwOTQ2NTM3MCwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo2MDI2OCIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6NjAyNjgifQ.yP2vdE8iRw4TkOGfDHMbYtB0IGigefGfXfAKQosLuEE";
        private string acceptHeader = "application/json";
        private TimeSpan timeout = new TimeSpan(0, 0, 15);
        private bool allowAutoRedirect = false;

        public HttpRequestBuilder()
        {
        }

        public HttpRequestBuilder AddMethod(HttpMethod method)
        {
            this.method = method;
            return this;
        }
        
        public HttpRequestBuilder AddRequestUri(string requestUri)
        {
            this.requestUri += requestUri;
            return this;
        }

        public HttpRequestBuilder AddContent(HttpContent content)
        {
            this.content = content;
            return this;
        }

        public HttpRequestBuilder AddBearerToken(string bearerToken)
        {
            this.bearerToken = bearerToken;
            return this;
        }

        public HttpRequestBuilder AddAcceptHeader(string acceptHeader)
        {
            this.acceptHeader = acceptHeader;
            return this;
        }

        public HttpRequestBuilder AddTimeout(TimeSpan timeout)
        {
            this.timeout = timeout;
            return this;
        }

        public HttpRequestBuilder AddAllowAutoRedirect(bool allowAutoRedirect)
        {
            this.allowAutoRedirect = allowAutoRedirect;
            return this;
        }

        public async Task<HttpResponseMessage> SendAsync()
        {
            try
            {
                // Check required arguments
                EnsureArguments();

                // Set up request
                var request = new HttpRequestMessage
                {
                    Method = this.method,
                    RequestUri = new Uri(this.requestUri)
                };

                if (this.content != null)
                    request.Content = this.content;

                if (!string.IsNullOrEmpty(this.bearerToken))
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", this.bearerToken);

                request.Headers.Accept.Clear();
                if (!string.IsNullOrEmpty(this.acceptHeader))
                    request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue(this.acceptHeader));

                // Setup client
                var handler = new HttpClientHandler();
                handler.AllowAutoRedirect = this.allowAutoRedirect;

                var client = new System.Net.Http.HttpClient(handler);
                client.Timeout = this.timeout;

                return await client.SendAsync(request);
            }
            catch(Exception e)
            {
                Console.WriteLine(e.ToString());
                return null;
            }
         
        }

        #region " Private "

        private void EnsureArguments()
        {
            if (this.method == null)
                throw new ArgumentNullException("Method");
            
            if (string.IsNullOrEmpty(this.requestUri))
                throw new ArgumentNullException("Request Uri");
        }

        #endregion
    }
}
