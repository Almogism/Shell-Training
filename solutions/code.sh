# Solution for Exercise 1: script1.sh
#!/bin/bash
# Sort fruits.txt and add line numbers

sort fruits.txt > temp.txt && mv temp.txt fruits.txt
nl fruits.txt > temp.txt && mv temp.txt fruits.txt

echo "Exercise 1 completed: fruits.txt has been sorted and numbered"

---

# Solution for Exercise 2: script2.sh
#!/bin/bash
# Convert names.txt to uppercase

tr '[:lower:]' '[:upper:]' < names.txt > temp.txt && mv temp.txt names.txt

echo "Exercise 2 completed: names.txt has been converted to uppercase"

---

# Solution for Exercise 3: script3.sh
#!/bin/bash
# Keep only animals containing the letter "e"

grep "e" animals.txt > temp.txt && mv temp.txt animals.txt

echo "Exercise 3 completed: animals.txt now contains only animals with 'e'"

---

# Solution for Exercise 4: script4.sh
#!/bin/bash
# Remove all lines containing "blue"

grep -v "blue" colors.txt > temp.txt && mv temp.txt colors.txt

echo "Exercise 4 completed: all 'blue' lines removed from colors.txt"

---

# Solution for Exercise 5: script5.sh
#!/bin/bash
# Add line count to the end of the file

echo "Total lines: $(wc -l < numbers.txt)" >> numbers.txt

echo "Exercise 5 completed: line count added to numbers.txt"

---

# Solution for Exercise 6: script6.sh
#!/bin/bash
# Replace "World" with "Universe"

sed 's/World/Universe/g' message.txt > temp.txt && mv temp.txt message.txt

echo "Exercise 6 completed: all 'World' replaced with 'Universe' in message.txt"
