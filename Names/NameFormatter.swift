
import Foundation

class NameFormatter
{
  var name: String
  
  init(name: String)
	{
    self.name = name
  }
  
  func inverted() -> String
	{
		if name == ""
		{
			return ""
		}
		
		name = name.trimmingCharacters(in: .whitespaces)
	
		if name.contains(" ")
		{
			for honorific in ["Dr.","Mr.","Mrs.","Ms.","Sir","Ma'am"]
			{
				if name.contains(honorific)
				{
					let nameArray = name.split(separator: " ", maxSplits: 2)
					
					if nameArray.count <= 2
					{
						return "\(nameArray[0]) \(nameArray[1])"
					}
					else
					{
						return "\(nameArray[0]) \(nameArray[2]), \(nameArray[1])"
					}
				}
			}
			
			let nameArray = name.split(separator: " ", maxSplits: 2)
			return "\(nameArray[1]), \(nameArray[0])"
		}
		
		else  //from this point on single names
		{
			for honorific in ["Dr.","Mr.","Mrs.","Ms.","Sir","Ma'am"]
			{
				if name.contains(honorific)
				{
					return ""
				}
			}
		}
		
		return name
	}
	
	
}
