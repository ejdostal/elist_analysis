<!-- The real value of portfolio projects lies in your ability to explain them, learn the on-the-job frameworks, and supplement your interviews with proof of the quality of your work - not in simply doing them. 
-->
<p align="center">
  <img src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/tech hub + subtitle+variation.png' alt="TechHub Banner" height="300">
</p>

#  TechHub e-Commerce Analysis
 <!--
Sales analysis for an e-commerce company.

As a data analyst, your goal is to help the team (both technical and non-technical people) understand what you found, how you found it, and what they can do with these findings. 
-->



## Project Background
<!-- 
- [x] Overview of company history, business model, and goals   
- [x] Explain the “so what” of the project 
- [x] Define important terminology, metrics, and dimensions  -->

TechHub is a global e-commerce company founded in 2018 that specializes in selling popular electronics through its website and mobile app. It carries in-demand products from brands like Apple, Samsung, and ThinkPad and uses a mix of digital marketing channels—including email campaigns, SEO, and affiliate links—to reach a broad international customer base. As TechHub’s customer base and product offerings have expanded, so has its internal data—spanning orders, customers, product details, order refunds, and geographic regions. This project analyzes that data to uncover actionable insights that can support company leadership and guide strategic decisions across sales, product, marketing, and finance. 

Insights and recommendations are provided in the following key areas to identify performance trends, operational opportunities, and extract data-driven answers to strategic questions from  leadership:

- **Annual Sales Trends & Seasonality:** An evaluation of historical sales trends across time, focusing on Revenue, AOV (average order value), Order Volume, and their growth rates over time.

- **Product Performance:** An analysis of products and their impact across total revenue.

- **Geographic Distribution:** A dissection sales impact by region, highlighting trends and potential avenues for growth.

- **Trends in Loyalty Program:** Assessing recent trends in loyalty vs. non-loyalty performance.

- **Refunds by Apple Product:** Comparing and analyzing returns by Apple product, focusing on Refund rate, Number of refunds, and AOV.
  

The Excel workbook used to clean and investigate trends in the data can be found [here].

The SQL queries used to answer various business questions can be found [here].

An ERD representing the main database structure and relationships between analyzed tables can be found [here].  


## Data Structure & Cleaning 
<!-- - [x]  ERD of Dataset -->

The data analyzed spanned a total of 108K+ records across four tables: orders, customers, geo_lookup, and order_status.
![](Images/ERD%20-%20Elist%20Data.png)
<!-- <img width="600" src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/ERD - Elist Data.png'> -->

Before analysis, the dataset was cleaned in Excel to address column inconsistencies, manage missing or inaccurate records, and assess their impact on results. Helper columns and time-based features were added to enable trend analysis across multiple time grains. An issues log documenting data quality issues, their severity, and resolution status is available [here].



## Executive Summary

From 2019 to 2022, TechHub experienced strong pandemic-driven growth, with sales peaking in 2020 and stabilizing above pre-pandemic levels by 2022. Revenue growth retained post-pandemic was driven largely by a sustained 28% increase in order volume since 2019, suggesting a potential long-term shift in online tech purchasing behavior going forward. It was uncovered that just four products—combining high value and high volume—accounted for 96% of total revenue. Of the regions, NA and EMEA led in overall revenue and order volume (especially the U.S. and U.K.), while APAC stood out for its higher average order values, particularly in Japan. Loyalty members became TechHub’s most consistent revenue stream by 2022, surpassing non-loyalty customers in both the annual AOV and annual revenue. MacBook Air Laptops had the highest refund rates among Apple products, warranting further review given their premium price point and sizable contribution to total revenue.

A deep dive into trends and insights can be found below.

## Deep-Dive Insights
<!--
- [x] bulleted list, split into sections 
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
  [x] Include clean visuals (pivot tables, dashboards, graphs)
-->  

### Sales Trends 
<!-- <img width="600" src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/Overall Sales Trends.png'>   -->

![](Images/Overall%20Sales%20Trends%202.png)
#### Overall Sales Trends

