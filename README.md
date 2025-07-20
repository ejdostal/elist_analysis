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

- **Overall Sales Trends:** An evaluation of historical sales trends across time, focusing on revenue, AOV (average order value), order volume, and growth rate.

- **Product Performance:** An analysis of products and their impacts across total revenue and time.

- **Geographic Distribution:** An assessement of performance by region, highlighting regional trends and countries of note.
<!--
- **Trends in Loyalty Program:** Assessing recent trends in loyalty vs. non-loyalty performance.

- **Refunds by Apple Product:** Comparing and analyzing returns by Apple product, focusing on Refund rate, Number of refunds, and AOV.
-->

The Excel workbook used to clean and investigate trends in the data can be found [here].

The SQL queries used to answer various business questions can be found [here].

An ERD representing the main database structure and relationships between analyzed tables can be found [here].  


## Database Structure & Cleaning 
<!-- - [x]  ERD of Dataset -->

The data analyzed spanned a total of 108K+ records across four tables: orders, customers, geo_lookup, and order_status.
![](Images/ERD%20-%20Elist%20Data.png)
<!-- <img width="600" src= '/Users/Erica/Documents/GitHub Repos/elist_analysis/elist_analysis/Images/ERD - Elist Data.png'> -->

Before analysis, the dataset was cleaned in Excel to address column inconsistencies, manage missing or inaccurate records, and assess their impact on results. Helper columns added to augment the data and enable trend analysis across multiple time grains. An issues log documenting data quality issues, their severity, and resolution status is available [here].

## Executive Summary
From 2019 to 2022, TechHub experienced strong pandemic-driven growth, with sales peaking in 2020 and stabilizing above pre-pandemic levels by 2022. Revenue growth retained post-pandemic was driven largely by a sustained 28% increase in order volume since 2019, suggesting a potential long-term shift in online tech purchasing behavior going forward. It was discovered that just four products accounted for 96% of total revenue and that NA and EMEA regions led in overall revenue and order volume. 

<!-- Loyalty members became TechHub’s most consistent revenue stream by 2022, surpassing non-loyalty customers in both the annual AOV and annual revenue. MacBook Air Laptops had the highest refund rates among Apple products, warranting further review given their premium price point and sizable contribution to total revenue.-> 
-->
A deep dive into trends and insights, including a breakdown of sales trends by year, seasonality, product, and region can be found below.


## Deep-Dive Insights
<!--
- [x] bulleted list, split into sections 
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
  [x] Include clean visuals (pivot tables, dashboards, graphs)
  -->

### Overall Sales Trends 

![](Images/overall%20sales.png)

Between 2019 and 2022, TechHub’s sales performance reflected the volatility of a rapidly shifting market. **Over four years, the company brought in $28.1M in revenue from 108K total orders**, averaging about $7M and 27K orders per year. However, this average masks an important trend: nearly 70% of total revenue was concentrated in 2020 and 2021, when both order volume and average order value (AOV) surged during the pandemic.

**Order volume was the clearest driver of growth.** It more than doubled at the height of the pandemic, reaching an all-time high in 2021. Even after a steep decline in 2022 as the market began to normalize, order volume remained 28% higher than pre-pandemic levels. This sustained lift in customer activity played a critical role in maintaining revenue post-pandemic and may signal a lasting shift in consumer behavior around online tech purchases.

While AOV initially spiked in 2020, it steadily declined over the next two years and returned to 2019 levels by 2022. Still, the elevated order volume—despite the drop in AOV—suggests that TechHub may have an opportunity to build on a larger, more engaged customer base in the years ahead.


- **2019: Pre-Pandemic Baseline** - TechHub recorded its lowest revenue and order volume across the time period in 2019, generating $3.8M in total sales from 16.8K orders. The average order value (AOV) was $230, a figure later matched in 2022 during the post-pandemic market correction.

