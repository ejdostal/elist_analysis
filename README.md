<p align="center">
  <img src="Images/tech hut-2.png" alt="Tech Hub image" width = "300" >
</p> 

# TechHub Post-Pandemic Analysis


TechHub is a global e-commerce company founded in 2018 that specializes in selling popular electronics through its website and mobile app. It carries in-demand tech products from brands like Apple, Samsung, and ThinkPad and uses a mix of digital marketing channels, including email campaigns, SEO, and affiliate links, to reach a broad international customer base. As TechHub’s customer base and product offerings have expanded, so has its internal data -  spanning orders, customers, product details, <!-- order refunds, --> and geographic regions. 

This report synthesizes and analyzes data accrued between 2019 - 2022, highlighting data trends, providing insight into how company performance changed during this critical period, and offering recommendations to help guide finance, sales, product, and marketing teams going forward. 

Insights and recommendations are focused on the following key areas:

- **Sales Trends Analysis** - Evaluation of historical sales patterns from 2019 - 2022, both by annual sales performance and seasonality, focusing on Revenue, Order Volume, and Average Order Value (AOV).

- **Product Level Performance** - An analysis of TechHub's various product lines, understanding their impact on sales.

- **Regional Comparisons** - An evaluation of sales and orders by region, with emphasis on top-performing countries.

- **Loyalty Program Success** - An assessment of the loyalty program on customer retention and sales.

<!--- **Refunds by Apple Product:** Comparing and analyzing returns by Apple product, focusing on Refund rate, Number of refunds, and AOV. -->  
## Table of Contents
Jump to sections of interest quickly using the following links. Happy analyzing!

