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
    
    public partial class Contact
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Emailadress { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public Nullable<int> UserId { get; set; }
    
        public virtual User User { get; set; }
    }
}
