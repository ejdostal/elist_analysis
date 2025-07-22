<!-- The real value of portfolio projects lies in your ability to explain them, learn the on-the-job frameworks, and supplement your interviews with proof of the quality of your work - not in simply doing them. 
<p align="center">
  <img src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/tech hub + subtitle+variation.png' alt="TechHub Banner" height="300">
</p>-->
<p align="center">
  <img src="Images/tech hut-2.png" alt="Tech Hub image" width = "300" >
</p> 

# e-Commerce Post-Pandemic Analysis
 <!--
Sales analysis for an e-commerce company.

As a data analyst, your goal is to help the team (both technical and non-technical people) understand what you found, how you found it, and what they can do with these findings. 
-->
<!-- 
- [x] Overview of company history, business model, and goals   
- [x] Explain the “so what” of the project 
- [x] Define important terminology, metrics, and dimensions  -->
## Project Background
TechHub is a global e-commerce company founded in 2018 that specializes in selling popular electronics through its website and mobile app. It carries in-demand products from brands like Apple, Samsung, and ThinkPad and uses a mix of digital marketing channels—including email campaigns, SEO, and affiliate links—to reach a broad international customer base. As TechHub’s customer base and product offerings have expanded, so has its internal data—spanning orders, customers, product details, order refunds, and geographic regions. This project synthesizes and analyzes that data to uncover actionable insights that can support company leadership and guide strategic decisions across sales, product, marketing, and finance.

Insights and recommendations are provided in the following key areas to identify performance trends, operational opportunities, and extract data-driven answers to strategic questions from  leadership:

- **Overall Sales Trends & Seasonality:** An evaluation of historical sales trends across time - focusing on revenue, AOV (average order value), order volume, and growth rate.

- **Product Performance:** An analysis of products and their impact on total revenue.

- **Geographic Distribution:** An assessment of regions by performance, highlighting regional trends and countries of particular interest.

- **Trends in Loyalty Program:** Assessing recent trends in loyalty vs. non-loyalty performance.

<!--
- **Refunds by Apple Product:** Comparing and analyzing returns by Apple product, focusing on Refund rate, Number of refunds, and AOV.
-->

The Excel workbook used to clean and investigate trends in the data can be found [here].

The SQL queries used to answer various business questions can be found [here](Files/SQL-Queries.sql).

An ERD representing the main database structure and relationships between analyzed tables can be found [here](Images/ERD%20-%20Elist%20Data.png)


## Database Structure & Cleaning 
<!-- - [x]  ERD of Dataset -->

The data analyzed spanned a total of 108K+ records across four tables: `orders`, `customers`, `geo_lookup`, and `order_status`.
![](Images/ERD%20-%20Elist%20Data.png)
<!-- <img width="600" src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/ERD - Elist Data.png'> -->

Before analysis, the dataset was cleaned in Excel to address column inconsistencies, manage missing or inaccurate records, and assess their impact on results. Helper columns added to augment the data and enable trend analysis across multiple time grains. An issues log documenting data quality issues, their severity, and resolution status is available [here].

## Executive Summary
From 2019 to 2022, TechHub experienced strong pandemic-driven growth, with sales peaking in 2020 and stabilizing above pre-pandemic levels by 2022. Revenue growth retained post-pandemic was driven largely by a sustained 28% increase in order volume since 2019, suggesting a potential long-term shift in online tech purchasing behavior going forward. It was discovered that just four products accounted for 96% of total revenue and that NA and EMEA regions led in overall revenue and order volume. 

<!-- Loyalty members became TechHub’s most consistent revenue stream by 2022, surpassing non-loyalty customers in both the annual AOV and annual revenue. MacBook Air Laptops had the highest refund rates among Apple products, warranting further review given their premium price point and sizable contribution to total revenue.-> 
-->
A deep dive into trends and insights, including a breakdown of sales trends by year, seasonality, product, region, and loyalty member status can be found below.

<!--
- [x] bulleted list, split into sections 
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
  [x] Include clean visuals (pivot tables, dashboards, graphs)
  -->

## Deep Dive Insights

### Overall Sales Trends 

Between 2019 and 2022, TechHub’s sales performance reflected the volatility of a rapidly shifting market. Over four years, the company brought in $28.1M in revenue from 108K total orders, averaging about $7M and 27K orders per year. However, this average masks an important trend: nearly 70% of total revenue was concentrated in 2020 and 2021, when both order volume and average order value (AOV) surged during the pandemic.

