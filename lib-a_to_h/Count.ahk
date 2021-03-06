Count(obj, key = "")
{
	; For non-objects, count is always 1
	if(!IsObject(obj))
		return 1
	
	; If key does not exist, return count of this object
	if(key = "")
	{
		count := 0
		for k, v in obj
			count ++
		return count
	}
	
	; If key exists, return count of this key
	if(obj.HasKey(key))
		return Count(obj.key)
}