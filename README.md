 # Post-Pandemic Analysis | Plugden
<p align="center">
  <img src="Images/Untitled design.png" 
       style="max-width: 49%; height: auto; display: inline-block; margin-right: 2%;" />
</p>

<!-- The real value of portfolio projects lies in your ability to explain them, learn the on-the-job frameworks, and supplement your interviews with proof of the quality of your work - not in simply doing them. 

[] Overview of company history, business model, and goals
[] Explain the “so what” of the project
[] Define important terminology, metrics, and dimensions 
-->

Established in 2018, Plugden is an e-commerce company that sells popular electronic products and accessories through its website and mobile app. Plugden attracts customers through email campaigns, social media, and affiliate links. Recently, Plugden expanded globally and launched a loyalty program. The company is now analyzing its data to identify sales trends, guide operations, evaluate loyalty program performance, and investigate its refund rate to improve customer satisfaction. This exploratory data analysis aims to help Plugden make data-informed decisions to drive sales, loyalty, and operational efficiency, strengthening its competitiveness in a growing market.

The Excel workbook used to clean and investigate trends in the data can be found here.

The SQL queries used to answer various business questions can be found here.

An ERD representing the main database structure and relationships between analyzed tables can be found here.


## Overview
<!--  
[] ERD of Dataset
[] High-level overview of findings, explained to non-technical audience 

Overview of findings in 2-3 sentences

The period from 2019 to 2022 was an eventful one for Elist. In 2019, total annual sales topped out at $3.86 M, but with the onset of the pandemic annual sales for 2020 jumped up an astronomical 163% to $10.15M, reaching all time highs. 96% of this revenue was found to be attributed to 4 products: .... 
-->

### ERD
![ERD - Elist Data](Images/ERD%20-%20Elist%20Data.png)  


## Deep Dive Insights
<!--
(bulleted list, split into sections)
- [ ]  Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ]  Include clean visuals (pivot tables, dashboards, graphs) 
-->

Body text 

### Sales Trends

![Overall Sales Trends](Images/Overall%20Sales%20Trends%202.png)  

<!-- Summary paragraph - if you could explain your findings in a quick 20 second overview

Go one level deeper on specifics in bullets here - call out specific important details, numbers here

- try showing visual first
- paragraph below squeezes out the most from the visual that you can tell them from it
- what's the least amount you can have to get the point across?

- main metrics
- then secondary insights (not as important - or "by the ways") - ex. % of total sales is ..
- stacked bar charts for products by loyalty program
-->

Elist’s sales trajectory from 2019–2022 reflects both the dramatic effects of the pandemic and a potential shift in customer purchasing behavior.

Annual sales in 2019 totaled $3.87M with approximately 16.8K orders at an average order value (AOV) of $230. Total sales skyrocketed in 2020 - likely driven by COVID-related panic buying - leading massive increases in both order count and aov with order with total revenue more than tripling. Total sales also remained very high in 2021 also but less than 2021, due to a decrease in aov, although order count continued to steadily climb another 6%. By the end of 2022, aov when down to pre-pandemic levels, but we retained a 28% growth in total sales as order count remained higher.

- In 2019, annual sales 
- In 2020, sales surged 163% to $10M — driven by COVID-related panic buying — as order volume more than doubled and AOV jumped 31%. 
- This strong momentum continued into 2021, with sales at $9M alongside a 6% increase in total orders, although AOV fell by 15%.
- By 2022, a return to normalcy saw AOV revert toward its 2019 level and total order volume drop by 40%. 

Nevertheless, annual sales remained 28% higher than in 2019, reflecting sustained growth in customer activity — with total orders (21.5K) 28% above their 2019 level.

Interestingly, there was also a clear inverse relationship between AOV and order volume: as AOV fell, order volume grew, and when AOV rose, order volume declined. This pattern may reflect pricing sensitivities or spending thresholds among our customer base; however, it’s unclear whether this is a permanent trend in customer behavior or a reflection of unusual market conditions during the pandemic. Further analysis may be needed to determine whether these patterns will continue in future periods.

Despite massive fluctuations in sales across this time period, some consistent patterns in seasonality could still be observed. Sales consistently reached higher levels in December and lower levels in February, closely mirroring holiday-driven demand cycles. Each year, momentum built steadily from June through the end of the year, with a typical drop in sales in October, as buyers delayed spending until the holidays. This same pattern could be observed even as sales trended downward in 2021 and 2022.

A few clear outliers included March 2020, when sales hit an all-time high — likely reflecting the initial shock and surge in consumer activity at the onset of the pandemic. 