- **2019: Pre-Pandemic Baseline** - TechHub recorded its lowest revenue and order volume across the time period in 2019, generating $3.8M in total sales from 16.8K orders. The average order value (AOV) was $230, a figure later matched in 2022 during the post-pandemic market correction.

- **2020: Pandemic Surge Begins** - Revenue and AOV peaked at $10.1M and $300, respectively — the highest levels in the 4-year period. This surge also reflected TechHub’s strongest annual growth across all metrics, with +163% growth in total revenue, +101% growth in orders, and +31% growth in AOV.

- **2021: Customer Adjustment** - In 2021, AOV fell -15% to $255, as consumers became more budget-conscious. Despite this, total sales still remained strong at $9.1M. This was driven by record-high order volume, which climbed another 6% in YoY growth to an all time high of 35.8K orders, highlighting sustained demand for online tech products during the pandemic despite decreases in AOV.

- **2022: Market Normalization** - Revenue dropped significantly in 2022 as the market began normalizing upon the return of in-store spending options. AOV continued to drop, returning back to it's pre-pandemic level of $230. Order volume also declined significantly by -40%. However, order count remained 28% above pre-pandemic levels, contributing directly to post-pandemic revenue retention and signaling a potentially lasting shift in consumer behavior moving forward. 

![](Images/overall%20sales.png)

**Order volume was the clearest driver of growth.** It more than doubled at the height of the pandemic, reaching an all-time high in 2021. Even after a steep decline in 2022 as the market began to normalize, order volume remained 28% higher than pre-pandemic levels. This sustained lift in customer activity played a critical role in maintaining revenue post-pandemic and may signal a lasting shift in consumer behavior around online tech purchases. While AOV initially spiked in 2020, it steadily declined over the next two years and returned to 2019 levels by 2022. Still, the elevated order volume—despite the drop in AOV—suggests that TechHub may have an opportunity to build on a larger, more engaged customer base in the years ahead.

### Seasonality
<!--
<div align="center">
  <img src="Images/Seasonality - across all 4 years.png" width="45%"
  style="margin-right:2%">
  <img src="Images/seasonality of average year.png" width="45%" >
</div> -->


TechHub’s sales performance from October through March followed a consistent annual cycle marked by a pre-holiday pullback, peak-season surge, and post-holiday slowdown, with March often signaling the start of recovery. This 6-month arc repeated across 2019–2022, with a few notable exceptions that reflect broader market disruptions.

![ ](Images/Seasonality%20-%20across%20all%204%20years.png)

- **Pre-Holiday Pullback** - The cycle typically began with a sharp decline in October— averaging a -28% decrease in sales growth and -29% decrease in order growth, the lowest average sales of any month — suggesting that consumers tend to deliberately hold back spending ahead the holiday season.

- **Holiday Growth** - The October dip was consistently followed by a two-month surge in November and December, with November showing highest average order growth (+24%) and December delivering highest average sales growth (+23%), typically supported by modest average AOV gains (+2%).* These patterns point to a shift from high-volume purchases in November to higher total spend in December, likely driven by last-minute, higher-value gifts.

- **Post-Holiday Slowdown** - January and February typically saw a post-holiday downturn in both sales and order growth, consistent with seasonal fatigue and reduced demand. 

- **Gradual Sales Recovery** - March generally marked the beginning of recovery, with sales trends gradually rebounding. However, 2020 disrupted this pattern entirely:
  - January 2020 saw flat sales growth (0%), 
  - February 2020 posted a 4% increase, and 
  - March 2020 experienced a 50% surge, the highest monthly sales growth across all four years, driven by the initial pandemic wave and a rapid pivot to online purchasing.


### Product Performance
<!--
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [x] Include clean visuals (pivot tables, dashboards, graphs)
-->

Between 2019 and 2022, just 4 products generated the vast majority — 96% — of total revenue, highlighting a highly concentrated revenue stream. In contrast, the remaining four products combined contributed just 4% of revenue, though they revealed interesting dynamics worth further consideration.

![](Images/product%20distribution.png)

#### Top Products 

