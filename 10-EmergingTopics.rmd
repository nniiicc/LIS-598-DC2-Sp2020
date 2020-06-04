# Emerging Topics

## Data Curation Future Directions
The final chapter in our coursebook describes future in data curation. As we've discussed throughout the quarter - data curation is a fast moving field that responds to emerging needs of data producers, consumers, and users. Many emerging topics in data curation are beyond the scope of a 10 week quarter, but are worthy of our time and attention. Below, I cover some interesting topics and provide resources that you can use for future reference.

These are also not just my thoughts - [I asked friends and collaborators to tell me what emergent topics they thought were most important for the future of data curation](https://twitter.com/nniiicc/status/1266069650359500800?s=20). Below are their responses (and my own thoughts).

## Ontologies for Linked Data
In our previous chapter on linked data I described a rapidly evolving "cloud" or graph of linked data published to the web. Linked data are often governed by formal ontologies or vocabularies that include class, sub-class, properties and instances of data. These formalisms allow for data to follow a common markup (a standard), and these standards in turn enable relationships between data to be formally expressed and acted upon by machines.

The difference between a "vocabulary" and an "ontology" is often, ironically, semantic - ontologies are really just formal vocabularies that give linked data practitioners standard terms to define subjects, objects, and predicates for markup of data. As the [W3C notes](https://www.w3.org/standards/semanticweb/ontology) "There is no clear division between what is referred to as “vocabularies” and “ontologies”. The trend is to use the word “ontology” for more complex, and possibly quite formal collection of terms, whereas “vocabulary” is used when such strict formalism is not necessarily used or only in a very loose sense. Vocabularies are the basic building blocks for inference techniques on the Semantic Web."

Even though I argued in our previous chapter that the semantic web has failed in many respects - where this field has succeeded is in providing useful ontologies for common data on the web. In the example I used for Austin, TX the ontology that powered our linked data was `DbPedia`. By providing for standard ways to mark-up the subject, object, and predicates for Austin, TX we were able to use simple declarations to query DbPedia to find the population of Austin, TX without having to explicitly state this factual information. In practice, this markup looked like the following:

```
<http://dbpedia.org/resource/Austin,_Texas>
<http://xmlns.com/foaf/0.1/based_near>
<http://sws.geonames.org/4671654/austin.html>
```

In terms of linked data - what we used were namespaces from the ontology that were defined on the web. If you click on the first namespace - you see all of what DbPedia knows about Austin, TX.

This allows for a plain language statement like "Austin has a population of 964,254" to take on a machine-readable statement like the following:

- Subject <http://dbpedia.org/resource/Austin,_Texas> 
- Predicate: dbo:PopulatedPlace/populationDensity 
- Object: 964,254

The key here is that DbPedia provided the subject and predicate statements - that is we used a `resource` in DbPedia to describe a particular place (Austin, TX) and we used a predicate from the ontology `dbo:PopulatedPlace/populationDensity` to connect the Subject to an Object (the actual population of Austin, TX). Our machines can interpret and know this semantic information simply through syntax. The ontology does all of the work in defining what a resource is, what a predicate means, and what the resulting object value is. 

Ontologies are rigid in that they require very specific syntax, but they are also incredibly powerful in that they provide for so much of the standardized factual information we expect (and know) to already exist on the web. DbPedia is just one node in the emerging linked data graph. By understanding and using ontologies of linked data, as we discussed last week, we can connect our data (however locally specific it may be) to this web of information. The key to really understanding and using ontologies effectively is to know which ones exist, and to master their syntax. 

Here are some resources to continue exploring linked data and ontologies: 

- W3C [description of ontologies](https://www.w3.org/standards/semanticweb/ontology)
- Bennett, M., & Baclawski, K. (2017). The role of ontologies in linked data, big data and semantic web applications. Applied Ontology, 12(3-4), 189-194. This provides a critical but helpful overview of the role of ontologies in linked data [PDF](https://content.iospress.com/download/applied-ontology/ao185?id=applied-ontology%2Fao185)
- Munir, K., & Anjum, M. S. (2018). The use of ontologies for effective knowledge modelling and information retrieval. Applied Computing and Informatics, 14(2), 116-126. [PDF](https://www.sciencedirect.com/science/article/pii/S2210832717300649)
- A handy [Linked Data Glossary](https://www.w3.org/TR/ld-glossary/)
- A very accessible and searchable list of [Linked Data Ontologies](https://lov.linkeddata.es/dataset/lov/vocabs)

## Sensitive Data & Privacy
The curation of data containing sensitive contents, including personally identifiable information (PII), is an emerging challenge for curators. As more personal data is collected there are increasingly valuable applications for responsibly using PII to generate valuable knowledge. Here are two emergent examples that are worthy of our attention: 

- Contact tracing: You have likely been hearing about or reading proposals for automated contact tracing in response to the Covid-19 viral outbreak. At the heart of these discussions is how to reliably store, and provide access to personally identifiable information so that public health officials can reliably intervene in cases where an infected person is identified. The tradeoff between identification and anonymity is a difficult one to balance. It requires that we design decentralized data storage architectures that can reliably encrypt PII, and trust that only those with proper credentials have access to resolve queries against these data stores. Decentralization is an incredibly complex problem in all web-based technolgoies that depend upon personal data and will be a topic that continues to play an important role in future curation work. 
- - This is a very good recent paper on the topic: Li, T., Faklaris, C., King, J., Agarwal, Y., Dabbish, L., & Hong, J. I. (2020). Decentralized is not risk-free: Understanding public perceptions of privacy-utility trade-offs in COVID-19 contact-tracing apps. arXiv preprint arXiv:2005.11957. https://arxiv.org/pdf/2005.11957.pdf 

- Census Data: The 2020 census will be the latest in what are regular full surveys of the United States population. The census is key for accurate counts of people, their mobility, and for policymaking. The census is also a key source of demographic data about the USA- used broadly in social science, epidemiology, and legal scholarship. As such, access to reliable administrative micro-data (for example, responses household level census surveys) is critical for research and development. In the past, a network of census data centers was set up to provide access to the most restricted of these data sources. The 2020 census data will be the first to release sensitive data using a process of differential privacy - an encryption algorithm that obscures personally identifiable information but provides statistically sound micro-data to researchers. The 2020 census is also the largest and most sophisticated use of differential privacy to date. This will provide an incredible use case for how data curators might design, and effectively govern the release of sensitive data, and will likely result in many accessible tools and services for 2020 census data. 

If you read just one thing about the census and differential privacy I highly encourage the following primer: 

- Nissim, K., Steinke, T., Wood, A., Altman, M., Bembenek, A., Bun, M., ... & Vadhan, S. (2017, June). Differential privacy: A primer for a non-technical audience. In Privacy Law Scholars Conf. https://privacytools.seas.harvard.edu/files/privacytools/files/pedagogical-document-dp_0.pdf


## Emulation
Throughout the quarter we have discussed the transformation of data from closed or proprietary formats to open formats (or plain text encodings) which enable data to be reliably reused across different computing environments. There are typically two ways to achieve these transformations: Migration and Emulation. 

Migration is, quite simply, the reformatting of data - which depends upon moving content encoded in one standard to another (e.g. Excel to CSV).

In digital preservation an alternative approach to format migration is the practice of emulation. Emulation is, broadly, the reproduction of a computing environment in which a data format is rendered. This allows software or a program to be used in any hardware or computing environment.

Most of us have experienced emulation in the context of legacy video games. For example, when we play a version of ["Super Mario Bros" in a browser](https://supermarioemulator.com/mario.php) this is the emulation of the original Nintendo console. This allows us to port the functions of Nintendo to our contemporary computing hardware. We no longer need an actual Nintendo console to play the games that were originally developed for that hardware.

Similarly, emulation is being developed for interacting with and using software that is necessary for reproducing analyses, interacting with research artifacts (e.g. simulations or dynamic graphs), and rendering data. Emulation was once exceptionally difficult and prohibitively expensive to develop, but is being made easier by what are called "containers" or "virtual machines" that allow for anyone to reproduce a computing environment in which data were analyzed and used.

Examples and further reading on Emulation:

- Yale's Emulation as a Service https://web.library.yale.edu/emulation
- Code Ocean and the ability to "push a button" and rerun someone's analysis is a good example of emulation as a service for research data. This is a good [webinar video](https://codeocean.com/webinar/editor) on the topic.
- Adam McMaster has a nice [general blog post on using containers for research](Why you should use Docker in your research).

## Advocacy and Solidarity Through Data Curation
This has been a tough quarter, and it is coming to an end during a period of exceptional upheaval at systems that are deeply broken. Throughout this coursebook I have tried to inject relevant content in the examples used, but this has at time fallen far short of what should be a course that equips you with skills to advocate and work on behalf of just outcomes. My goal has been to equip you with the skills necessary to carry out curation in future positions.

When I approach topics like 311 data, or search and discovery of data through web technologies - it is informed by and grounded in the work of data justice, equity, and ultimately advocacy. I wish, in many ways, that I had the ability to give you greater exposure to these topics while simultaneously introducing key concepts in practical curation work - but within the quarter system that is exceptionally difficult. This is a poor excuse. I am committed to trying to do better at this in future. A parting "mention" of these topics is far from what you deserve, and I hope that in the future some of you will be my collaborators in trying to improve this aspect of the course. Below I mention just two areas that deserve far more attention within the curation curriculum. 

If you continue on at the iSchool I strongly recommend courses taught by my brilliant colleagues Megan Finn, Miranda Belarde-Lewis, Clarita Lefthand Begay, Marika Cifor, Jason Yip, and Anna-Lauren Hoffman. A few that I recommend in particular are :

- LIS 583 Cross Cultural Approaches to Leadership (Belarde-Lewis)
- LIS 577 Participatory Design in Libraries (Yip)
- INFO 498 - Data Ethics (Hoffman)
- INFO 402 - Gender, Race, and IT (Cifor)
- INFO 350 - Information Ethics and Policy (Finn)

### Data Feminism & Activism
I can't say this any better than the blurb for a book authored by Catherine D'Ignazio and Laren F Klein "Today, data science is a form of power. It has been used to expose injustice, improve health outcomes, and topple governments. But it has also been used to discriminate, police, and surveil. This potential for good, on the one hand, and harm, on the other, makes it essential to ask: Data science by whom? Data science for whom? Data science with whose interests in mind? The narratives around big data and data science are overwhelmingly white, male, and techno-heroic. In Data Feminism, Catherine D'Ignazio and Lauren Klein present a new way of thinking about data science and data ethics—one that is informed by intersectional feminist thought."

Through a critical lens that takes seriously the role of [fourth wave feminism](https://en.wikipedia.org/wiki/Fourth-wave_feminism) this book, and the advocacy around data feminism, should be a central place to locate the role of curation in contemporary society. The ability to structure, organize, and encode data cannot (as we have discussed throughout the quarter) be divorced from broader societal and institutional forms of power. By approaching these topics of curatorial power rooted in a historical understanding of oppression and civil liberties we might be able to, regardless of our identity and positionally, be more effective allies. I don't presume to know how, given varied contexts, to do this most effectively, yet. But the emergent scholarship around data feminism is an excellent place to begin.     

Here are some resources to get started: 

- You can read a draft of the book 'Data Feminism' on Publon here https://bookbook.pubpub.org/data-feminism
- A brief blogpost and a podcast with the authors can be found here https://datasociety.net/library/data-feminism/
- Another podcast which goes into greater theoretical depth with the authors https://podcasts.apple.com/us/podcast/catherine-dignazio-lauren-klein-data-feminism-mit-press/id593872749?i=1000467308855
- Feminist Data Manifest-No (Organized and led by iSchool professor Marika Cifor) https://www.manifestno.com/
- Another execellent and relevant book is - Christina Dunbar-Hester "Hacking Diversity: The Politics of Inclusion in Open Technology Cultures"

### Data For Black Lives
Straightforwardly - many of the systems of observation and enumeration in state-based data collection are deeply biased against people of color. From the use of flawed [algorithmic systems](https://undark.org/2020/06/01/michigan-unemployment-fraud-algorithm/) in unemployment benefits to the facial recognition technologies that are employed with deep biases related to [black faces](https://www.wired.com/story/best-algorithms-struggle-recognize-black-faces-equally/). 

Perpetuating discriminatory policies through technologies that collect and are trained on imperfect data about people of color is a multi-faceted problem. Overcoming and effectively dismantling these flawed technologies requires effective policy development, legal expertise, and ethically trained data professionals. There is no simple way in which we can educate, legislate, or adjudicate our way out of the biases of technologies that are being increasingly used for harm. As data curators our role is first to become informed about the ways in which both technologies for data collection, and resulting data do harm. Second, we can begin to intervene where our skills and our expertise is appropriate. This will likely include volunteering our time to investigate and describe problems related to data encodings, efficient data processing, and documentation which surfaces bias and attempts to clarify why data are never neutral. 

Here are some relevant resources to get started (or continue): 

- Data 4 Black Lives http://d4bl.org/
- Covid tracking by Race https://covidtracking.com/race/dashboard
- Black Software: The Internet & Racial Justice, from the AfroNet to Black Lives Matter (not expressly about data, but a beautiful overview of the history of technology in the context of a connected web of information communication technologies) [Book](https://global.oup.com/academic/product/black-software-9780190863845?cc=us&lang=en&) + [Podcast](https://stackoverflow.blog/2019/12/03/podcast-black-software-charlton-mcilwain/)
- Algorithmic Advocacy Toolkit [Website](https://www.aclu-wa.org/AEKit)
- An excellent example of data advocacy is the [Mapping Police Violence](https://mappingpoliceviolence.org/) project. You can see their data documentation here: https://mappingpoliceviolence.org/aboutthedata 

