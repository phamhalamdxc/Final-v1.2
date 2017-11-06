﻿using COmpStore.Schema;
using COmpStore.Schema.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace COmpStore.Repositories
{
    public class ProductRepository : IProductRepository
    {
        private StoreDbContext _context;
        public ProductRepository(StoreDbContext context)
        {
            _context = context;
        }

        public IList<Product> GetAllProducts()
        {
            return _context.Products.Include(s => s.SubCategory)
                                    .Include(s => s.Publisher)
                                    .ToList();
        }

        public Product GetSingleProduct(int id)
        {
            return _context.Products.Include(s => s.SubCategory)
                                    .Include(s => s.Publisher)
                                    .FirstOrDefault(s => s.Id == id);
        }

        public void Add(Product product)
        {
            _context.Products.Add(product);

        }

        public void Delete(int id)
        {
            Product product = GetSingleProduct(id);
            _context.Products.Remove(product);
        }

        public void Update(Product product)
        {
            _context.Products.Update(product);
        }

        public bool Save()
        {
            return _context.SaveChanges() >= 0;
        }


    }

    public interface IProductRepository
    {
        void Add(Product product);
        void Delete(int id);
        IList<Product> GetAllProducts();
        Product GetSingleProduct(int id);
        bool Save();
        void Update(Product product);
    }
}
