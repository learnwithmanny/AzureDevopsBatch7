terraform {
  required_providers {
    azurerm= {
        source = "hashicorp/azurerm"
        version = ">3.0.0"
    }
    
  }
}

provider "azurerm" {
  subscription_id = "66163d79-aaee-4101-a413-a8224073123a"
  features {}
}

resource "azurerm_resource_group" "internalRG1" {
location = "centralindia"
name = "LearningLab"
tags = {
    "createdby" = "terraform"
}
}
  