- [TechHub Post-Pandemic Analysis](#techhub-post-pandemic-analysis)
  - [Table of Contents](#table-of-contents)
  - [Executive Summary](#executive-summary)
  - [Deep Dive Insights](#deep-dive-insights)
    - [Annual Sales Trends](#annual-sales-trends)
    - [Seasonality](#seasonality)
    - [Product Performance](#product-performance)
    - [Regional Comparisons](#regional-comparisons)
    - [Loyalty Performance Overview (2019–2022)](#loyalty-performance-overview-20192022)
  - [Final Recommendations](#final-recommendations)
    - [Finance Team](#finance-team)
    - [Sales Team](#sales-team)
    - [Marketing Team](#marketing-team)
    - [Product Team](#product-team)
  - [Appendix](#appendix)
    - [Assumptions \& Caveats](#assumptions--caveats)
    - [Database Structure \& Cleaning](#database-structure--cleaning)


## Executive Summary
Between 2019 and 2022, TechHub generated $28.1M in revenue, averaging about $7M annually, with nearly 70% concentrated in 2020–2021 as order volume and AOV spiked during peak-pandemic demand. By 2022, AOV returned to 2019 levels, but elevated order volume kept revenue 28% above pre-pandemic ($5M vs. $3.6M). North America and EMEA led sales, while APAC delivered the fastest growth and highest AOV, highlighting an expansion opportunity. Four products drove 96% of revenue, and Loyalty Program customers began outperforming non-loyalty customers in 2021, suggesting loyalty could be a key growth lever, though further analysis is needed to confirm performance trends.
<!--  MacBook Air Laptops had the highest refund rates among Apple products, warranting further review given their premium price point and sizable contribution to total revenue.
-->
 A **deep dive** into all trends and insights can be found below, organized into sections.

## Deep Dive Insights


![](Images/Executive%20Summary%20-%20Overall%20Sales%20Trends%20.png)
### Annual Sales Trends

Between 2019 and 2022, TechHub’s sales performance **reflected the volatility of a rapidly shifting market**. Over four years, the company brought in $28.1M in revenue from 108K total orders, averaging about $7M and 27K orders per year. However, this average masks an important trend: nearly 70% of total revenue was concentrated in 2020 and 2021, when both order volume and average order value (AOV) surged during the pandemic.

- **2019: Pre-Pandemic Baseline** - TechHub recorded its lowest revenue and order volume across the time period in 2019, generating $3.8M in total sales from 16.8K orders. The average order value (AOV) was $230, a figure later matched in 2022 during the post-pandemic market correction.

- **2020: Pandemic Surge Begins** - Revenue and AOV peaked at $10.1M and $300, respectively — the highest levels in the 4-year period. This surge also reflected TechHub’s strongest annual growth across all metrics, with +163% growth in total revenue, +101% growth in orders, and +31% growth in AOV.

- **2021: Customer Adjustment** - In 2021, AOV fell -15% to $255, as consumers became more budget-conscious. Despite this, total sales still remained strong at $9.1M. This was driven by record-high order volume, which climbed another 6% in YoY growth to an all time high of 35.8K orders, highlighting sustained demand for online tech products during the pandemic despite decreases in AOV.

- **2022: Market Normalization** - Revenue dropped significantly in 2022 as the market began normalizing upon the return of in-store spending options. AOV continued to drop, returning back to it's pre-pandemic level of $230. Order volume also declined significantly by -40%. However, order count remained 28% above pre-pandemic levels, contributing directly to post-pandemic revenue retention and signaling a potentially lasting shift in consumer behavior moving forward. 

![ ](Images/seasonality.png)

### Seasonality

**TechHub’s sales followed a predictable annual cycle**, with sharp holiday peaks in September, November, and December and steep pre- and post-holiday troughs in October, January, and February. Recognizing these patterns is key for optimizing promotions and inventory. Outliers —such as the September 2022 AOV spike or early 2020’s pandemic-driven lift— highlight the importance of monitoring anomalies, as they may reveal promotional or product strategies worth repeating.

- **Holiday-driven highs** - The strongest months were **November** and **December**, fueled by holiday demand. November delivered the largest average order volume growth (+23%), while December drove the highest average sales growth (+22%). December 2020 set a record with $1.3M in sales and 4K orders, combining seasonal shopping with pandemic-driven demand.

- **Back-to-school momentum** - **September** was another critical growth point, averaging +12% sales growth and +9% order growth, often marking the start of TechHub’s annual cycle. However, September 2022 broke the pattern: order volume plunged -15%, flattening sales growth to 0%. A sharp +18% AOV spike —the highest across all years— kept sales from turning negative. This anomaly may signal a successful back-to-school promotion on high-value products such as laptops, worth analyzing further, especially since most other metrics declined during the post-pandemic downturn of 2022.

- **Seasonal pullbacks** - The cycle’s weakest points were **October**, **January**, and **February**, when order volumes fell sharply, dragging sales down. October showed the steepest declines (avg -31%), with October 2022 hitting a record -47% order drop and a sales low of $178K, combining seasonal troughs with the broader market downturn. January and February typically showed similar slowdowns (avg -13% and -23% sales growth, respectively), though 2020 was an exception. Back-to-back +13% AOV gains allowed January sales to break even and February to grow +4%, even as orders fell. This unusual lift in AOV in early months of 2020 likely marked the beginning of early pandemic spending increases.

- **Recovery periods** - Sales typically stabilized in **March**, then climbed steadily until September’s spike. The outlier was March 2020, when sales surged +50%—the strongest month across all four years—as pandemic demand accelerated. Outside of 2020, March growth averaged a more modest +4% in sales and +6% in orders. Mid-year also showed smaller dips, with **June** consistently declining (-9% sales, -11% orders, on average), but reliably offset by **July**’s rebound (+11% sales, +12% orders, on average), keeping momentum intact into fall.

### Product Performance

![](Images/product_area%20chart.png)

Between 2019 and 2022, just **four products generated the vast majority — 96% — of total revenue**, highlighting a highly concentrated revenue stream. In contrast, the remaining four products combined contributed just 4% of revenue, though they revealed interesting dynamics worth further consideration.

**Top Products | 96% revenue**

1. **27in 4K Gaming Monitor | Bestseller + High AOV Combo**  
Leading the pack was the 27” 4K Gaming Monitor, which stood out as both a bestseller and a high-value item. With an average order value (AOV) of $421 and 23K units sold, it brought in roughly $9.85M, accounting for 35% of total revenue. This product’s balance of volume and price made it the company’s most valuable contributor over the four-year period.

2. **Apple AirPods Headphones | Most Popular Product**  
Closely behind, the Apple AirPods Headphones emerged as the most popular product by volume. With nearly 48K units sold — almost half of all orders — it earned $7.73M or 28% of revenue. Despite its lower price point compared to laptops, its widespread popularity positioned it as a reliable driver of sales.

3. **MacBook Air Laptop | Highest AOV**  
Though the MacBook Air Laptop represented only 4% of total orders, its premium price tag ($1,588 AOV) made it significant in terms of revenue, generating $6.29M, or 22% of total revenue. Its performance peaked in 2020, with a staggering 384% increase in annual sales, possibly fueled by the sudden shift to remote work and learning. March 2020 saw highest monthly growth for Macbook Airs at 66%, aligning with when many schools closed and shifted to remote learning as well as many in-store tech purchasing options closing.

4. **ThinkPad Laptop | Second Highest AOV + Seasonal Demand**  
Similarly, the ThinkPad Laptop, with an AOV of $1,100, contributed $3.2M (11% of total revenue) from a small base of just under 3K orders. Its sales trajectory also had a sharp spike in 2020, as well as standout 92% growth in December 2020. ThinkPad sales showed a clear pattern of year-end peaks, suggesting strong seasonal appeal — potentially linked to holiday gift-giving or end-of-year corporate purchases. 


**Less Impactful Products | 4% revenue**

5. **Samsung Charging Cable Pack | Low AOV but Popular**  
The Samsung Charging Cable Pack proved surprisingly popular, making up 20% of all orders - although with a low price tag ($20 AOV). While it generated just 2% of total revenue at $442K, its high volume suggests it might have some strategic potential. For example, bundling it with other items could be an effective strategy to increase cart size and elevate overall revenue contribution.

6. **Samsung Webcam | Latecomer with Promise**  
The Samsung Webcam, launched in 2020, gained traction quickly, accounting for 7% of all orders — a strong showing for a latecomer to the product line. Its growth also aligns with the rise of virtual learning and remote work, again highlighting how external events shaped consumer behavior.It contributed a total of $361K in revenue.

7. **Apple iPhone | High AOV and Disappointing Sales**   
Surprisingly, the flagship item Apple iPhone saw weak sales at just $213K in total revenue. With just 288 total units sold across four years and average monthly sales hovering around six units, the iPhone failed to gain traction with the customer base. Given the low demand, it may be worth either surveying customers or reallocating resources toward better-performing premium products.

8. **Bose Soundsport Headphones | Low AOV and Disappointing Sales**  
Lastly, the Bose Soundsport Headphones underperformed significantly, generating just $3.3K in total revenue—a mere 0.01% of the four-year total. Order activity was sporadic and absent in many months, making it difficult to distinguish between genuinely low demand and possible data issues. While further investigation into the data pipeline is warranted, current trends suggest the product failed to resonate with TechHub’s customer base and may no longer justify continued support or inventory space.

### Regional Comparisons
![ ](Images/NA%20-%20regions%20x%20metrics.png) 
![ ](Images/EMEA-%20regions%20x%20metrics.png)
![ ](Images/APAC%20-%20regions%20x%20metrics.png) 
![ ](Images/LATAM%20-%20regions%20x%20metrics.png) 


Global revenue was **highly concentrated in NA** (North America) **and EMEA** (Europe, Middle East, and Africa) **regions**, which together accounted for 81% of total sales ($22.8M) and 87.6K orders. NA led with 52% of sales, followed by EMEA at 29%. While the Asia-Pacific (APAC) region contributed only 13% ($3.7M), its average order value (AOV) of $279 was +7% above the global average, signaling strong earning potential. In contrast, Latin America (LATAM) contributed the least (6%, $1.7M) and had the lowest AOV ($230, -11% below the global average), suggesting limited near-term ROI.

**North America (NA) | 52% of Global Sales Concentrated in Two Countries**  
North America generated $14.6M across 55.8K orders, with an AOV slightly above the global mean ($261 vs. $260). Revenue was highly concentrated in two countries, providing stability but also underscoring the region’s dependency on a few key markets.
- **United States (US)** - Accounted for 91% of NA sales ($13.2M, 50.7K orders), contributing 47% of global revenue. Its AOV of $262 was slightly above the regional average, reinforcing the importance of maintaining strong U.S. sales to sustain global revenue stability.
- **Canada (CA)** - Contributed 8% of NA revenue ($1.1M) and brought in 4.8K orders, contributing 4% of dollar sales globally. With an AOV $247 (-5% below the regional average), Canada could present a potential opportunity for targeted marketing to boost order value.

**EMEA (Europe, Middle East, and Africa) | Revenue Widely Distributed across 15+ Countries**  
Europe, Middle East, and Africa contributed $8.2M or 29% of global revenue, bringing in 31.8K total orders at a slightly lower-than-average AOV of $259. Unlike North America, total sales for EMEA was widely distributed across 15+ countries, the leaders of which were:
- **Great Britain (GB)** – Great Britian made up 25% of EMEA sales ($2.1M), contributing 7% of global revenue. It brought in 8.3K orders but at an AOV -3% below the regional average ($251). 
- **Germany (DE)** – Germany brought in 12% of EMEA sales at $993.7K, contributing 4% of global revenue. Despite bringing in almost 60% fewer total orders than Great Britain's (3.7K), Germany lagged only slightly behind Great Britian in total revenue, thanks to having a country AOV +4% above regional average ($270).

**APAC | High AOV and premium potential**  
Despite contributing 13% of global revenue at $3.7M, Asia-Pacific boosted the highest regional AOV at $279 - an AOV +7% above global average, showing higher earning potential should this region continue to grow in sales. It also sustained the greatest post-pandemic annual revenue growth of any region rising from $423.9K pre-pandemic (2019) to $620.4K post-pandemic (2022).
- **Japan (JP)** – Japan had an impressive country AOV of $393 (+51% above APAC AOV), allowing it to bring in $1M (4% of global revenue) from just 2.6K total orders, making it a strong candidate for premium offerings. Japan brought in 28% of total APAC revenue and 20% of total regional orders.
- **Australia (AU)** – Although Australia contributed more orders than Japan at 4.8K orders (36% of total regional orders), it still came up slightly behind it in total revenue at $975K. This was due to Australia's very low AOV of $204 (-27% below regional average). Australia may be better suited for lower-value products.

**LATAM | Lowest performance and declining AOV**
Latin America was the lowest performing region, contributing $1.6M at 6% of global revenue, bringing in a total of 7.3K orders at an AOV of $231 (-11% below the global average). 
**Brazil** – Brazil brought in the most revenue of the region at $730K or 44% of total regional sales. It's AOV was also 8% higher than regional average at $251, suggesting that Brazil may warrant selective marketing efforts to improve  LATAM underperformance. It brough in a total of 2.9K orders.


### Loyalty Performance Overview (2019–2022)

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

## Final Recommendations
To support long-term growth and build on post-pandemic order patterns, the following actions are recommended to the following company teams:

### Finance Team
- **Evaluate the loyalty program’s cost-efficiency.** 
  While Loyalty customers demonstrated higher resilience during the post-pandemic downturn, the program's net impact remains unclear without visibility into associated costs. Evaluate the loyalty program’s costs relative to its returns — particularly in the post-pandemic period to understand its true impact.
<!-- 
- **Audit and recover missing refund data to support product-level decision-making.**   
The absence of 2022 refund records limits visibility into return behavior, particularly for high-AOV items like MacBook Airs. Partnership with the payments and/or data engineering teams to investigate data gaps and uncover root causes will support more accurate product performance analysis.
-->

### Sales Team
- **Prioritize high-performing regions to sustain growth.**  
NA and EMEA contributed 81% of total revenue, driven by consistently high order volume. Prioritization of these regions in future growth plans - with special focus on top-performing countries like the United States and Great Britian - is recommended to sustain the 28% revenue growth achieved since 2019. 

- **Capitalize on APAC region to increase revenue per order.**  
Consider promoting premium products like MacBook Airs and ThinkPads in the APAC region. Try prioritizing high AOV APAC countries with meaningful order volume to build on existing traction efficiently. 

- **Deepen and diversify EMEA performance.**
Certain EMEA markets showed both high AOV and healthy order volume. Identify and nurture underutilized high-value EMEA markets to diversify and deepen regional performance.


### Marketing Team
- **Continue investing in the loyalty program, with regular monitoring.**  
Loyalty participation grew significantly from 2019 to 2022 and early signs suggest it played a role in stabilizing post-pandemic revenue. It is recommended that loyalty trends be regularly monitored to ensure post-pandemic growth is sustained. 

- **Conduct deeper analysis of loyalty performance across influencial key dimensions**   Current reporting lacks dimension-level loyalty insights (ex. by marketing channel or product line). Analyze loyalty performance across marketing channels and region to identify trends and tailor future program improvements.

### Product Team
<!-- - **Explore underlying causes of elevated return rates for specific products.**  
High-AOV products like MacBook Airs, Thinkpad Laptops and Apple iPhones had higher refund rates. Collaboration with with product and operations teams is recommended to to investigate root causes of returns (ex. leveraging repair logs, survey feedback, and return reasons) —to inform quality control and marketing. -->

- **Conduct deeper analysis of loyalty program's repeat customer behavior.**  
The program’s long-term strategic value remains uncertain, especially regarding repeat behavior.
Conduct deeper analysis on loyalty participation, repeat purchase rates, and conversion from first-time to returning customers to assess customer retention impact.

## Appendix
### Assumptions & Caveats
<!--(bullets)
- [ ] List any assumptions you made throughout the project or caveats about data issues -->

Throughout the analysis, multiple assumptions are made to manage challenges with the data. The assumptions and caveats are noted below:

- Missing or nonsensical country records were excluded from geographical distribution analysis.
- Orders with missing or invalid dates were excluded from time analysis.

<!--
- Refund data for 2022 is assumed to be missing - given the total absence of any refund records throughout that year.

ngoing monitoring is recommended to determine whether these trends persist, as loyalty customers may represent a reliable source of long-term revenue growth. To fully evaluate the program’s strategic value, it will be important to assess its cost-effectiveness after 2022 and conduct deeper analysis into overall participation and repeat behavior to better quantify customer retention.
- Refund data limitations may understate return rates for high-AOV products like Apple devices and Bose headphones. These data gaps reduce confidence in product-specific insights.

Assumption 4: Loyalty participation status is assumed to be accurate for each transaction based on available flags.

*One exception to this trend in increased AOV was December 2019, when AOV declined by -7%, diverging from typical seasonal behavior—possibly due to early pandemic uncertainty that affected consumer confidence and purchasing patterns.

-->

### Database Structure & Cleaning 
The data analyzed spanned a total of 108K+ records across four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. An ERD representing the main database structure and relationships between analyzed tables can be found below.

![](Images/ERD%20-%20Elist%20Data.png)

Before analysis, the dataset was cleaned in Excel to address column inconsistencies, manage missing or inaccurate records, and assess their impact on results. Helper columns were also added to augment the data and enable trend analysis across multiple time grains. An issues log documenting data quality issues, their severity, and resolution status is available [here](Files/TechHub_analysis_workbook.xlsx).

The Excel workbook used to clean and investigate trends in the data can be found [here](Files/TechHub_analysis_workbook.xlsx).

The SQL queries used to answer various business questions can be found [here](Files/SQL-Queries.sql).