- **2020: Pandemic Surge Begins** - Revenue and AOV peaked at $10.1M and $300, respectively — the highest levels in the 4-year period. This surge also reflected TechHub’s strongest annual growth across all metrics, with +163% growth in total revenue, +101% growth in orders, and +31% growth in AOV.

- **2021: Customer Adjustment in AOV** - In 2021, AOV fell -15% to $255, as consumers became more budget-conscious. Despite this, total sales still remained strong at $9.1M. This was driven by record-high order volume, which climbed another 6% in YoY growth to an all time high of 35.8K orders, highlighting sustained demand for online tech products during the pandemic despite decreases in AOV.

- **2022: Market Normalization** - Revenue dropped significantly in 2022 as the market began normalizing upon the return of in-store spending options. AOV continued to drop, returning back to it's pre-pandemic level of $230. Order volume also declined significantly by -40%. However, order count remained 28% above pre-pandemic levels, contributing directly to post-pandemic revenue retention and signaling a potentially lasting shift in consumer behavior moving forward. to $4.9M as ,

### Seasonality
<!--
<div align="center">
  <img src="Images/Seasonality - across all 4 years.png" width="45%"
  style="margin-right:2%">
  <img src="Images/seasonality of average year.png" width="45%" >
</div> -->
![ ](Images/Seasonality%20-%20across%20all%204%20years.png)

**TechHub’s sales performance from October through March followed a consistent annual cycle** marked by a pre-holiday pullback, peak-season surge, and post-holiday slowdown, with March often signaling the start of recovery. This 6-month arc repeated across 2019–2022, with a few notable exceptions that reflect broader market disruptions.

The cycle typically began with a sharp decline in **October** — averaging a -28% decrease in sales growth and -29% decrease in order growth, the lowest average sales of any month — suggesting that consumers tend to deliberately hold back spending ahead the holiday season.

This dip was consistently followed by a two-month surge in November and December, with **November** showing highest average order growth (+24%) and **December** delivering highest average sales growth (+23%), typically supported by modest average AOV gains (+2%).* These patterns point to a shift from high-volume purchases in November to higher total spend in December, likely driven by last-minute, higher-value gifts.


**January** and **February** typically saw a post-holiday downturn in both sales and order growth, consistent with seasonal fatigue and reduced demand. **March** generally marked the beginning of recovery, with sales trends gradually rebounding. However, 2020 disrupted this pattern entirely:

- January 2020 saw flat sales growth (0%), 
- February 2020 posted a 4% increase, and 
- March 2020 experienced a 50% surge, the highest monthly sales growth across all four years, driven by the initial pandemic wave and a rapid pivot to online purchasing.


### Product Performance
<!--
- [x] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [x] Include clean visuals (pivot tables, dashboards, graphs)
-->
![](Images/product%20distribution.png)


**Between 2019 and 2022, just 4 products generated the vast majority — 96% — of total revenue**, highlighting a highly concentrated revenue stream. In contrast, the remaining four products combined contributed just 4% of revenue, though they revealed interesting dynamics worth further exploration and analysis.

#### Top Products:

1. **27in 4K Gaming Monitor | $9.85M**  
Leading the pack was the 27” 4K Gaming Monitor, which stood out as both a bestseller and a high-value item. With an average order value (AOV) of $421 and 23,000 units sold, it brought in roughly $9.8 million, accounting for 35% of total revenue. This product’s balance of volume and price made it the company’s most valuable contributor over the four-year period.

1. **Apple AirPods Headphones | $7.73M**  
Closely behind, the Apple AirPods Headphones emerged as the most popular product by volume. With nearly 48,000 units sold—almost half of all orders—it earned $7.7 million or 28% of revenue. Despite its lower price point compared to laptops, its widespread popularity positioned it as a reliable driver of sales.