1. **27in 4K Gaming Monitor | Bestseller + High AOV Combo**  
Leading the pack was the 27” 4K Gaming Monitor, which stood out as both a bestseller and a high-value item. With an average order value (AOV) of $421 and 23K units sold, it brought in roughly $9.85M, accounting for 35% of total revenue. This product’s balance of volume and price made it the company’s most valuable contributor over the four-year period.

1. **Apple AirPods Headphones | Most Popular Product**  
Closely behind, the Apple AirPods Headphones emerged as the most popular product by volume. With nearly 48K units sold — almost half of all orders — it earned $7.73M or 28% of revenue. Despite its lower price point compared to laptops, its widespread popularity positioned it as a reliable driver of sales.

1. **MacBook Air Laptop | Highest AOV**  
Though the MacBook Air Laptop represented only 4% of total orders, its premium price tag ($1,588 AOV) made it significant in terms of revenue, generating $6.29M, or 22% of total revenue. Its performance peaked in 2020, with a staggering 384% increase in annual sales, possibly fueled by the sudden shift to remote work and learning. March 2020 saw highest monthly growth for Macbook Airs at 66%, aligning with when many schools closed and shifted to remote learning as well as many in-store tech purchasing options closing.

1. **ThinkPad Laptop | Second Highest AOV + Seasonal Demand**  
Similarly, the ThinkPad Laptop, with an AOV of $1,100, contributed $3.2M (11% of total revenue) from a small base of just under 3K orders. Its sales trajectory also had a sharp spike in 2020, as well as standout 92% growth in December 2020. ThinkPad sales showed a clear pattern of year-end peaks, suggesting strong seasonal appeal — potentially linked to holiday gift-giving or end-of-year corporate purchases. 


#### Less Impactful

5. **Samsung Charging Cable Pack | Low AOV but Popular**  
The Samsung Charging Cable Pack proved surprisingly popular, making up 20% of all orders - although with a low price tag ($20 AOV). While it generated just 2% of total revenue at $442K, its high volume suggests it might have some strategic potential. For example, bundling it with other items could be an effective strategy to increase cart size and elevate overall revenue contribution.

6. **Samsung Webcam | Latecomer with Promise**  
The Samsung Webcam, launched in 2020, gained traction quickly, accounting for 7% of all orders — a strong showing for a latecomer to the product line. Its growth also aligns with the rise of virtual learning and remote work, again highlighting how external events shaped consumer behavior.It contributed a total of $361K in revenue.

7. **Apple iPhone | High AOV and Disappointing Sales**   
Surprisingly, the flagship item Apple iPhone saw weak sales at just $213K in total revenue. With just 288 total units sold across four years and average monthly sales hovering around six units, the iPhone failed to gain traction with the customer base. Given the low demand, it may be worth either surveying customers or reallocating resources toward better-performing premium products.

1. **Bose Soundsport Headphones | Low AOV and Disappointing Sales**  
Lastly, the Bose Soundsport Headphones underperformed significantly, generating just $3.3K in total revenue—a mere 0.01% of the four-year total. Order activity was sporadic and absent in many months, making it difficult to distinguish between genuinely low demand and possible data issues. While further investigation into the data pipeline is warranted, current trends suggest the product failed to resonate with TechHub’s customer base and may no longer justify continued support or inventory space.

### Geographical Distribution
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->
![ ](Images/regional%20distribution.png)
![ ](Images/top%2010%20countries.png)

**From 2019 to 2022, TechHub’s global revenue was highly concentrated in NA and EMEA**, which together drove 81% of total sales ($22.8M) across 87.6K orders, both maintaining AOVs near $260. Meanwhile, APAC showed early promise, outperforming all regions in AOV, while LATAM underperformed due to sustained AOV declines and lower order volume.

**Across all regions, just 10 countries accounted for 78% of global revenue ($21.8M)**, highlighting priority markets for investment. These countries - in addition to a few other noteable countries - were analyzed in more detail below, listed under their corresponding regions.

**North America (NA) | Revenue Concentrated in 2 Countries** - NA was TechHub’s strongest region by far, delivering over half of global revenue and orders at $14.6M and 55.8K orders, respectively. Two countries within the NA region accounted for almost all of its sales:
- **United States** led all countries, generating $13.2M (47% global revenue) from 50.6K orders with an AOV of $262. It made up 91% of North American sales.
- **Canada** contributed $1.1M (4% global revenue), with a slightly lower AOV of $247, but still represented a strong secondary market with 4.8K orders.  
- North America's concentration in two markets with reliable volume and stable AOVs makes it central to future revenue stability.  

