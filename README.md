# 📊 E-Commerce Orders — Exploratory Data Analysis

**DecodeLabs Data Analytics Internship — Project 2**

Exploratory Data Analysis (EDA) of a **1,200-order e-commerce dataset** to uncover pricing patterns, sales trends, coupon impact, order outcomes, delivery performance, and revenue realization.

The analysis focuses not only on describing the data, but also on translating statistical findings into **business insights and actionable recommendations**.

---

##  Business Objective

The objective of this project was to answer key business questions:

* How are prices, quantities, and order sizes distributed?
* How have order volumes evolved between 2023 and 2025?
* Do coupon codes influence customer spending?
* Which payment methods and referral sources perform best?
* What is driving the gap between expected and actual revenue?
* Are identified outliers errors or genuine customer behavior?
* What actions could improve revenue realization and delivery performance?

---

## Dataset Overview

The dataset contains **1,200 orders and 14 columns**.

| Category        | Columns                                                                   |
| --------------- | ------------------------------------------------------------------------- |
| **Numeric**     | `Quantity`, `UnitPrice`, `ItemsInCart`, `TotalPrice`                      |
| **Categorical** | `Product`, `PaymentMethod`, `OrderStatus`, `ReferralSource`, `CouponCode` |
| **Time**        | `Date`                                                                    |
| **Identifiers** | `OrderID`, `CustomerID`, `TrackingNumber`, `ShippingAddress`              |

Identifiers were excluded from statistical analysis where appropriate.

---

##  Methodology

The analysis followed these main steps:

### 1. Data Understanding

* Reviewed the dataset structure and variables
* Classified columns by data type
* Checked the consistency of numerical, categorical, and date fields

### 2. Descriptive Statistics

Calculated:

* Mean
* Median
* Mode
* Standard deviation
* Variance
* Range
* Minimum / Maximum
* Skewness
* Kurtosis

### 3. Outlier Analysis

Used the **Interquartile Range (IQR) method** with the 1.5 × IQR rule, supported by boxplots.

### 4. Trend & Business Analysis

Created PivotTables to analyze:

* Monthly and yearly order trends
* Order status distribution
* Payment methods
* Coupon usage
* Average Order Value (AOV)
* Product performance
* Referral sources
* Revenue performance

### 5. Deep-Dive Analysis

Specific periods, such as **June 2024**, were analyzed further by product, coupon usage, and referral source to understand changes in customer behavior.

---

##  Key Findings

### Statistical Insights

* `Quantity`, `UnitPrice`, and `ItemsInCart` show relatively balanced distributions, with skewness close to 0.
* `TotalPrice` is moderately right-skewed (**skewness = 0.89**).
* **8 orders** exceed the IQR upper bound.
* These outliers were investigated and identified as **genuine bulk orders**, rather than data-entry errors.
* `Quantity` and `UnitPrice` show a strong positive correlation (**r = 0.79**).

### Sales Trends

Revenue decreased from 2023 to 2024 primarily because of a **decline in order volume**, rather than a significant decrease in average order value.

Average Order Value remained relatively stable:

**$1,084 → $1,046**

The data also shows recurring **mid-year sales peaks**, with the strongest period shifting slightly across years.

---

#  Business Impact

| KPI                                   |             Value |
| ------------------------------------- | ----------------: |
| **Total Expected Revenue**            | **$1,264,761.96** |
| **Actual Revenue — Delivered Orders** |   **$242,600.32** |
| **Revenue Realization Rate**          |        **19.18%** |
| **Delivery Success Rate**             |        **19.25%** |
| **Delivered Orders**                  |   **231 / 1,200** |
| **Cart Conversion Rate**              |        **53.71%** |
| Cancelled Orders                      |               250 |
| Returned Orders                       |               247 |
| Pending Orders                        |               237 |

###  Channel & Product Insights

* **Top traffic source:** Instagram
* **Top actual revenue-driving channel:** Email
* **Most-used coupon:** `FREESHIP`
* **Best-performing delivered product:** Laptop

---

##  Main Business Insight

> **The main challenge is not demand — it is fulfillment.**

The business generates significant expected revenue and shows strong customer activity, but only around **1 in 5 orders is successfully delivered**.

This creates a major gap between **potential revenue and realized revenue**.

Improving fulfillment, reducing cancellations and returns, and resolving pending orders could therefore have a greater financial impact than simply generating additional traffic.

---

##  Recommendations

Based on the analysis, I recommend:

1. **Improve order fulfillment and logistics** to reduce failed deliveries.
2. Investigate the root causes of **cancellations, returns, and pending orders**.
3. Strengthen **inventory management and order tracking**.
4. Increase investment in **Email Marketing**, the strongest actual revenue-driving channel.
5. Optimize **Instagram traffic** and improve its conversion into successful orders.
6. Introduce **cart-abandonment strategies**, including reminders and targeted offers.
7. Increase promotion of high-performing products such as **Laptop**.
8. Continue testing shipping-incentive promotions such as `FREESHIP`.
9. Monitor **Delivery Success Rate, Revenue Realization Rate, and Cart Conversion Rate** as ongoing KPIs.
10. Collect customer feedback to understand the main causes of **returns and cancellations**.

---

##  Tools & Skills

**Tools**

* Microsoft Excel
* PivotTables
* PivotCharts
* Boxplots

**Analytical Techniques**

* Exploratory Data Analysis
* Descriptive Statistics
* Correlation Analysis
* Outlier Detection
* IQR Method
* Trend Analysis
* Business KPI Analysis
* Data Storytelling

---

##  Repository Contents
```text
DecodeLabs-Internship/
│
├── DecodeLabs_Project_2.xlsx
├── Decolabs_EDA_Report.pdf
├── Rapport_EDA__FR.pdf
├── README.md

```

### 📄 Project Files

* **`DecodeLabs_Project_2.xlsx`** — Excel workbook containing the analysis, PivotTables, statistics, and visualizations.
* **`Decolabs_EDA_Report.pdf`** — English EDA report presenting the methodology, findings, and recommendations.
* **`Rapport_EDA__FR.pdf`** — French version of the EDA report.

---

## 👤 About Me

**Floratin DOGBO**

Transport & Logistics graduate transitioning into **Data Analytics and Supply Chain Analytics**.

My goal is to combine my background in **Transport & Logistics** with data analysis to help businesses make better operational and strategic decisions.

📍 Lomé, Togo
🎓 Transport & Logistics — École Polytechnique de Lomé (EPL)

---

## 🚀 Project Context

This project was completed as part of my **DecodeLabs Data Analytics Internship**.

It represents my approach to turning raw business data into:

**Data → Analysis → Insights → Business Decisions**

