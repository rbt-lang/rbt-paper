Query Combinators
=================

[Draft of December 14, 2016](./pdf/rbt-paper-2016-12-14.pdf)

We introduce *Rabbit*, a combinator-based query language.  Rabbit is designed
to let data analysts and other *accidental programmers* query complex
structured data.

We combine the functional data model and the categorical semantics of
computations to develop denotational semantics of database queries.  In Rabbit,
a query is modeled as a Kleisli arrow for a monadic container determined by the
query cardinality.  In this model, monadic composition can be used to navigate
the database, while other *query combinators* can aggregate, filter, sort and
paginate data; construct compound data; connect self-referential data; and
reorganize data with grouping and data cube operations.  A context-aware query
model, with the input context represented as a comonadic container, can express
query parameters and window functions.  Rabbit semantics enables pipeline
notation, encouraging its users to construct database queries as a series of
distinct steps, each individually crafted and tested.  We believe that Rabbit
can serve as a practical tool for data analytics.

