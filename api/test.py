import json
jsonData = '["Direction": "North", "subDir1": "N1", "subDir2": "N2"]'
jsonToPython = json.loads(jsonData)
print (json.dumps(jsonToPython))
