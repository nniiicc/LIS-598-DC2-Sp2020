# Tables, Trees, and Triples

**Why can't you just tell us the right answer?**
Susan Leigh Starr once famously wrote that "Information science is the study of boring things." ^[A Bunch of things I think] As a field of practitioners and researchers we're often concerned with the organizaiton and encoding of information, as well as the standards and practices that govern reliable knowledge production. These concerns just as often require us to study and become versant in particular details of how information is represented within broader information systems and infrastructures. An information infrastructure is, by Starr's description, highly relational. For one person a piece of software might simply be something that they manage and interact with as code on their desktop. For another person, this code runs the repository that manages, preserves, and provides access to their data. The ability to imagine and understand the related nature of information and infrastructures is, in my mind, paramount to being an effective data curator.


There is a soundbite that you may come across in the data curation community the goes something like this:

> One person's metadata is another person's data.  

What this quote is getting at is the exactly what Starr meant by the relational nature of infrastructure. That is, all data are contextual - they mean different things to different people at different points in time. The definition we use om DC I and II recognizes this through the idea of types and roles.  

As we begin to engage with topics for DC II it's important to keep this idea of the relational nature of data and infrastructures in the back of our minds. Many of the decisions you'll face in data curation don't have a right or a wrong answer. They have certain approaches which are more valuable or useful given

As we come to the conclusion of the quarter I'll try to reemphasize places where readings, discussions, and lectures have provided helpful ways to toggle back and forth from the immediate "boring" details of data curation, and the broader conceptual settings where these "boring things" become salient.

A fundamental (and perhaps boring to some) concept we should start to grapple with is



## Trees

### XML vs JSON - The holy war of Information Science

On the other hand, if you have typical a hierarchy of objects and you want to represent them in a stream, JSON is better suited to this task than a markup language. This is, partially, because JSON treats an object as *independent* from any kind of semantic meaning that humans might reliably expect that object to have. Removing this semantic (or contextual) meaning has both affordances and limitations. By keeping objects "dumb" we have the ability compute (that is retrieve, reorder, and repurpose) against objects efficiently. [Note: If you come from a computer science background you may recognize this as the concept of `object oriented` programming]

Let's take a simple example of Homer Simpson and his relatives ^[I borrowed this example from a [Stack Overflow](https://stackoverflow.com/questions/2620270/what-is-the-difference-between-json-and-xml) discussion that has been raging for over 9 years... If you search hard enough you'll probably be able to find my own contribution to this debate, but I don't encourage it :)].

In JSON we could represent this information in the following way:

```
{
    "firstName": "Homer",
    "lastName": "Simpson",
    "relatives": [ "Grandpa", "Marge", "The Boy", "Lisa", "I think that's all of them" ]
}
```


The same information, when represented in a strict hierarchical form like XML looks like this:

```
<Person>
    <FirstName>Homer</FirstName>
    <LastName>Simpsons</LastName>
    <Relatives>
        <Relative>Grandpa</Relative>
        <Relative>Marge</Relative>
        <Relative>The Boy</Relative>
        <Relative>Lisa</Relative>
        <Relative>I think that's all of them</Relative>
    </Relatives>
</Person>
```

Just looking at the syntax we can see that JSON is more efficient. We have less lines and fewer assignments necessary to represent the same information. Practically, we also can think about how we would retrieve any content from this representation and the efficiency of our computers to do so. In the XML, if we wanted to retrieve the fourth relative `Lisa` from this list we would have to quite literally read each line until we came to the fourth `<Relative>` syntax marker.



---

## Readings
Our readings this week are from the W3C standard for `Data on the Web`. W3C is the World Wide Web Consortium - the main standardization organization for web technologies. In 2017 a working group of experts in data curation came together to develop a set of best practices for structuring, publishing, and making data on the web accessible. T  

- Lóscio et al (2017) Data on the Web - Best Practices. https://www.w3.org/TR/dwbp/
- Read one additional Data on the Web - Use Case from this list: https://www.w3.org/TR/dwbp-ucr/

In future weeks we will use the Data on the Web primer for activities related to our data curation protocol - so be sure to refer back to this content when we begin that process.

## Exercise
Chances are if you are quarantined in your home (Spoiler: We are!) you have taken up a new hobby to preoccupy yourself. Maybe this is something productive like knitting or pilates. Maybe it is something like baking sourdough bread (Spoiler: So is the rest of the internet!). In preparation for our class on `Tidy Data` next week we will attempt to add some structure to a rather innocuous piece of information that is published to the web and that you're likely to be encountering with your new found quarantine hobby: Chocolate Chip Cookie recipes.

This [infographic](https://d3vjjov8ymzzxi.cloudfront.net/chefsteps-com-files/chefsteps-cookie-table.pdf) from ChefSteps provides a "parametric" explanation of different approaches to making a chocolate chip cookie ^[[Jenny Bryan](https://jennybryan.org/about/) pointed out this example and provided the data we will use next week in our `Tidy Data` exercise].

Your assignment for next week is to look at the infographic, and choose one cookie. Decide how you would structure the information in this graphic so that it could be interpretable in a table form - that is, each cookie has set of attributes and values that follows a common scheme. This scheme can likely be applied to any cookie and its recipe. There is already a good deal of structure to this data, but there are some very strange and confusing choices in the values that will complicate choosing a common structure. Do your best to come up with a structure that seems generalizable to any cookie.
   
