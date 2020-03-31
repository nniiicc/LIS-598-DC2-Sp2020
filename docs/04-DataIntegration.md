# Data Integration

## Chapter

## Lecture

## Readings
Data integration is a topic that can be incredibly complex, and much of the published literature fails to make this an approachable or even realistic read for a course like DC II. So, you get a pass on readings this week. The chapter is the only thing you are required to read. However, let me make a plug for the Wikipedia article on [data integration](https://en.wikipedia.org/wiki/Data_integration) - this is a phenomenal overview that should compliment my writing above.

If you are interested in the history of this topic from the perspective of databases I also highly recommend the following:

- Halevy, A., Rajaraman, A., & Ordille, J. (2006, September). Data integration: The teenage years. In Proceedings of the 32nd international conference on Very large data bases (pp. 9-16). [PDF](https://www.cin.ufpe.br/~if696/referencias/integracao/_Data_Integration-The_Teenage_Years.pdf)

For a bit of historical background, Ch 1 of this book (pages 1-13) provides an excellent overview of how data were originally made compliant with web standards:

- Abiteboul, S., Buneman, P., & Suciu, D. (2000). Data on the Web: from relations to semistructured data and XML. Morgan Kaufmann. [PDF](https://homepages.dcc.ufmg.br/~laender/material/Data-on-the-Web-Skeleton.pdf)

## Exercise
The exercise this week comes from an interesting analysis of New York City 311 data by [Chris Whong](https://t.co/J7X3FMUvQc?amp=1). What he observes is a 1000% increase in "Consumer Complaint" 311 requests since the first recorded case of Covid-19 infection in NYC. This is not without some important external conditions - After this recorded infection there was a more concerted effort by NYC residents to stockpile supplies. Having heard numerous informal complaints of price-gouging the city recommended that consumers report businesses using a 311 hotline.

A simple graph makes this more compelling than the narrative description - we see a huge spike in complaints beginning March 1st.
![](https://pbs.twimg.com/media/ETapolDX0AAt9Ye?format=png&name=900x900)

As savvy data curators, we might ask whether or not this trend holds across cities throughout the USA.  And at its core, this is a data integration challenge. IF we can find other city's 311 data we should be able to reliably compare rates of 311 complaints over time. The challenge will be finding data that has the same kinds of variables, and normalizing values to have a one to one comparison between cities.

Lucky for us, there is an existing repository of [311 city data](https://andrew-friedman.github.io/jkan/datasets/).

Your exercise this week is to choose two cities from this repository and attempt to integrate a subset of their data. This will be challenging. Here are my recommendations:

- Choose cities that have "up-to-date" data
- Subset this data so that it only includes 311 complains from March 1 forward
- Try to eliminate any unnecessary variables from your dataset. That is - we don't need all of the information about the data - we only need a record of the complaint and the date.

What to turn in:

- Provide us a table of your data from two cities (a Google Sheet or Excel document is fine). If you are able to integrate the data, provide just one sheet. If you cannot - give us two separate sheets.
- Provide an explanation (1 paragraph) of which cities you selected, what you tried to integrate the data, and why this was or was not challenging.
- You do not need to create a graph or any form of analysis - but if you do it would be very interesting to see your results!

