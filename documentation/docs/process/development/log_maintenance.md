# Monitoring and Cleaning Loupe Logs

## Purpose
Our current logging system (Loupe) is too cluttered with errors, making it difficult to extract useful insights or preemptively address bugs. This process ensures we **regularly clean up our logs** by reviewing the most frequent errors **once a month** and taking action to improve logging quality.

By keeping our logs **clean and actionable**, we enable:
- **Better debugging** by reducing noise.
- **Faster issue resolution** by addressing real bugs.
- **Improved monitoring** to catch problems earlier.

---

## Monthly Error Review Process

### **1. Navigate to Loupe**
[//]: # (TODO: Add navigation steps for finding the error list)

See the [Navigation Section](#navigation-to-loupe) for how to access the list of **unique errors** and their **occurrence counts**.

---

### **2. Identify the Top 3 Most Frequent Errors**
- Sort errors by **occurrence count**.
- Focus on the **highest two errors** from the past month.

---

### **3. Create Work Items for Each Error**
For each of the **top two errors**, create a **Bug** in our work tracking system (Azure DevOps).

#### **Bug Criteria**
- **Actual Bugs**: If the error represents a legitimate issue in the code, it should be **fixed**.
- **Noisy Errors**: If the error **isn’t really a bug** but still appears often, consider:
  - **Downgrading it to a warning**.
  - **Suppressing it if it's not useful**.

**The goal is to clean up logs, not just fix issues!** If an error isn't useful, **it should not clutter the logs.**

---

### **4. Verify Fixes the Next Month**
- The following month, check if the previously addressed errors **still appear**.
- If an error **keeps coming back**, investigate why.

---

## **Navigation to Loupe**
[//]: # (TODO: Add step-by-step navigation instructions)

### **1. Access Loupe**
You can access loupe at [onloupe.com](http://onloupe.com/). You will need to reach out to your team lead if you do not have credentials.

### **2. Find the Error List**
To find the list of unique errors and their occurrences, select "Resolve" from the left hand navigation pane. Then select 
"Events" and "Unique Events" on the top navigation menu.

![Loupe Unique Errors](..\images\NavigateToUniqueLoupeLogs.PNG)

### **3. Filter by the Past Month**
The errors on this screen should show the last 30 days by default. Select the filter icon in the top right if you wish to 
change the way the errors are filtered.

![Loupe Unique Errors Filtering](..\images\FilteringUniqueLoupeLogs.PNG)

---

## **Summary**
- **Every month**, review the **top 3 most common errors**.
- **Create bugs** for the **top 2 highest occurrences**.
- **Fix actual bugs, downgrade/log-only spammy ones**.
- **Ensure logging stays clean** so we can actually use it to detect real issues.

---
