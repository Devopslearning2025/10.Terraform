  variable "inbound-port-numbers" {
    type = list
    default = [
        {
            port         = 22
            alowed_cider = ["0.0.0.0/0"]
            protocol     = "tcp"
    },
    {
            port         = 80
            alowed_cider = ["0.0.0.0/0"]
            protocol     = "tcp"            
    },
    {
            port         = 8080
            alowed_cider = ["0.0.0.0/0"]
            protocol     = "tcp"            
    },
    {
            port         = 3306
            alowed_cider = ["0.0.0.0/0"]
            protocol     = "tcp"            
    },
      ]
  }