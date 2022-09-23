%dw 2.0ns ns0 http://www.adatum.com

output application/json
---payload mapObject(value , key , index) ->{	(key): value mapObject(k , v , i) ->	{		("employee"++(i+1)):			{				empId: k.@EmployeeId,				empName: k.Name,				empDesig: k.@EmployeeType,				empDept: k.Department,				empExp: k.Experience,				empDoj: (k.DOJ as Date {format:"MMddyy"}) as String {format: "ddMMyyyy"}											}		}			}