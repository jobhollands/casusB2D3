//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace casusB2D3_BU
{
    using System;
    using System.Collections.Generic;
    
    public partial class Occasion
    {
        public int Id { get; set; }
        public int Version { get; set; }
        public string Name { get; set; }
        public System.DateTime Date { get; set; }
        public string Location { get; set; }
        public string MoreInformationURL { get; set; }
        public bool IsApproved { get; set; }
    
        public virtual History History { get; set; }
    }
}