**Europe, Middle East, and Africa (EMEA) | Revenue Widely Distributed across 15+ Countries** - EMEA contributed 29% of global revenue at $8.2M, making it the second-highest performing region. It  brought in 31.8K orders at an AOV of $259. Unlike NA, total sales for EMEA was widely distributed across 15+ countries. Leading countries included:  
- **Great Britain** was the regional leader at $2.09M or 25% of EMEA sales. It also ranking 2nd globally by revenue. 
- **Germany** posted a higher AOV at $270, with 3.6K orders generating $994K (4% global revenue).
- **France, Spain, and the Netherlands** each contributed about 2% of global revenue each, Though Spain’s AOV of $223 was notably low, the Netherlands stood out with the highest regional AOV ($289) despite modest volume.
- EMEA offers geographic diversity and consistent performance, with opportunities to optimize AOV in high-volume markets.  

**Asia and Pacific (APAC) | Highest AOV and Greatest Growth** - Collectively, the APAC region contributed 13% of global revenue at $3.6M. Although APAC trailed behind NA and EMEA regions in total order volume (13.1K orders), it led all regions in highest AOV at $279 - 7% above the global average. It also sustained the highest sales growth (32%) and highest aov growth (18%) post-pandemic. Countries of particular interest in APAC include:
- **Japan** generated $1M from just 2.6K orders, with a standout AOV of $393, the highest globally.
- **Australia** came close to matching Japan’s revenue ($975K) via higher volume (4.8K orders) but lower AOV ($204), ranking 6th globally by revenue.  
- **India and Korea** made up about about 9% of regional sales each at $342.1K and $332.1K, respectively - or 1% of global revenue each. Despite their modest order counts of 1.2K and 987 orders, respectively, both stood out for their higher than AOVs ($296 and $336, respectively).
- APAC’s premium AOV and performance in countries like Japan, India and Korea indicate high-margin growth potential, especially if order volume scales.

**Latin America (LATAM) | Lowest AOV and Greatest Declines** - LATAM was the lowest-performing of all regions - contibuting a total of $1.6M (6% of global revenue) and a modest total order volume of 7.3K orders. It averaged lowest overall AOV at $231 (-11% below average) due to a significant downward AOV trend post-2020.
- **Brazil** was the only LATAM country to make the list of top 10 revenue generating countries - ranking #7 at a total revenue $730K (3% of global revenue). It brought in a total of 2.9K orders at a slightly below-average AOV of $251 made up 44% of LATAM's sales.
- Without a clear path to AOV recovery, LATAM poses limited ROI, though Brazil may warrant targeted efforts.

### Loyalty Performance Overview (2019–2022)
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->
![](Images/Loyalty%20program.png)
![](Images/loyalty%20aov.png)

From 2019 to 2022, Non-loyalty customers cumulatively outperformed loyalty members across all key metrics — generating $17.1M in total revenue from 62.4K orders, with an overall AOV of $275. On average, that’s $4.3M in annual sales, 15.6K orders, and an AOV of $263 per year. 

**However, Loyalty customers stood out for their more consistent year-over-year growth and greater spending stability.** By 2021, they overtook non-loyalty customers in annual revenue and order volume, and by 2022, they also surpassed them in AOV. These trends suggest loyalty customers are becoming a high-value and resilient segment, particularly in a post-pandemic market. By the end of 2022, loyalty customers had generated a total of $11M across 45.7K orders, with an overall AOV of $240—averaging $2.7M in sales and 11.4K orders annually at a steady AOV. 

**2019 - Minimal Loyalty Activity**    
- **Loyalty** program activity was minimal, reporting the lowest performance across all metrics: $415.9K in revenue, 2K orders, and an AOV of $207.
- **Non-loyalty** dominated early performance, generating $3.5M from 14.9K orders at an AOV of $233, making it the primary revenue driver in 2019.
- Loyalty’s low baseline likely reflects limited adoption or a new rollout, but it sets the stage for dramatic growth over the following years.