1. **MacBook Air Laptop | $6.29M**  
Though the MacBook Air Laptop represented only 4% of total orders, its premium price tag ($1,588 AOV) made it significant in terms of revenue, generating $6.2 million, or 22% of total revenue. Its performance peaked in 2020, with a staggering 384% increase in annual sales, possibly fueled by the sudden shift to remote work and learning. March 2020 saw its highest monthly growth of any month throughout the entire 2019-2022 period, reaching 66%, aligning with when many schools closed and shifted to remote learning - in addition to many in-store tech purchasing options closing.

1. **ThinkPad Laptop | $3.20M**  
Similarly, the ThinkPad Laptop, with an AOV of $1,100, contributed $3.2 million (11% of total revenue) from a small base of just under 3,000 orders. Its sales trajectory mirrored that of the MacBook, with a sharp spike in 2020 and a standout 92% growth in December 2020. ThinkPad sales a;also showed a clear pattern of year-end peaks, suggesting strong seasonal appeal — potentially linked to holiday gift-giving or end-of-year corporate purchases.


#### Lower Performers:

5. **Samsung Charging Cable Pack | $442K** 
The Samsung Charging Cable Pack proved surprisingly popular, making up 20% of all orders - although with a low price tag ($20 AOV). While it generated just 2% of total revenue, its high volume suggests it might have some strategic potential. For example, bundling it with other items could be an effective strategy to increase cart size and elevate overall revenue contribution.

6. **Samsung Webcam | $361K**  
The Samsung Webcam, launched in 2020, gained traction quickly, accounting for 7% of all orders — a strong showing for a latecomer to the product line. Its growth also aligns with the rise of virtual learning and remote work, again highlighting how external events shaped consumer behavior.

7. **Apple iPhone | $213K**   
Surprisingly, the flagship item Apple iPhones saw weak sales. With just 288 total units sold across four years and average monthly sales hovering around six units, the iPhone failed to gain traction with the customer base. Given the low demand, it may be worth either surveying customers or reallocating resources toward better-performing premium products.

8. **Bose Soundsport Headphones | $3.3K**  
Lastly, the Bose Soundsport Headphones underperformed significantly, generating just $3K in total revenue—a mere 0.01% of the four-year total. Order activity was sporadic and absent in many months, making it difficult to distinguish between genuinely low demand and possible data issues. While further investigation into the data pipeline is warranted, current trends suggest the product failed to resonate with TechHub’s customer base and may no longer justify continued support or inventory space.


### Geographical Distribution
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)
-->
![ ](Images/regional%20distribution.png)
![ ](Images/top%2010%20countries.png)

From 2019 to 2022, **TechHub’s global sales were heavily concentrated in NA and EMEA regions**, which together generated 81% of total revenue ($22.8M combined) across 87.6K orders. Both regions posted AOVs around $260. APAC merged as a promising growth market with the highest regional AOV and early traction in a key country, while LATAM lagged behind due to sustained AOV declines and lower order volume. 

**Across all regions, just 10 countries accounted for 78% of global revenue** (~$21.8M) — the United States (47%), Great Britain (7%), Canada (4%), Japan (4%), Germany (4%), Australia (3%), Brazil (3%), France (2%), Spain (2%), and the Netherlands (2%) — highlighting key markets for continued investment.

## Deep Dive

**North America (NA) | $14.6M**  
NA led global performance with $14.6M in revenue and 52% of global orders (55.8K). Almost all regional revenue came from just two countries:

- **United States:** The largest revenue generator across all countries, contributing 47% of total global revenue at $13.2M (91% of regional sales), with an AOV of $262 and strong order volume of 50.6K. 

- **Canada:** Brought in 8% of total regional sales at $1.1M (4% of global revenue).  Despite having a lower than average AOV at $247, it still managed to perform well, bringing in 4% of total regional orders (4.8K). 

