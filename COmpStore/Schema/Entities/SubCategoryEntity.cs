﻿using System;
using System.Collections.Generic;
using System.Text;

namespace COmpStore.Schema.Entities
{
    public class SubCategoryEntity : BaseEntity
    {
        public string SubCategoryName { get; set; }
        public int CategoryId { get; set; }

        public virtual IEnumerable<CategoryEntity> Category { get; set; }
    }
}