**2020 - Exponential Growth across Loyalty and Non-loyalty**
- **Loyalty** revenue surged 614% to $2.97M, driven by a 550% increase in orders (13K) and a 10% increase in AOV to $228.
- **Non-loyalty** also saw strong growth, reaching its highest performance across all metrics: $7.2M in revenue (+108%), 20.8K orders (+40%), and an AOV of $345 (+48%).
- While Non-loyalty continued to lead in overall value, loyalty’s explosive growth highlighted early traction and increasing customer engagement.

**2021 - Loyalty Builds Momentum, Non-Loyalty Reverses**  
- **Loyalty** revenue increased another 64% to $4.9M, with orders up 50% to 19.6K and AOV rising 9% to $249. This marked the first year that loyalty customers outperformed non-loyalty in both revenue and order volume.
- **Non-loyalty** performance declined significantly: revenue dropped -41% to $4.3M, orders fell -22% to 16.3K, and AOV decreased -24% to $261. Despite this, non-loyalty AOV remained slightly higher than loyalty’s.
- Loyalty accounted for 53% of total revenue and 55% of total orders in 2021, reflecting a dramatic shift in customer behavior over just two years.

**2022 - Both Loyalty and Non-loyalty Decline Amid Post-Pandemic**   
- **Loyalty** revenue fell -44% to $2.7M, with order volume down -43% to 11.1K. AOV held relatively stable, decreasing just 2% to $245—now exceeding that of non-loyalty for the first time.
- **Non-loyalty** revenue declined -47% to $2.2M, orders dropped -36% to 10.4K, and AOV fell more steeply by -18% to $214.
- Both groups experienced sharp declines as the market adjusted post-pandemic - but Loyalty outperformed non-loyalty in every key metric, maintaining its lead through the contraction and showing stronger retention in transaction value.   

Loyalty customers demonstrated rapid early growth followed by more stable, sustained performance — particularly in preserving AOV during periods of market volatility. In contrast, non-loyalty customers were more sensitive to external shifts, showing sharper declines in both transaction value and purchase volume. The Loyalty program appears to have helped buffer overall business performance during the post-pandemic downturn. 

<!--
### Refund Rates - Apple vs Other Brands

Apple products sold similar total amounts to non-Apple products at 43,059 orders and 43,503 orders, respectively. Despite similar total orders, Apple products reported higher return rates than non-Apple brands overall at a 7% return rate (3,111 total returns). Apple products also had a higher overall aov at $277. Non-Apple products had a lower overall average refund rate of 5% or 2,267 returns and lower overall average aov at $258. These seemed to fall within reasonable levels given the average e-commerce return rate for electronics in 8.28%. However, further analysis by product and time, suggests potential points of concern for select Apple products.

 Overall, Apple products had a 2% higher refund rate than non-Apple products at 7% (3,111 refunds) vs. 5% refund rate (2,267 refunds). While both rates fall within the industry benchmark of 8.28% for electronics sold via e-commerce, closer analysis shows some potential causes for concern particular for high AOV products. 
Annual refund rate across all products in 2019 was 6% (545 total refunds). 
Annual refund rate peaked in 2019 at 10% (1,853 refunds), exceeding the industry benchmark of 8.28% for electronics. Rates declined sharply in 2020 to 4% (713 refunds) which at first glance seemed positive. However further in

Refund rates peaked in 2020 at 10%, exceeding the industry benchmark of 8.28% for electronics. Rates declined sharply in 2021 and dropped to 0% in 2022, which may indicate incomplete data and should be validated with the Payments team. The average refund rate for Apple products between 2019 - 2021 was 13%. Among individual Apple products: 

Apple products experienced the highest refund rates among TechHub’s offerings, particularly during the pandemic.

External events (e.g., COVID-19, global chip shortages) heavily influenced consumer behavior during the analysis period, especially in 2020. Trends observed during this time may not persist in future periods.
AOV anomaly in December 2019: A -7% drop in AOV deviates from typical seasonal patterns and may be tied to early consumer uncertainty around the pandemic.

If the data is complete, refund trends could reflect external factors, such as COVID-19 and the global chip shortage, which may have affected product quality and return rates. However, timelines would need to be cross-verified, as the observed refund patterns may not fully align with the typical impact period of the chip shortage.
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)