**Europe, Middle East, and Africa (EMEA) | $8.2M**  
EMEA contributed 29% of global revenue at $8.2M, making it the second-highest performing region. It  brought in 31.8K orders at an AOV of $259. Unlike NA, total sales for EMEA were widely distributed across 15+ countries. Leading countries included: 

- **Great Britain:** Great Britain led regional sales at 
$2.09M or 25% of EMEA sales. It also was was the second-highest performing country globally, contributing 8% of global revenue. Britain offered scale in order volume (8.3K) despite slightly weaker AOV ($251).
  
- **Germany:** Germany contributed 4% of global revenue and 12% of EMEA total revenue at $994K. It stood out for its above-average AOV ($270), bringing in 3.6K total orders. EMEA also had some promising high AOV countries like Germany and the Netherlands, while 

- **France**:

- **Spain**:

- **Netherlands:** The Netherlands delivered an even stronger $289 AOV on more modest order volume of 1.6K orders. It brought in 2% of global sales and 6% of regional sales at $458K. 

**Asia and Pacific (APAC) | $3.6M**    
APAC accounted for $3.6M in revenue (13%), but posted the highest regional AOV at $279—7% above the global average. Though order volume was lower overall (13.1K), several countries showed high revenue potential if scaled. A few countries of interest in APAC were:

- **Japan**: Japan generated $1M in revenue with a standout AOV of $393 — 51% above the global average — despite contributing only 2.6K orders. It brought in 20% of regional order volume was the fourth highest earning country at 4% of global sales.

- **Australia:** Australia contributed a similar percentage of regional sales as Japan at 27%, delivering $975K in total revenue. Australia had significantly lower AOV ($204) but with almost double the order volume (4.8K). This combination allowed it to also make a substantial contribution to total regional sales. Globally, it was the 6th highest earning country at 3% of global sales.

**Latin America (LATAM) | $1.6M**  
LATAM was the lowest performing region at $1.67M in revenue or 6% of global sales. This was largely due to it having the lowest AOV across all regions at $231 (11% below global avg), due to a declining trend in AOV post-2020, with greater than 20% year-over-year AOV drops for 2021 and 2022. Without a clear path to reverse AOV erosion, LATAM currently offers limited return on investment, however a few countries of note include:

- **Brazil** - The LATAM country Brazil actually ranked 7th globally at 3% in total sales ($730K) despite it's slightly lower slightly higher AOV ($251). It contributed 40% of total LATAM order volume at 2.9K orders. This country may still offer some return on investment

- **Mexico** - Mexico, in contrast, posted extremely low AOV ($168) and brought in about half the orders of Brazil at 23% of total regional orders or 1.6K. Nonethetheless it still represented 16% of LATAM revenue. It showed a much lower indicating a poor return on existing order volume.  



<!--
From 2019 to 2022, NA and EMEA regions led TechHub’s global sales, contributing a combined 81% of total revenue or ~$22.8M, driven largely by high order volumes at ~87.6K total orders. Both had relatively average regional aovs at $261 and $259, respectively. Meanwhile, the APAC region accounted for 13% of total revenue or ~$3.6M and the LATAM region for only 6% at $~1.67M. Though smaller in contribution in total sales, APAC in particular offers promise for revenue generation. Together, 10 individual countries accounted for 78% of total sales (~$21.8M out of ~$28.1M) (the United States, Great Britian, Canada, Japan, Germany, Australia, Brazil, France, Spain and the Netherlands, respectively.

1) **North America (NA)**  
NA generated the highest total revenue at $14.6M at 55.8K orders (over half of total orders at 52%) with a regional AOV of $261. Of all countries in NA, only 2 contributed almost all of company regional revenue (99%). 
   - **US** - The US was the single biggest generator of revenue of any country - accounting for 47% of total sales overall. It also dominated North American sales, contributing 91% of NA regional sales at a total of ~$13.2M in total revenue and 50.6K orders at a country aov of $262.
  
   - **CA** - Canada accounted for 8% of NA regional revenue, generating ~$1.1M from ~4.7K orders. With an AOV of $247, the country's AOV was quite a bit lower than the regional NA average. For Canada, order volume's particularly important.