AOV also tended to experience its highest growth in August (4%), steadily increasing until AOV reached maxs in Oct ($272). It's possible this reflects increases in spending on edtech such as as back to school laptops. 


### Product Trends
![Product Trends](Images/Sales%20x%20Product.png)

Top performing products included the 27in 4K Gaming Monitor at $9.85M in total sales, Apple AirPods Headphones at $7.73M, the MacBook Air Laptop at $6.29M, and the Thinkpad Laptop at $3.2M. Together, these 4 products accounted for 96% of total revenue generated between 2019-2022. 

In contrast, Samsung Charging Cable Pack, Samsung Webcam, Apple iPhone, and and Bose soundsport headphones collectively made up less 4% of total revenue at $442K, 361K, $213K, $3.3K in total sales, respectively. 

Laptop products demonstrate strong potential for future revenue growth. Despite representing only 4% and 3% of total orders respectively, the MacBook Air and ThinkPad Laptops contributed 22% and 11% of total revenue from 2019 - 2022. This disproportionate impact is driven by their high average order values (AOVs) of $1.5K and $1.1K — the highest across all products — indicating that even modest increases in order volume could significantly boost overall revenue. Additionally, both products experienced notable post-pandemic growth in order count: 55% for the MacBook Air and 31% for the ThinkPad from 2019 to 2022. These trends suggest that targeted efforts to sustain or increase demand for high-AOV laptops could yield substantial financial returns.

- 27k 4k gaming monitors earned the most revenue at $9.95M, or 35% of total sales. 
- MacBook Air Laptops sustained the highest post-pandemic sales growth, maintaining a 40% increase in total sales from 2019 in 2022. This was largely catelysted by an astronomical boom in 
This product also had the highest average order value (aov) of any product sold at $1.5K and 30% more orders were 

- With an average order value (AOV) of $421 and a total of 23.4K orders, (30% of total order count), 27k 4k gaming monitors also sustained 30% of it's order growth post-pandemic with 3.5K annual orders in pre-pandemic in 2019, ending as 4.6K total orders post-pandemic in 2022 - the second highest order count growth of any product.

- Apple Airpods Headphones generated the second most revenue at $7.7M, or 28% of total sales. Despite it's lower 

![85% of Sales](Images/3%20Products.png) 

Apple AirPods Headphones were Elist's most popular product, accounting for 45% of total order count and $7.7M in total sales. This was only second in total revenue to the 27in 4K Gaming Monitor, which brought in $9.85M - the highest share of any product sold. 

In addition to having a driven by to a 38% higher AOV than Apple Airpods and a sizeable order count of its own (22%). MacBook Airs ranked third in revenue at $6.2M, despite representing only 4% of orders — the result of having the highest AOV of any product. 

Similarly, ThinkPad Laptops, second in AOV, earned 11% of total sales despite having a none too disimilar total order count of 3%. This demonstrates how even even modest volume gains in high-AOV categories, especially laptops could drive significant revenue growth, making them strong candidates for targeted promotion.

In contrast to Bose Soundsport Headphones,

### Loyalty Program
Body text



### Refund rates
Body text

## Recommendations 
<!--
(bulleted list, split into sections)
[] Give guidance on areas to further investigate and changes to make based on your findings
[] Bring in company context by mentioning which teams these recommendations apply to
-->
Body text

## Assumptions and Caveats
<!--
(bullets)
[] List any assumptions you made throughout the project or caveats about data issues
-->
Body text





<!--
<p align="center">
  <img src="Images/Order Count is what&apos;s sustaining sales growth post-pandemic.png" 
       style="max-width: 49%; height: auto; display: inline-block; margin-right: 2%;" />
  <img src="Images/AOV vs Order Count.png" 
       style="max-width: 49%; height: auto; display: inline-block;" />
</p>

<p align="center">
  <img src="Images/Order Count is what&apos;s sustaining sales growth post-pandemic.png" 
       style="max-width: 49%; height: auto; display: inline-block; margin-right: 2%;" />
  <img src="Images/AOV vs Order Count.png" 
       style="max-width: 49%; height: auto; display: inline-block;" />

<p align="center">
  <img src="Images/Monthly Trends by Year - Table.png" 
       style="max-width: 49%; height: auto; display: inline-block; margin-right: 2%;" />
  <img src="Images/Monthly Trends by Year - Chart.png" 
       style="max-width: 49%; height: auto; display: inline-block;" />
</p>

</p>
-->