- MacBook Air Laptops showed the highest refund rate in 2019 at 18% (67 refunds) maintaining a similarly concerning trend in 2020 at a refund rate of 17% (311 returns). In 2021, however, this decreased to more reasonable level of 6% (75 refunds). While earlier trends may reflect pandemic-era supply chain disruptions or quality issues relating the global chip shortage around that time, further validation is needed to ensure data completeness before drawing definitive conclusions. The issue surrounding data integrity is concerning too because the change in trend occurs the right before all refunds data goes missing in 2022. All products experience decreases in their overall refund rates around mid 2021, which could be a result of the global chip shortage resolving itself or it could show a potential progression of losing refunds data over time before it completely disappears in 2022. With the highest aov of any product, it'd worth checking for any product quality issues potentially behind returns and assessing data quality issues. MacBook Air consistently had the highest refund rates among Apple products. Given its high average order value (AOV) and substantial revenue contribution, it’s recommended to confirm that data integrity is intact and to monitor for potential product quality concerns that could impact revenue. 

- Apple iPhones had a return rate of 11% in 2019 (5 out of 45 orders).
Maintained the same trend in 2020 at 11% (13 out of 123 orders). 
Decreased to 5% in 2021 (4 out of 76 orders).
Down to 0% in 2022 (0 out of 43 orders).
Again, higher than average return rates in 2019 and 2020. Chip shortage may explain high return rates in 2020, but not 2019. 
Very few Apple iPhones were purchased in general. Customer feedback and would need to be collected and analyzed to determine if refunds were a quality issue vs. a general issue of product unpopularity.
While refund rates for iPhones were notable, overall sales volume was low, which limits the conclusions we can draw about product quality or customer satisfaction.

- Apple Airpods Headphones had a return rate of 6% in 2019 (473 out of 8,163 orders).
Return rate rose to 10% in 2020 (1,529 out of 15,998 orders).
Decreased to 4% in 2021 (634 out of 15,255 orders)
Down to 0% in 2022 (0 out of 8,986 orders).
Good refund rates in 2019, but higher than average rates in 2021. 2021 returns surge may have been partly be due to global chip shortage.
Airpods had a higher than average return rate in 2020 (10%). Potentially due to global chip shortage at the time, when refund requests surged for tech products in general. 

2020 - Apple products experienced the highest refund rates in 2020, peaking at 10%, with no recorded refunds in 2022. The sharp decline in 2021 and the complete disappearance of refunds in 2022 potential issues with data integrity and should be validated with the Payments team. 

Decreased to 6% in 2021 (75 out of 1,185 orders)
Down to 0% in 2022 (0 out of 568 orders)
Higher than average return rates in 2019 and 2020. Chip shortage may explain high return rates in 2020, but not 2019. 

From 2020 - 2023, Apple refunds 

Including 2022 (and its lack of refunds) Apple refund rates averaged 10% - which is still above the typical e-commerce return rate for electronics. Limiting the scope to just 2020 - 2023, shows an even higher average return rate at 13%.
AirPods refunds peaked in 2020, following a similar decline as other Apple products in 2021 and disappearing in 2022.

-the MacBook Air had the highest average refund rate at 11%, with particularly high rates in 2019 and 2020 (18% and 17%, respectively), suggesting a need to monitor product quality given its high AOV. 
- iPhones followed with an 8% average refund rate, though their low sales volume limits insight. 
- - AirPods, the most frequently purchased product, had a 5% average refund rate—peaking at 10% in 2020 before trending downward. 

- **MacBook Air Laptops | 11% Average refund rate**  
2019: 18% (67/366 orders)
2020: 17% (311/1845 orders)
2021: 4% (75/1185 orders)
2022: 0% (Potential data issue)

**Apple iPhones | 8% Average refund rate**  
2019: 11% (5/46 orders)
2020: 11% (13/213 orders)
2021: 5% (4/76 orders)
2022: 0% (Potential data issue)

**Apple AirPods Headphones | 5% Average Refund Rate**  
2019: 6% (545/8575 orders)
2020: 10% (1529/15998 orders)
2021: 4% (634/15255 orders)
2022: 0% (Potential data issue)