1) **Europe, Middle East, and Africa (EMEA)**  
EMEA delivered ~$8.2M in total revenue (the second highest of the four regions) and ~31.8K total orders or 29% of total order volum. EMEA had a regional AOV of $259 - which was roughly equal to the aov across all regions $260. In the EMEA, 83% of total regional sales were spread out across 15 countries so revenue was much less concentrated in a few countriesthan NA. A few countries of note in the EMEA were:

   - **Great Britian** - Great Britain made up the highest percentage of total EMEA regional sales at 25% or ~$2.09M in total revenue.It also had the highest share of regional total number of sales ~8.3K orders. It's AOV was a bit below the regional average at $251. The second highest generator of total revenue of any country at ~$2.09M. Great Britian  also contributed the second highest total revenue of any country at 8% of overall sales.
  
   - **Germany** - Germany with an aov of $270 - 4% above the EMEA regional aov. It contributed the next highest total revenue after Great Britian at 12% of total sales or ~$993.7K, bringing in 3.7K orders. It was also the 5th highest generator of total company sales across all countries (4% of overall revenue).
   
   - **The Netherlands** - The Netherlands also had a sizeable aov at $289 (12% above the regional average) - contributing 6% of regional sales or ~$458K and 1,6K orders. It was the 10th highest contributor to overall sales of any country (2% of total revenue).
  
1) **Asia and Pacific (APAC)** - The APAC region's overall aov was $279 - 7% above the average aov across all regions. For this reason, it's of interest because of its high revenue potential. The APAC region as a whole brought in a total of ~3.65M and ~13.1K orders. 86% of all sales in this region came from Japan (28%), Australia (27%), India (9%), Korea (9%), New Zealand (9%), Russia (5%) and Singapore (4%). Japan and Australia drove 55% of APAC sales. Japan contributed $1M in revenue at a notably high AOV of $398. Australia generated $970K in revenue from 4.7K orders, with a lower AOV of $204.

      - **Japan** - Japan showed an impressive overall country aov of $393. This was 41% above the APAC regions already higher than average aov and 51% above the average aov across all countries. Japan was the 4th highest generator of sales out all countries (4% of overall revenue) at ~$1M, despite only bringing in ~2.6K orders or 2% all total orders. We might consider increasing marketing and promotions of premium products in this area to take advantage of this exceptionally high aov and our already established order presence.

     - **Australia** had a signficantly lower aov ($204) than the regional average but almost double the order count of Japan at ~4.8K orders - causing it to place second in highest APAC revenue generation at ~$975K. It was the 6th highest country in overall revenue generation at 4% of total revenue.

     - **Higher AOV countries making up less than 1% of overall revenue each** - Some countries in APAC also had aovs higher than the regional average - significant given that the region as a whole already averaged 7% higher aov than the aov across all regions - were: India had a country aov of $296 ,earning it ~$343K at ~1.2K total orders (1% of overall sales). Korea had an even higher aov than India at $336 but fewer total orders at 987 - earning it slightly less revenue than India (~$332K) (1% of overall sales).

2) **Latin America (LATAM)**
LATAM represented the smallest share of overall revenue of any region, contributing 6% of total revenue or ~$1.6M. It contributed ~7.2K total orders - the lowest order count of any region at 7% - and the lowest AOV of any region at $231 (-11% below overal average aov across all regions) and of any region 7.2K orders. LATAM aov decreased by more than an additional 20% each year since the initial 2020 boom - these drops are what's driving LATAM's lower than average aov.
   - **Brazil** - Brazil accounted for 44% of LATAM revenue at ~$730K and or 3% of overall company sales. It brought in ~2.9K orders at a country aov of $251. This aov was slightly lower than aov across all regions but 8% higher than average LATAM regional aov. Brazil was the 7th highest contributor to overall revenue of any country.
   - **Mexico** - Mexico contributed 16% of LATAM revenue at ~$275K and 1% of overall revenue. It had a very low aov of $168 (-27% below the already lower LATAM regional average), which is probably why a total of ~1.6K orders didn't bring in more revenue.
  
