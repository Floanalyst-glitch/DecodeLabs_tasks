📊 E-Commerce Order Dataset — Exploratory Data Analysis
DecodeLabs Data Analytics Internship — Project 2
Exploratory Data Analysis (EDA) on a 1,200-order e-commerce dataset, covering pricing patterns, order trends, coupon impact, delivery performance, and revenue realization — turned into actionable business recommendations.

🎯 Objective
Understand pricing and order-size patterns
Analyze order trends over time (2023–2025)
Determine whether coupon codes affect customer spending
Examine how order outcomes and payment methods are distributed
Identify whether outliers are data errors or genuine customer behavior
Translate findings into business-ready KPIs and recommendations
🗂️ Dataset Overview
1,200 order records × 14 columns
Type
Columns
Numeric
Quantity, UnitPrice, ItemsInCart, TotalPrice
Categorical
Product, PaymentMethod, OrderStatus, ReferralSource, CouponCode
Time / Trend
Date
Identifier (excluded from stats)
OrderID, CustomerID, TrackingNumber, ShippingAddress
🛠️ Methodology
Columns sorted and typed (numeric / categorical / time / identifier)
Descriptive statistics computed in Excel: mean, median, mode, standard deviation, variance, skewness, kurtosis, range, min/max
Outlier detection via the IQR method (1.5×IQR rule) and boxplots
Pivot tables built to analyze monthly/yearly order trends, and to cross-compare OrderStatus, PaymentMethod, and CouponCode against order volume and average order value
Deep dives on specific months (e.g. June 2024) by product, coupon usage, and referral source
📈 Key Statistical Findings
Quantity, UnitPrice, and ItemsInCart are close to symmetric (skewness ≈ 0) — no outliers detected
TotalPrice is right-skewed (skewness = 0.89); 8 orders exceed the IQR upper bound — all genuine bulk orders (Quantity = 5, high-cost products), not data errors
Quantity and UnitPrice are positively correlated (r = 0.79) — higher prices don't discourage bulk buying
Revenue dropped 2023→2024 due to fewer orders, not smaller ones (avg order value stayed ~flat: $1,084 → $1,046)
Recurring mid-year sales peak, shifting slightly each year (May 2023 → June 2024 → trending similarly in 2025)
💡 Business Impact
Metric
Value
Total Expected Revenue
$1,264,761.96
Actual Revenue (delivered orders)
$242,600.32
Revenue Realization Rate
19.18%
Delivery Success Rate
19.25% (231 / 1,200 orders)
Cart Conversion Rate
53.71%
Cancelled / Returned / Pending Orders
250 / 247 / 237
Top referral source (traffic)
Instagram
Top revenue-driving channel
Email
Most-used coupon
FREESHIP
Best-performing product (delivered)
Laptop
Headline insight: the business isn't short on demand — cart activity and traffic are strong — the bottleneck is fulfillment. Only ~1 in 5 orders is actually delivered, and closing that gap is worth far more than driving more traffic.
✅ Recommendations
Improve order fulfillment and logistics to cut cancelled/returned/pending orders
Investigate root causes of failed deliveries and returns
Strengthen inventory management and order tracking
Increase investment in Email Marketing (highest actual revenue driver)
Optimize Instagram traffic → conversion (currently the top acquisition channel)
Introduce cart-abandonment strategies (reminders, targeted discounts)
Expand promotion of high-performing products (e.g. Laptop)
Keep shipping-incentive coupons like FREESHIP
Track Delivery Success / Revenue Realization / Cart Conversion rates as ongoing KPIs
Collect customer feedback on returns and cancellations
🧰 Tools Used
Excel — descriptive statistics, PivotTables, IQR outlier detection, boxplots
📁 Repository Contents
├── EDA_Report_FloratinDOGBO.pdf     # Full detailed report (PDF)
├── 
└── README.md
👤 Author
Floratin DOGBO Transitioning into Data / Supply Chain Analytics — Lomé, Togo Background in Transport & Logistics (EPL) 