The [average e-commerce return rate for electronics](https://www.richpanel.com/blog/ecommerce-return-rates) is 8.28%. A

-- Apple Airpods Headphones are the most popular product by order count across all regions
-- North America had the highest number of Airpod purchases (18.5K)
⚠️ Caveats
This analysis assumes that order and refund data is complete and accurate. For products like the Bose headphones, inconsistent data makes it difficult to tell whether performance issues are real or due to tracking errors. Likewise, the relatively small number of returns tracked for the Apple iPhone limits our ability to confidently assess product quality or customer sentiment. 

Additionally, external events like COVID-19 and the global chip shortage played a major role in shaping purchasing behavior—especially in 2020—so not all trends are likely to continue post-pandemic.

-->

## Recommendations
To support long-term growth and build on post-pandemic order patterns, the following actions are recommended to the following company teams:

#### Finance Team
- **Evaluate the loyalty program’s cost-efficiency.** 
  While Loyalty customers demonstrated higher resilience during the post-pandemic downturn, the program's net impact remains unclear without visibility into associated costs. Evaluate the loyalty program’s costs relative to its returns — particularly in the post-pandemic period to understand its true impact.
<!-- 
- **Audit and recover missing refund data to support product-level decision-making.**   
The absence of 2022 refund records limits visibility into return behavior, particularly for high-AOV items like MacBook Airs. Partnership with the payments and/or data engineering teams to investigate data gaps and uncover root causes will support more accurate product performance analysis.
-->

#### Sales Team
- **Prioritize high-performing regions to sustain growth.**  
NA and EMEA contributed 81% of total revenue, driven by consistently high order volume. Prioritization of these regions in future growth plans - with special focus on top-performing countries like the United States and Great Britian - is recommended to sustain the 28% revenue growth achieved since 2019. 

- **Capitalize on APAC region to increase revenue per order.**  
Consider promoting premium products like MacBook Airs and ThinkPads in the APAC region. Try prioritizing high AOV APAC countries with meaningful order volume to build on existing traction efficiently. 

- **Deepen and diversify EMEA performance.**
Certain EMEA markets showed both high AOV and healthy order volume. Identify and nurture underutilized high-value EMEA markets to diversify and deepen regional performance.


#### Marketing Team
- **Continue investing in the loyalty program, with regular monitoring.**  
Loyalty participation grew significantly from 2019 to 2022 and early signs suggest it played a role in stabilizing post-pandemic revenue. It is recommended that loyalty trends be regularly monitored to ensure post-pandemic growth is sustained. 

- **Conduct deeper analysis of loyalty performance across influencial key dimensions**   Current reporting lacks dimension-level loyalty insights (ex. by marketing channel or product line). Analyze loyalty performance across marketing channels and region to identify trends and tailor future program improvements.

#### Product Team
<!-- - **Explore underlying causes of elevated return rates for specific products.**  
High-AOV products like MacBook Airs, Thinkpad Laptops and Apple iPhones had higher refund rates. Collaboration with with product and operations teams is recommended to to investigate root causes of returns (ex. leveraging repair logs, survey feedback, and return reasons) —to inform quality control and marketing. -->

- **Conduct deeper analysis of loyalty program's repeat customer behavior.**  
The program’s long-term strategic value remains uncertain, especially regarding repeat behavior.
Conduct deeper analysis on loyalty participation, repeat purchase rates, and conversion from first-time to returning customers to assess customer retention impact.


## Assumptions & Caveats
<!--(bullets)
- [ ] List any assumptions you made throughout the project or caveats about data issues -->

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

- Missing or nonsensical country records were excluded from global distribution analysis.
- Orders with missing or invalid dates were excluded from sales trend analysis.
<!--
- Refund data for 2022 is assumed to be missing - given the total absence of any refund records throughout that year.

ngoing monitoring is recommended to determine whether these trends persist, as loyalty customers may represent a reliable source of long-term revenue growth. To fully evaluate the program’s strategic value, it will be important to assess its cost-effectiveness after 2022 and conduct deeper analysis into overall participation and repeat behavior to better quantify customer retention.
- Refund data limitations may understate return rates for high-AOV products like Apple devices and Bose headphones. These data gaps reduce confidence in product-specific insights.

Assumption 4: Loyalty participation status is assumed to be accurate for each transaction based on available flags.

*One exception to this trend in increased AOV was December 2019, when AOV declined by -7%, diverging from typical seasonal behavior—possibly due to early pandemic uncertainty that affected consumer confidence and purchasing patterns.

-->