Across all regions, just 10 countries accounted for 78% of global revenue (~$21.8M)—most notably the U.S., Great Britain, Canada, Japan, Germany, Australia, Brazil, France, Spain, and the Netherlands—highlighting key markets for continued investment.


Recommendation: Consider increasing marketing of premium products to high AOV countries, especially in the APAC region. (ex. Macbook Airs and Thinkpads) Especially prioritize countries with a combo of higher aov and higher total number of sales for the region - to optimize sales most efficiently. (already significant enough levels of interest / presence in that country + more spend per order)   during strategic times to take advantage of higher overall spend per order.






with NA accounting for 52% of all orders placed. APAC and LATAM regions accounted for 13% and 6% of total revenue, respectively. Intriguingly, APAC had the highest aov of all regions by far, at $279 



1) **Asia and Pacific (APAC)**  
APAC accounted for 13% of total revenue ($3.6M) and had the highest AOV across all regions at $279. The following countries brought in a combined ....%  of APAC sales:
   - **JP** - Japan contributed $1M in revenue at a notably high AOV of $398.
   - **AU** - Australia generated $970K in revenue from 4.7K orders, with a lower AOV of $204.

1) **Latin America (LATAM)**  
LATAM represented the smallest share, contributing 6% of total revenue ($1.6M) from 7.2K total orders and the lowest AOV at $231. Together, the following counties accounted for ... % of total LATAM sales.
   - **Brazil** accounted for 44% of LATAM revenue ($730K).
   - **Mexico** contributed 16% of LATAM revenue ($275K).


<!-- From 2019 to 2022, TechHub’s global sales were led by North America (NA) and EMEA, which together accounted for 81% of total revenue—both driven primarily by high order volumes. NA generated the most revenue at $14.5M across 55.8K orders (52% of all orders), with the U.S. alone contributing 91% of regional sales. EMEA followed with $8.2M and 31.8K orders, both regions maintaining similar average order values (AOVs) of around $260.

APAC contributed 13% of total revenue ($3.6M) but stood out for having the highest AOV of any region at $279 - about 8% higher than the average AOV across all regions. Within APAC, Japan and Australia drove over half the region’s sales, with Japan achieving a particularly strong AOV of $398. In contrast, LATAM generated the lowest revenue at $1.6M from just 7.2K orders, and also had the lowest AOV at $231. Brazil and Mexico together accounted for 60% of LATAM revenue. These regional trends suggest that while NA and EMEA drive volume, APAC presents strong high-value potential, especially in markets like Japan.



### Loyalty Program Performance Overview (2019–2022)  
<!--
- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)

![](Images/loyalty%20-%20per%20total%20sales.png)

Image: loyalty program vs non loyalty over time 

**Loyalty member sales experienced a dramatic surge during the pandemic**, positioning the program as a major contributor to TechHub's revenue growth.

- **Explosive Growth in 2020:** Loyalty sales jumped 638%, from $415K in 2019 to $2.96M in 2020, outpacing non-loyalty growth by over 500%. This increase was driven primarily by a 6x increase in order volume (from 2K to 13K), with a smaller 9% lift in average order value (AOV).  

- **Sustained Momentum in 2021:** Loyalty sales grew an additional 63% year-over-year, while non-loyalty sales declined by 40%. This divergence suggests that loyalty members were more resilient in their purchasing behavior post-peak pandemic.  

- **2022 Decline Reflects Market Normalization:** Both groups saw a 45% drop in revenue in 2022 as overall demand normalized, but loyalty still outperformed, generating $2.7M vs. $2.2M from non-loyalty customers.   

