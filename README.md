# Simple Git Bash Shell Exercises - Input/Transform/Verify

## Setup Instructions
```bash
cd ~
mkdir shell_practice
cd shell_practice
```

---

## Exercise 1: Basic Sorting and Numbering
**Goal:** Learn `sort` and `nl` commands

### Your Task:
Write a script `script1.sh` that transforms `fruits.txt` by:
1. Sorting the lines alphabetically
2. Adding line numbers to each line

### Expected Final Content of fruits.txt:
```
     1	apple
     2	banana
     3	cherry
     4	date
```

### Hints:
<details>
<summary>💡 How to sort lines</summary>
Use `sort fruits.txt > temp.txt && mv temp.txt fruits.txt`
</details>

<details>
<summary>💡 How to add line numbers</summary>
Use `nl fruits.txt > temp.txt && mv temp.txt fruits.txt`
</details>

---

## Exercise 2: Text Case Conversion
**Goal:** Learn `tr` command for text transformation

### Your Task:
Write a script `script2.sh` that transforms `names.txt` by:
1. Converting all text to uppercase

### Expected Final Content of names.txt:
```
JOHN SMITH
MARY JONES
BOB WILSON
LISA BROWN
```

### Hints:
<details>
<summary>💡 How to convert to uppercase</summary>
Use `tr '[:lower:]' '[:upper:]' < names.txt > temp.txt && mv temp.txt names.txt`
</details>

---

## Exercise 3: Filtering Lines
**Goal:** Learn `grep` command for filtering

### Your Task:
Write a script `script3.sh` that transforms `animals.txt` by:
1. Keeping only animals that contain the letter "e"

### Expected Final Content of animals.txt:
```
elephant
eagle
tiger
```

### Hints:
<details>
<summary>💡 How to filter lines containing "e"</summary>
Use `grep "e" animals.txt > temp.txt && mv temp.txt animals.txt`
</details>

---

## Exercise 4: Removing Lines
**Goal:** Learn `grep -v` to remove lines

### Your Task:
Write a script `script4.sh` that transforms `colors.txt` by:
1. Removing all lines that contain "blue"

### Expected Final Content of colors.txt:
```
red
green
yellow
purple
orange
```

### Hints:
<details>
<summary>💡 How to remove lines containing "blue"</summary>
Use `grep -v "blue" colors.txt > temp.txt && mv temp.txt colors.txt`
</details>

---

## Exercise 5: Counting and Appending
**Goal:** Learn `wc` and `echo >>`

### Your Task:
Write a script `script5.sh` that transforms `numbers.txt` by:
1. Adding a new line at the end that says "Total lines: X" (where X is the actual count)

### Expected Final Content of numbers.txt:
```
1
2
3
4
5
Total lines: 5
```

### Hints:
<details>
<summary>💡 How to count lines</summary>
Use `wc -l < numbers.txt` to get the line count
</details>

<details>
<summary>💡 How to append the count</summary>
Use `echo "Total lines: $(wc -l < numbers.txt)" >> numbers.txt`
</details>

---

## Exercise 6: Simple Text Replacement
**Goal:** Learn `sed` for basic text replacement

### Your Task:
Write a script `script6.sh` that transforms `message.txt` by:
1. Replacing every occurrence of "World" with "Universe"

### Expected Final Content of message.txt:
```
Hello Universe
This is a test
Universe is beautiful
Good Universe
```

### Hints:
<details>
<summary>💡 How to replace text</summary>
Use `sed 's/World/Universe/g' message.txt > temp.txt && mv temp.txt message.txt`
</details>

---

## How to Verify Your Work:

1. **Write your script** to transform the file
2. **Make it executable**: `chmod +x scriptX.sh`
3. **Run your script**: `./scriptX.sh`
4. **Check the result**: `cat filename.txt`
5. **Compare** with the expected output

## Simple Commands Reference:
- `sort filename` - Sort lines alphabetically
- `nl filename` - Add line numbers
- `tr 'a' 'b'` - Replace character 'a' with 'b'
- `grep "pattern"` - Keep lines matching pattern
- `grep -v "pattern"` - Remove lines matching pattern
- `wc -l` - Count lines
- `echo "text" >>` - Append text to file
- `sed 's/old/new/g'` - Replace old with new

## Important Pattern:
Always use temporary files when modifying:
```bash
command input.txt > temp.txt && mv temp.txt input.txt
```

Start with Exercise 1 and work your way up. Each exercise teaches one main command!