From 2019 to 2022, TechHub generated $28M in total sales, averaging $7M in annual revenue, 27K annual orders, and a $254 average order value (AOV). The company’s strongest performance occurred during the pandemic, with 2020 and 2021 accounting for nearly 70% of total revenue ($10M and $9M, respectively), driven by sharp increases in both AOV and order volume. March 2020 marked the steepest monthly growth—a 50% revenue jump from $479K to $720K—likely driven by widespread in-store shutdowns. Sales continued rising through 2020, peaking at $1.25M in December. In 2021, revenue declined and continued trending downward into 2022, signaling market normalization. However, by 2022, while AOV had returned to 2019 levels, annual order volume remained elevated—sustaining a 28% revenue increase compared to pre-pandemic levels. This suggests a lasting shift in customer behavior toward online tech purchases and highlights order volume as a key lever for stable, long-term revenue growth.


![](Images/Monthly%20Trends%20by%20Year%20-%20Chart.png)
#### Seasonality
Despite the volatility of sales during the analyzed time period,seasonal sales patterns could still be observed across the 4 year period. Across the average year, sales growth was highest in November (18%) and December (23%), and typically dipped lowest in October (-28%), January (-10%), and February (-23%), corresponding with the typical ebb and flow of the holiday season. Sales would then gradually increase from March onwards and dip again in June (by -9% on average), and rebounding more significantly in July (9%), August (4%), and September (13%) - corresponding with the start of the school year. Interestingly, August consistently saw the highest increases in average order value (AOV), with AOV growing by an average of 4%—the largest monthly AOV increase across the year. This could present an optimal window to promote higher-value products, such as MacBook Air and ThinkPad laptops, as potential back-to-school essentials.


### Product Performance
<!--
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [x] Include clean visuals (pivot tables, dashboards, graphs)
-->
![](Images/3%20Products.png)

From 2019 to 2022, four products generated 96% of TechHub’s total revenue: the 27" 4K Gaming Monitor ($9.85M), Apple AirPods Headphones ($7.73M), MacBook Air Laptop ($6.29M), and ThinkPad Laptop ($3.20M). The Gaming Monitor led in total revenue due to a strong combination of high order volume (23K) and a healthy AOV of $421. AirPods were the most frequently purchased product with 48.4K orders, relying on volume rather than price (AOV: $160) to drive revenue. Meanwhile, both laptops stood out for their high AOVs—$1.5K for the MacBook Air and $1.1K for the ThinkPad—contributing 22% and 11% of total revenue, respectively, despite representing only a small share of orders (4% and 3%). These figures suggest that modest increases in laptop sales could significantly boost overall revenue.

In contrast, lower-performing products like the Samsung Charging Cable Pack, Samsung Webcam, Apple iPhone, and Bose Soundsport Headphones collectively made up less than 4% of total revenue. The cable pack saw high order volume (21K) but generated only $442K due to its extremely low AOV ($20), making it a potential candidate for bundling strategies. The iPhone, while priced at $741, sold just 288 units across four years, contributing only $213K—an unexpectedly low figure for a flagship product. These patterns underscore the importance of both price point and purchase frequency in driving product-level performance.

### Geographic Distribution
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->

From 2019 to 2022, TechHub’s global sales were led by North America (NA) and EMEA, which together accounted for 81% of total revenue—both driven primarily by high order volumes. NA generated the most revenue at $14.5M across 55.8K orders (52% of all orders), with the U.S. alone contributing 91% of regional sales. EMEA followed with $8.2M and 31.8K orders, both regions maintaining similar average order values (AOVs) of around $260.

APAC contributed 13% of total revenue ($3.6M) but stood out for having the highest AOV of any region at $279 - about 8% higher than the average AOV across all regions. Within APAC, Japan and Australia drove over half the region’s sales, with Japan achieving a particularly strong AOV of $398. In contrast, LATAM generated the lowest revenue at $1.6M from just 7.2K orders, and also had the lowest AOV at $231. Brazil and Mexico together accounted for 60% of LATAM revenue. These regional trends suggest that while NA and EMEA drive volume, APAC presents strong high-value potential, especially in markets like Japan.



