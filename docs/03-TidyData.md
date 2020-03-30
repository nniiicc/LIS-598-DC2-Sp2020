# Tidy Data

Chapter forthcoming

## Lecture

## Readings

**Required**
- Rowson and Munoz (2016) Against Cleaning: http://curatingmenus.org/articles/against-cleaning/
- Wickham, H. (2014), “Tidy Data,” Journal of Statistical Software, 59, 1–23 https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf (Optional - same article with more code and examples https://r4ds.had.co.nz/tidy-data.html)

**Optional**

Extending tidy data principles:
- Tierney, N. J., & Cook, D. H. (2018). Expanding tidy data principles to facilitate missing data exploration, visualization and assessment of imputations. arXiv preprint arXiv:1809.02264. (There are a number of very helpful R examples in that paper)
- Leek (2016) Non-tidy data https://simplystatistics.org/2016/02/17/non-tidy-data/

Reading about data structures in spreadsheets
- Broman, K. W., & Woo, K. H. (2018). Data organization in spreadsheets. The American Statistician, 72(1), 2-10.  https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989

Teaching or learning through spreadhseets:
- Tort, F. (2010). Teaching spreadsheets: Curriculum design principles. arXiv preprint arXiv:1009.2787.

Spreadsheet practices in the wild:
- Mack, K., Lee, J., Chang, K., Karahalios, K., & Parameswaran, A. (2018, April). Characterizing scalability issues in spreadsheet software using online forums. In Extended Abstracts of the 2018 CHI Conference on Human Factors in Computing Systems (pp. 1-9).

Formatting data tables in spreadsheets
- [Data Carpentry lesson](https://datacarpentry.org/2015-05-03-NDIC/excel-ecology/01-format-data.html)

## Exercise
Last week we looked at an [infographic](https://d3vjjov8ymzzxi.cloudfront.net/chefsteps-com-files/chefsteps-cookie-table.pdf) from ChefSteps that provided a "parametric" explanation of different approaches to making a chocolate chip cookie. This week - I present to you the [data](https://docs.google.com/spreadsheets/d/11H6XGUWNVAsIbtUHCrjFsk4iLViELHG4CZKmQEyyWSA/edit#gid=0) behind behind this infographic.

This is an incredibly "untidy" dataset. There are a number of ways we could restructure this data so that it follows some best practices in efficient and effective reuse. Your assignment is as follows:

1. Return to your assignment from last week. How well did your structuring of the information match this actual dataset? (Hopefully you structure was tidier)
2. Take a few moments to look through the dataset, and figure out exactly what information it is trying to represent, and what is problematic about this presentation.
3. Come up with a new structure. That is, create a tidy dataset that has rows, columns, and values for each of the observations (cookies) that are represented in this dataset. You can do this by either creating a copy of the Google Sheet, and then restructuring it. Or, you can simply create your own structure and plug in values from the original dataset.
4. When your sheet is restructured, share it with us (a link to your Google Sheet is fine) and provide a brief explanation about what was challenging about tidying this dataset.