- **Stabilizing Effect on AOV:** Loyalty members consistently maintained a more stable AOV over time. In 2020, their AOV trailed non-loyalty members but gradually reversed—by 2022, loyalty AOV exceeded non-loyalty ($245 vs. $215). This indicates that loyalty members helped buffer the broader decline in AOV seen among non-loyalty shoppers post-COVID.


<!-- From 2019 to 2022, non-loyalty customers generated higher overall revenue for TechHub—approximately $17.1M across ~62K orders, with an average order value (AOV) of $275—compared to loyalty members, who brought in ~$10M from ~46K orders with a lower AOV of $240.However, loyalty members demonstrated stronger year-over-year growth and greater consistency. Loyalty revenue surged 614% from 2019 to 2020 (from ~$415K to ~$2.97M), followed by another 64% increase in 2021. In contrast, while non-loyalty revenue also grew significantly from 2019 to 2020 (108%, from ~$3.4M to ~$7.1M), it declined sharply after 2020 and continued to fall through 2022. By 2021, loyalty members contributed more than half of total annual revenue (53%), rising to 55% in 2022 — a trend mirrored in order volume. Loyalty AOV also surpassed that of non-loyalty customers in 2022 ($245 vs. $215), despite broader post-pandemic spending declines.These trends suggest loyalty members are emerging as TechHub’s most stable and valuable customer segment. Further analysis of program costs, regional distribution, and acquisition channels (e.g., marketing platforms) is recommended, but early evidence supports continued investment in the loyalty program to capitalize on its resilience and long-term growth potential.-->

<!--
### Refund Rates by Apple Product

- [ ] Explain findings in detail, highlighting key trends, anomalies / outliers, and comparisons
- [ ] Include clean visuals (pivot tables, dashboards, graphs)

