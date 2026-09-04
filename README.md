# **📊 Instagram Sentiment Analysis (Python | SQL | Power BI)**

🚀 End-to-End Data Analytics Project focused on analyzing Instagram comments to extract sentiment insights and visualize user behavior.

---

## 📌 Project Overview

This project builds a complete data pipeline to transform raw Instagram comments into actionable insights using NLP, SQL, and Power BI.

👉 From messy text data → to structured insights → to interactive dashboard

---

## 🎯 Objective

- Analyze user comments from Instagram
- Classify sentiment (Positive / Negative / Neutral)
- Extract patterns and behavioral insights
- Visualize findings using Power BI dashboard

---

## 🧱 Tech Stack

- 🐍 Python (Pandas, NLTK - VADER)
- 🗄️ SQL (MySQL)
- 📊 Power BI

---

## 📂 Dataset

- Source: Instagram comments (CSV format)
- Contains noisy text (emojis, URLs, mixed language, special characters)

---
Raw Data (CSV)
↓
Python (Cleaning + NLP)
↓
Processed Data (Clean CSV)
↓
MySQL (Storage + Analysis)
↓
Power BI (Dashboard)

---

## 🐍 Python Workflow

### 🔹 Data Cleaning
- Removed null values
- Converted text to lowercase
- Removed URLs, special characters, extra spaces

### 🔹 Sentiment Analysis
Used VADER from NLTK:

```python
from nltk.sentiment.vader import SentimentIntensityAnalyzer

sia = SentimentIntensityAnalyzer()

def classify_sentiment(text):
    score = sia.polarity_scores(text)['compound']
    if score > 0:
        return "Positive"
    elif score < 0:
        return "Negative"
    else:
        return "Neutral
---

## 🔄 Data Pipeline

**🔹 Feature Engineering**
comment_length → length of text
word_count → number of words

---

## 🗄️ SQL Analysis

**🔹 Create Table**

CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    comment TEXT,
    clean_comment TEXT,
    sentiment VARCHAR(20),
    comment_length INT,
    word_count INT
);

**🔹 Key Queries**

Sentiment Distribution
SELECT sentiment, COUNT(*) AS total_comments
FROM comments
GROUP BY sentiment;
Percentage Distribution
SELECT sentiment,
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM comments) AS percentage
FROM comments
GROUP BY sentiment;
Average Comment Length
SELECT sentiment, AVG(comment_length) AS avg_length
FROM comments
GROUP BY sentiment;

---

## 📊 Power BI Dashboard

**📄 Sheet 1: Overview**
KPI Cards (Total, Positive, Negative, Neutral)
Pie Chart (Sentiment distribution)

**📄 Sheet 2: Analysis**
Bar Chart → Avg Comment Length by Sentiment
Bar Chart → Avg Word Count by Sentiment
Table → Detailed comments with metrics

## 📈Key Insights

~48% comments are Positive → strong customer satisfaction
Negative comments are longer and more detailed
Neutral comments indicate user queries and engagement
Frequent keywords: serum, skin, acne, vitamin C

## 💡 Business Value

Identify customer sentiment trends
Detect product-related issues
Improve customer experience strategies
Support data-driven marketing decisions

## 🧠 Learnings

End-to-end data pipeline development
NLP-based sentiment analysis
SQL querying and aggregation
Dashboard design and storytelling
Handling real-world noisy data

## 🚀 How to Run

Run Python script for cleaning and sentiment analysis
Export cleaned dataset as CSV
Import into MySQL database
Run SQL queries for analysis
Load data into Power BI for visualization

## 📌 Future Improvements

Add real-time data scraping
Use advanced ML models for sentiment
Build automated dashboard refresh
Add keyword-level sentiment tracking

---

## 👩‍💻 Author

### Samruddhi Savale

**Data Analyst | Excel | Python | SQL | Power BI**

- **GitHub:** 
https://github.com/Samruddhi-Savale/Banking-Analytics.git

- **LinkedIn:** 
https://www.linkedin.com/posts/samruddhi1_banking-analytics-mdd-excel-python-activity-7501636987955720193-L4QD?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEUztP0BlILrmBYgvnMo_Qr5hfnQDHziN8k
