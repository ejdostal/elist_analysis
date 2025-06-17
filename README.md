 # Elist Post-Pandemic Analysis

<!-- The real value of portfolio projects lies in your ability to explain them, learn the on-the-job frameworks, and supplement your interviews with proof of the quality of your work - not in simply doing them. 

[] Overview of company history, business model, and goals
[] Explain the “so what” of the project
[] [Define important terminology, metrics, and dimensions 
-->

Established in 2018, Elist Electronics is an e-commerce company that sells popular electronic products and accessories through its website and mobile app. Elist reaches customers through email campaigns, social media, and affiliate links. Recently, Elist expanded globally and launched a loyalty program. The company is now analyzing its data to identify sales trends, guide operations, evaluate loyalty program performance, and investigate its refund rate to improve customer satisfaction. This analysis aims to help Elist make data-informed decisions to drive sales, loyalty, and operational efficiency, strengthening its competitiveness in a growing market.

The Excel workbook used to clean and investigate trends in the data can be found here.

The SQL queries used to answer various business questions can be found here.

An ERD representing the main database structure and relationships between analyzed tables can be found here.

## Executive Summary
<!--  
[] ERD of Dataset
[] High-level overview of findings, explained to non-technical audience 
-->

Overview of findings in 2-3 sentences




The period from 2019 to 2022 was an eventful one for Elist. In 2019, total annual sales topped out at $3.86 M, but with the onset of the pandemic annual sales for 2020 jumped up an astronomical 163% to $10.15M, reaching all time highs. 96% of this revenue was found to be attributed to 4 products: .... 

### ERD

![ERD - Elist Data](Images/ERD%20-%20Elist%20Data.png)  

## Deep Dive Insights
<!--
(bulleted list, split into sections)
- [ ]  Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ]  Include clean visuals (pivot tables, dashboards, graphs) 
-->

### Sales Trends
Elist’s sales trajectory from 2019–2022 reflects both the dramatic effects of the pandemic and a potential shift in customer purchasing behavior.

In 2019, annual sales totaled $3.87M with approximately 16.8K orders at an average order value (AOV) of $230. In 2020, sales surged 163% to $10M — driven by COVID-related panic buying — as order volume more than doubled and AOV jumped 31%. This strong momentum continued into 2021, with sales at $9M alongside a 6% increase in total orders, although AOV fell by 15%.

By 2022, a return to normalcy saw AOV revert toward its 2019 level and total order volume drop by 40%. Nevertheless, annual sales remained 28% higher than in 2019, reflecting sustained growth in customer activity — with total orders (21.5K) 28% above their 2019 level.

<!-- <p align="center">
<img src="Images/AOV vs Order Count.png" width="400" style="display: inline; margin-right: 10px;" >
<img src="Images/Total Sales.png" width="400" style="display: inline;" />
</p>
-->


![Total Sales](Images/Total%20sales%20-%2028per%20increase.png)


Interestingly, there was also a clear inverse relationship between AOV and order volume: as AOV fell, order volume grew, and when AOV rose, order volume declined. This pattern may reflect pricing sensitivities or spending thresholds among our customer base; however, it’s unclear whether this is a permanent trend in customer behavior or a reflection of unusual market conditions during the pandemic. Further analysis may be needed to determine whether these patterns will continue in future periods.

![AOV vs Order Count](Images/AOV%20vs%20Order%20Count.png) 



### Seasonality
Despite massive fluctuations in sales across this time period, some consistent patterns in seasonality could still be observed. Sales consistently reached higher levels in December and lowered significatntly in February, closely mirroring holiday-driven demand cycles. Each year, momentum built steadily from June through the end of the year, with a typical drop in sales in October, as buyers delayed spending until the holidays. 

A few clear outliers included March 2020, when sales hit an all-time high — likely reflecting the initial shock and surge in consumer activity at the onset of the pandemic. 

AOV also tended to experience its highest growth in August (4%), steadily increasing until AOV reached maxs in Oct ($272). It's possible this reflects increases in spending on edtech such as as back to school laptops. 


### Product Trends
Top performing products included the 27in 4K Gaming Monitor, Apple AirPods Headphones, and the MacBook Air Laptop - which together accounted 85% of all revenue generated between 2019-2022. 

Apple AirPods Headphones were Elist's most popular product, accounting for 45% of total order count and $7.7M in total sales. This was only second in total revenue to the 27in 4K Gaming Monitor, which brought in $9.85M - the highest share of any product sold. 

In addition to having a driven by to a 38% higher AOV than Apple Airpods and a sizeable order count of its own (22%). MacBook Airs ranked third in revenue at $6.2M, despite representing only 4% of orders — the result of having the highest AOV of any product. 


Similarly, ThinkPad Laptops, second in AOV, earned 11% of total sales despite having a none too disimilar total order count of 3%. This demonstrates how even even modest volume gains in high-AOV categories, especially laptops could drive significant revenue growth, making them strong candidates for targeted promotion.

In contrast to Bose Soundsport Headphones,

### Loyalty Program


### Refund rates


## Recommendations 
<!--
(bulleted list, split into sections)
[] Give guidance on areas to further investigate and changes to make based on your findings
[] Bring in company context by mentioning which teams these recommendations apply to
-->

## Assumptions and Caveats
<!--
(bullets)
[] List any assumptions you made throughout the project or caveats about data issues
>