### Trends in Loyalty Program
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->
![](Images/loyalty%20-%20per%20total%20sales.png)
From 2019 to 2022, non-loyalty customers generated higher overall revenue for TechHub—approximately $17.1M across ~62K orders, with an average order value (AOV) of $275—compared to loyalty members, who brought in ~$10M from ~46K orders with a lower AOV of $240.However, loyalty members demonstrated stronger year-over-year growth and greater consistency. Loyalty revenue surged 614% from 2019 to 2020 (from ~$415K to ~$2.97M), followed by another 64% increase in 2021. In contrast, while non-loyalty revenue also grew significantly from 2019 to 2020 (108%, from ~$3.4M to ~$7.1M), it declined sharply after 2020 and continued to fall through 2022. By 2021, loyalty members contributed more than half of total annual revenue (53%), rising to 55% in 2022 — a trend mirrored in order volume. Loyalty AOV also surpassed that of non-loyalty customers in 2022 ($245 vs. $215), despite broader post-pandemic spending declines.These trends suggest loyalty members are emerging as TechHub’s most stable and valuable customer segment. Further analysis of program costs, regional distribution, and acquisition channels (e.g., marketing platforms) is recommended, but early evidence supports continued investment in the loyalty program to capitalize on its resilience and long-term growth potential.
### Refund Rates by Apple Product
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->

Apple products experienced the highest refund rates among TechHub’s offerings, particularly during the pandemic. Refund rates peaked in 2020 at 10%, exceeding the industry benchmark of 8.28% for electronics. Rates declined sharply in 2021 and dropped to 0% in 2022, which may indicate incomplete data and should be validated with the Payments team. Even with 2022 included, the average refund rate for Apple products remained elevated at 10%; excluding it, the rate climbs to 13%.

Among individual Apple products, the MacBook Air had the highest average refund rate at 11%, with particularly high rates in 2019 and 2020 (18% and 17%, respectively), suggesting a need to monitor product quality given its high AOV. iPhones followed with an 8% average refund rate, though their low sales volume limits insight. AirPods, the most frequently purchased product, had a 5% average refund rate—peaking at 10% in 2020 before trending downward. While these trends may reflect pandemic-era supply chain disruptions or quality issues, further validation is needed to ensure data completeness before drawing definitive conclusions.

## Recommendations 
<!-- - [ ] bulleted list, split into sections -->
Focus on long-term growth strategies that build on post-pandemic order trends and encourage customer retention. Based on the insights above, the following actions are recommended:

- **Maintain strong order volumes to sustain the 28% revenue growth achieved since 2019.**
  - Prioritize the NA and EMEA regions, which account for 81% of total order volume.

- **Optimize sales and expand market presence in high-AOV regions like APAC.**
  - Focus on APAC countries that show both high AOV and meaningful order volume to build on existing traction efficiently.
  - For example, Japan has an AOV of $393—51% above the global average—and ranks 4th in total sales, indicating strong revenue potential.
  - Promote premium products like MacBook Airs and ThinkPads in these high-value markets to maximize return.

- **Conduct further analysis of the loyalty program to assess its long-term impact.**
  - Analyze loyalty program's effectiveness at converting first-time buyers into repeat customers.
  - Continue monitoring loyalty trends to ensure post-pandemic growth is sustained.
  - Analyze loyalty program performance across variables like marketing channel, purchase platform, and account creation date to identify drivers of high customer retention.

- **Investigate gaps in refund data and uncover potential drivers of product returns.**
  - Investigate gaps in refund data and identify potential drivers of product returns.
  - Work with the payments team—and, if needed, the data engineering team—to determine the scope and root cause of missing refund data.
  - Evaluate whether historical data can be recovered and implement a long-term solution to prevent future collection issues.
  - Partner with product and operations teams to uncover reasons for Apple product returns—especially high-AOV items like MacBook Airs—using sources like customer surveys and repair ticket trends.

## Assumptions & Caveats
<!--(bullets)
- [ ] List any assumptions you made throughout the project or caveats about data issues -->

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

- Missing country records were excluded from global analysis.

- Missing and nonsensical order dates were excluded from analysis.

- It is assumed that 2022 refund data is incomplete or inaccurate, as no refunds were recorded for any products during the entire year.
