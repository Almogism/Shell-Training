# Git Bash Shell Exercises - Input/Transform/Verify

## Exercise 1: Basic Text Transformation
**Goal:** Learn basic text manipulation commands

### Your Task:
Write a script `script1.sh` that transforms `data.txt` by:
1. Sorting all lines alphabetically
2. Adding a line number prefix to each line (1. apple, 2. banana, etc.)
3. Converting everything to uppercase

### Expected Final Content of data.txt:
```
1. APPLE
2. BANANA
3. CHERRY
4. DATE
5. ELDERBERRY
6. FIG
7. GRAPE
```

### Hints:
<details>
<summary>💡 How to sort the file</summary>
Use `sort` to sort the file
</details>

<details>
<summary>💡 How to add line numbers</summary>
Use `nl` or `cat -n` to add line numbers
</details>

<details>
<summary>💡 How to convert to uppercase</summary>
Use `tr` to convert to uppercase
</details>

<details>
<summary>💡 How to save back to the same file</summary>
Remember to save back to the same file with `>` redirection
</details>

---

## Exercise 2: CSV Data Processing
**Goal:** Learn to manipulate structured data

### Your Task:
Write a script `script2.sh` that transforms `students.csv` by:
1. Adding a header row: "Name,Score,Subject"
2. Sorting by score (highest to lowest)
3. Adding a "Grade" column based on score:
   - 90+: A
   - 80-89: B  
   - 70-79: C
   - Below 70: D

### Expected Final Content of students.csv:
```
Name,Score,Subject,Grade
Tom,95,English,A
Mike,91,Math,A
Kate,88,English,B
John,85,Math,B
Emma,82,Science,B
Alex,79,Math,C
Sarah,72,English,C
Lisa,68,Science,D
```

### Hints:
<details>
<summary>💡 How to add grades with awk</summary>
Use `awk` to add grades based on conditions
</details>

<details>
<summary>💡 How to sort by score</summary>
Use `sort -t',' -k2,2nr` to sort by second column numerically reverse
</details>

<details>
<summary>💡 How to add header row</summary>
Use `sed` to add header row at the beginning
</details>

---

## Exercise 3: Log File Processing
**Goal:** Learn to clean and format log data

### Your Task:
Write a script `script3.sh` that transforms `server.log` by:
1. Removing all INFO level entries
2. Adding a count prefix to remaining entries (1., 2., 3., etc.)
3. Extracting only the time and message (removing date and log level)
4. Sorting by time

### Expected Final Content of server.log:
```
1. 09:05:23 Database connection failed
2. 09:10:45 Low disk space (15% remaining)
3. 09:20:12 File /data/temp.txt not found
4. 09:35:22 Network timeout occurred
```

### Hints:
<details>
<summary>💡 How to remove INFO entries</summary>
Use `grep -v "INFO"` to remove INFO entries
</details>

<details>
<summary>💡 How to extract time and message</summary>
Use `sed` to extract time and message parts
</details>

<details>
<summary>💡 How to sort by time</summary>
Use `sort` to sort by time
</details>

<details>
<summary>💡 How to add line numbers</summary>
Use `nl` to add line numbers
</details>

---

## Exercise 4: Inventory Management
**Goal:** Learn to update and calculate data

### Your Task:
Write a script `script4.sh` that transforms `inventory.txt` by:
1. Adding a "Total Value" column (quantity × price)
2. Sorting by total value (highest first)
3. Adding a "Stock Status" column:
   - Less than 15: "LOW"
   - 15-25: "MEDIUM" 
   - More than 25: "HIGH"
4. Formatting as a proper table with headers

### Expected Final Content of inventory.txt:
```
Product     Qty  Price   Total     Status
Laptop      15   899.99  13499.85  MEDIUM
Tablet      25   449.99  11249.75  HIGH
Speaker     18   199.99  3599.82   MEDIUM
Headphones  22   129.99  2859.78   MEDIUM
Monitor     8    299.99  2399.92   LOW
Keyboard    30   75.00   2250.00   HIGH
Mouse       45   25.50   1147.50   HIGH
Webcam      12   89.99   1079.88   LOW
```

### Hints:
<details>
<summary>💡 How to calculate and add columns</summary>
Use `awk` to calculate total value and determine status
</details>

<details>
<summary>💡 How to format as a table</summary>
Use `printf` in awk for formatting
</details>

<details>
<summary>💡 How to sort by total value</summary>
Use `sort -k4,4nr` to sort by 4th column numerically reverse
</details>

---

## Exercise 5: Contact List Cleanup
**Goal:** Learn text cleaning and standardization

### Your Task:
Write a script `script5.sh` that transforms `contacts.txt` by:
1. Standardizing names to "First Last" format (proper case)
2. Standardizing phone numbers to "555-XXX-XXXX" format
3. Sorting alphabetically by last name
4. Adding a header line
5. Converting to CSV format (commas instead of semicolons)

### Expected Final Content of contacts.txt:
```
Name,Email,Phone
Lisa Brown,lisa.brown@email.com,555-321-0987
Tom Davis,tom.davis@email.com,555-014-7000
Sarah Johnson,sarah.j@email.com,555-456-7890
John Smith,john.smith@email.com,555-012-3000
Emma White,emma.w@email.com,555-852-9630
Mike Wilson,mike.w@email.com,555-789-0123
```

### Hints:
<details>
<summary>💡 How to clean phone number formats</summary>
Use `sed` to clean up phone number formats
</details>

<details>
<summary>💡 How to capitalize names properly</summary>
Use `awk` to capitalize names properly
</details>

<details>
<summary>💡 How to sort by last name</summary>
Use `sort -t',' -k1,1` to sort by name
</details>

<details>
<summary>💡 How to convert semicolons to commas</summary>
Use `tr ';' ','` to convert semicolons to commas
</details>

---

## Exercise 6: Sales Data Analysis
**Goal:** Learn data aggregation and reporting

### Your Task:
Write a script `script6.sh` that transforms `sales.txt` by:
1. Adding a "Total" column (quantity × price)
2. Grouping by salesperson and calculating their total sales
3. Sorting by total sales (highest first)
4. Adding a performance rating:
   - $1000+: "Excellent"
   - $500-999: "Good"
   - $200-499: "Average"
   - Below $200: "Needs Improvement"

### Expected Final Content of sales.txt:
```
Salesperson,Total_Sales,Performance
John,1289.97,Excellent
Sarah,1053.49,Excellent
Mike,409.98,Average
Lisa,127.50,Needs Improvement
```

### Hints:
<details>
<summary>💡 How to calculate totals and group data</summary>
Use `awk` to calculate totals and group by salesperson
</details>

<details>
<summary>💡 How to sum up totals per person</summary>
Use associative arrays in awk to sum up totals per person
</details>

<details>
<summary>💡 How to sort by sales amount</summary>
Use `sort -t',' -k2,2nr` to sort by second column
</details>

---

## How to Verify Your Work:

2. **Write your script** to transform the file
3. **Run your script**: `chmod +x scriptX.sh && ./scriptX.sh`
4. **Check the file**: `cat filename.txt`
5. **Compare** with the expected output

## Common Commands You'll Need:
- `sort` - Sort lines
- `awk` - Process and calculate
- `sed` - Text substitution
- `grep` - Filter lines
- `tr` - Character translation
- `nl` - Number lines
- `cut` - Extract columns
- `printf` - Format output

Each exercise builds on the previous ones. Master each one before moving to the next!