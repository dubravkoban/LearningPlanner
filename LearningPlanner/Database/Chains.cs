//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LearningPlanner.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Chains
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Chains()
        {
            this.MaterialsChains = new HashSet<MaterialsChains>();
        }
    
        public short ID { get; set; }
        public byte Progress { get; set; }
        public string Comment { get; set; }
        public byte Position { get; set; }
    
        public virtual Status Status { get; set; }
        public virtual Users Users { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MaterialsChains> MaterialsChains { get; set; }
    }
}
