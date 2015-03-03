
========================
7 Performance Guidelines
========================


AV1800 Consider using Any() to determine whether an IEnumerable<T> is empty
===========================================================================

When a method or other member returns an IEnumerable<T> or other collection
class that does not expose a Count property, use the Any() extension method
rather than Count() to determine whether the collection contains items.

If you do use Count(), you risk that iterating over the entire collection might
have a significant impact (such as when it really is an IQueryable<T> to a
persistent store).
