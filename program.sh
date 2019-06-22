#!/bin/bash

echo "- Dodanie dokumentu" > komunikaty.txt
curl –XPUT -H "Content-Type: application/json" -d '{"name": "Neverhood", "price": 10, "publisher": "DreamWorks Interactive", "releaseYear": 1996}'  http://192.168.99.100:8098/buckets/s19950/keys/Neverhood
echo "Dodany dokument:" >> komunikaty.txt
echo "`curl http://192.168.99.100:8098/buckets/s19950/keys/Neverhood`" >> komunikaty.txt

echo "" >> komunikaty.txt

echo "- Modyfikacja dokumentu" >> komunikaty.txt
curl –XPUT -H "Content-Type: application/json" -d '{"name": "Neverhood", "price": 20, "publisher": "DreamWorks Interactive", "releaseYear": 1996}'  http://192.168.99.100:8098/buckets/s19950/keys/Neverhood
echo "Zmodyfikowany dokument:" >> komunikaty.txt
echo "`curl http://192.168.99.100:8098/buckets/s19950/keys/Neverhood`" >> komunikaty.txt

echo "" >> komunikaty.txt

echo "- Usuniecie dokumentu" >> komunikaty.txt
curl -XDELETE http://192.168.99.100:8098/buckets/s19950/keys/Neverhood
echo "Proba probrania usunietego dokumentu:" >> komunikaty.txt
echo "`curl http://192.168.99.100:8098/buckets/s19950/keys/Neverhood`" >> komunikaty.txt