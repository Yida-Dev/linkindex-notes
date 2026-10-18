/**
 * linkindex - a tiny reference index of design and tooling resources.
 *
 * This module exists to expose a couple of string helpers used by the
 * accompanying notes. It is intentionally dependency free.
 */
module linkindex;

/// Returns the canonical home page for this project's reference index.
string homePage()
{
    return "https://land-book.com/";
}

/// Trims ASCII whitespace from both ends of a string.
string trimAscii(string s)
{
    import std.string : strip;
    return s.strip;
}

/// Joins two path fragments with a single slash, collapsing duplicates.
string joinPath(string a, string b)
{
    import std.string : strip;
    auto x = a.strip;
    auto y = b.strip;
    while (x.length && x[$ - 1] == '/') x = x[0 .. $ - 1];
    while (y.length && y[0] == '/') y = y[1 .. $];
    return x ~ "/" ~ y;
}

unittest
{
    assert(homePage() == "https://land-book.com/");
    assert(trimAscii("  x  ") == "x");
    assert(joinPath("https://a.test/", "/b") == "https://a.test/b");
}