The [average e-commerce return rate for electronics](https://www.richpanel.com/blog/ecommerce-return-rates) is 8.28%. Apple products experienced the highest refund rates in 2020, peaking at 10%, with no recorded refunds in 2022. The sharp decline in 2021 and the complete disappearance of refunds in 2022 may indicate potential data quality issues. This should be validated with the Payments team. Including 2022 (and its lack of refunds) Apple refund rates averaged 10% - which is still above the typical e-commerce return rate for electronics. Limiting the scope to just 2020 - 2023, shows an even higher average return rate at 13%.

If the data is complete, refund trends could reflect external factors, such as COVID-19 and the global chip shortage, which may have affected product quality and return rates. However, timelines would need to be cross-verified, as the observed refund patterns may not fully align with the typical impact period of the chip shortage.

#### Key Refund Trends by Apple Product

**MacBook Air Laptops | 11% Average refund rate**  
2019: 18% (67/366 orders)
2020: 17% (311/1845 orders)
2021: 4% (75/1185 orders)
2022: 0% (Potential data issue)

MacBook Air consistently had the highest refund rates among Apple products. Given its high average order value (AOV) and substantial revenue contribution, it’s recommended to confirm that data integrity is intact and to monitor for potential product quality concerns that could impact revenue.

**Apple iPhones | 8% Average refund rate**  
2019: 11% (5/46 orders)
2020: 11% (13/213 orders)
2021: 5% (4/76 orders)
2022: 0% (Potential data issue)

While refund rates for iPhones were notable, overall sales volume was low, which limits the conclusions we can draw about product quality or customer satisfaction.

**Apple AirPods Headphones | 5% Average Refund Rate**  
2019: 6% (545/8575 orders)
2020: 10% (1529/15998 orders)
2021: 4% (634/15255 orders)
2022: 0% (Potential data issue)

AirPods refunds peaked in 2020, following a similar decline as other Apple products in 2021 and disappearing in 2022.

<!-- Apple products experienced the highest refund rates among TechHub’s offerings, particularly during the pandemic. Refund rates peaked in 2020 at 10%, exceeding the industry benchmark of 8.28% for electronics. Rates declined sharply in 2021 and dropped to 0% in 2022, which may indicate incomplete data and should be validated with the Payments team. Even with 2022 included, the average refund rate for Apple products remained elevated at 10%; excluding it, the rate climbs to 13%.

Among individual Apple products, the MacBook Air had the highest average refund rate at 11%, with particularly high rates in 2019 and 2020 (18% and 17%, respectively), suggesting a need to monitor product quality given its high AOV. iPhones followed with an 8% average refund rate, though their low sales volume limits insight. AirPods, the most frequently purchased product, had a 5% average refund rate—peaking at 10% in 2020 before trending downward. While these trends may reflect pandemic-era supply chain disruptions or quality issues, further validation is needed to ensure data completeness before drawing definitive conclusions. -->

## Recommendations 
<!-- - [ ] bulleted list, split into sections -->
Focus on long-term growth strategies that build on post-pandemic order trends and encourage customer retention. Based on the insights above, the following actions are recommended:

- **Maintain strong order volumes to sustain the 28% revenue growth achieved since 2019.**
  - Prioritize the NA and EMEA regions, which account for 81% of total order volume - especially top performing countries within those regions including the United States, 

- **Optimize sales and expand market presence in high-AOV countries and regions like APAC.**
  - Focus on APAC countries that show both high AOV and meaningful order volume to build on existing traction efficiently.
  - For example, Japan has an AOV of $393—51% above the global average—and ranks 4th in total sales, indicating strong revenue potential.
  - Similarly some higher AOV countries in EMEA show promise like: 
  - Product suggestions: Promote our most premium products like MacBook Airs and ThinkPads in these high-value markets to maximize return.

<!-- **Conduct further analysis of the loyalty program to assess its long-term impact.**
  - The loyalty program showed significant growth and promising performance from 2019 - 2022 but more analysis will be needed to assess long-term impact.
  - Continue close of monitoring loyalty trends to ensure post-pandemic growth is sustained.
  - It's recommended that further analysis loyalty program be done - specifically, it's effectiveness at converting first-time buyers into repeat customers, to determine it's promise as a long term growth option.
  - It's also recommended that loyalty program performance be analyzed across other influencial dimensions like marketing channelto identify any additional drivers or influences on customer retention.

- **Investigate gaps in refund data and uncover potential drivers of product returns.**

  - Work with the payments team to surface missing refund data or - if needed, the data engineering team — to determine the scope and root cause of missing refund data.
  - Evaluate whether historical data can be recovered or implement a long-term solution to prevent future collection issues.
  - Partner with product and operations teams to uncover reasons for Apple product return — especially high-AOV items like MacBook Airs — potentially using sources like customer surveys and repair ticket trends.
-->

## Assumptions & Caveats
<!--(bullets)
- [ ] List any assumptions you made throughout the project or caveats about data issues -->

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

- Missing country records were excluded from global distribution analysis.

- Missing and nonsensical order dates were excluded from overall sales trends analysis.

- It is assumed that 2022 refund data is incomplete or inaccurate, as it's highly unlikely that no refunds were recorded for any products throughout the entire year.

<!--
⚠️ Caveats
This analysis assumes that order and refund data is complete and accurate. For products like the Bose headphones, inconsistent data makes it difficult to tell whether performance issues are real or due to tracking errors. Likewise, the relatively small number of returns tracked for the Apple iPhone limits our ability to confidently assess product quality or customer sentiment. Additionally, external events like COVID-19 and the global chip shortage played a major role in shaping purchasing behavior—especially in 2020—so not all trends are likely to continue post-pandemic.
-->

*One exception to this trend in increased AOV was December 2019, when AOV declined by -7%, diverging from typical seasonal behavior—possibly due to early pandemic uncertainty that affected consumer confidence and purchasing patterns.