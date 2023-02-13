class BookModal {
  Feed? feed;

  BookModal({this.feed});

  BookModal.fromJson(Map<String, dynamic> json) {
    feed = json['feed'] != null ? Feed.fromJson(json['feed']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (feed != null) {
      data['feed'] = feed!.toJson();
    }
    return data;
  }
}

class Feed {
  String? xmlLang;
  String? xmlns;
  String? xmlnsDcterms;
  String? xmlnsThr;
  String? xmlnsApp;
  String? xmlnsOpensearch;
  String? xmlnsOpds;
  String? xmlnsXsi;
  String? xmlnsOdl;
  String? xmlnsSchema;
  String? xmlnsOpf;
  Id? id;
  Id? title;
  Id? updated;
  Id? icon;
  Author? author;
  List<Link>? link;
  Id? opensearchTotalResults;
  Id? opensearchItemsPerPage;
  Id? opensearchStartIndex;
  List<Entry>? entry;

  Feed(
      {this.xmlLang,
      this.xmlns,
      this.xmlnsDcterms,
      this.xmlnsThr,
      this.xmlnsApp,
      this.xmlnsOpensearch,
      this.xmlnsOpds,
      this.xmlnsXsi,
      this.xmlnsOdl,
      this.xmlnsSchema,
      this.xmlnsOpf,
      this.id,
      this.title,
      this.updated,
      this.icon,
      this.author,
      this.link,
      this.opensearchTotalResults,
      this.opensearchItemsPerPage,
      this.opensearchStartIndex,
      this.entry});

  Feed.fromJson(Map<String, dynamic> json) {
    xmlLang = json['xml:lang'];
    xmlns = json['xmlns'];
    xmlnsDcterms = json['xmlns\$dcterms'];
    xmlnsThr = json['xmlns\$thr'];
    xmlnsApp = json['xmlns\$app'];
    xmlnsOpensearch = json['xmlns\$opensearch'];
    xmlnsOpds = json['xmlns\$opds'];
    xmlnsXsi = json['xmlns\$xsi'];
    xmlnsOdl = json['xmlns\$odl'];
    xmlnsSchema = json['xmlns\$schema'];
    xmlnsOpf = json['xmlns\$opf'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    title = json['title'] != null ? Id.fromJson(json['title']) : null;
    updated = json['updated'] != null ? Id.fromJson(json['updated']) : null;
    icon = json['icon'] != null ? Id.fromJson(json['icon']) : null;
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    if (json['link'] != null) {
      link = <Link>[];
      json['link'].forEach((v) {
        link!.add(Link.fromJson(v));
      });
    }
    opensearchTotalResults = json['opensearch\$totalResults'] != null
        ? Id.fromJson(json['opensearch\$totalResults'])
        : null;
    opensearchItemsPerPage = json['opensearch\$itemsPerPage'] != null
        ? Id.fromJson(json['opensearch\$itemsPerPage'])
        : null;
    opensearchStartIndex = json['opensearch\$startIndex'] != null
        ? Id.fromJson(json['opensearch\$startIndex'])
        : null;
    if (json['entry'] != null) {
      entry = <Entry>[];
      String type = json['entry'].runtimeType.toString();
      if (type == 'List<dynamic>') {
        json['entry'].forEach((v) {
          entry!.add(Entry.fromJson(v));
        });
      } else {
        entry!.add(Entry.fromJson(json['entry']));
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['xml:lang'] = xmlLang;
    data['xmlns'] = xmlns;
    data['xmlns\$dcterms'] = xmlnsDcterms;
    data['xmlns\$thr'] = xmlnsThr;
    data['xmlns\$app'] = xmlnsApp;
    data['xmlns\$opensearch'] = xmlnsOpensearch;
    data['xmlns\$opds'] = xmlnsOpds;
    data['xmlns\$xsi'] = xmlnsXsi;
    data['xmlns\$odl'] = xmlnsOdl;
    data['xmlns\$schema'] = xmlnsSchema;
    data['xmlns\$opf'] = xmlnsOpf;
    if (id != null) {
      data['id'] = id!.toJson();
    }
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (updated != null) {
      data['updated'] = updated!.toJson();
    }
    if (icon != null) {
      data['icon'] = icon!.toJson();
    }
    if (author != null) {
      data['author'] = author!.toJson();
    }
    if (link != null) {
      data['link'] = link!.map((v) => v.toJson()).toList();
    }
    if (opensearchTotalResults != null) {
      data['opensearch\$totalResults'] = opensearchTotalResults!.toJson();
    }
    if (opensearchItemsPerPage != null) {
      data['opensearch\$itemsPerPage'] = opensearchItemsPerPage!.toJson();
    }
    if (opensearchStartIndex != null) {
      data['opensearch\$startIndex'] = opensearchStartIndex!.toJson();
    }
    if (entry != null) {
      data['entry'] = entry!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Id {
  String? t;

  Id({this.t});

  Id.fromJson(Map<String, dynamic> json) {
    t = json['\$t'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['\$t'] = t;
    return data;
  }
}

class Author {
  Id? name;
  Id? uri;
  Id? email;

  Author({this.name, this.uri, this.email});

  Author.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Id.fromJson(json['name']) : null;
    uri = json['uri'] != null ? Id.fromJson(json['uri']) : null;
    email = json['email'] != null ? Id.fromJson(json['email']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (uri != null) {
      data['uri'] = uri!.toJson();
    }
    if (email != null) {
      data['email'] = email!.toJson();
    }
    return data;
  }
}

class Link {
  String? rel;
  String? type;
  String? href;
  String? title;
  String? opdsActiveFacet;
  String? opdsFacetGroup;
  String? thrCount;

  Link(this.type,
      {this.rel,
      this.href,
      this.title,
      this.opdsActiveFacet,
      this.opdsFacetGroup,
      this.thrCount});

  Link.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    type = json['type'];
    href = json['href'];
    title = json['title'];
    opdsActiveFacet = json['opds:activeFacet'];
    opdsFacetGroup = json['opds:facetGroup'];
    thrCount = json['thr:count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rel'] = rel;
    data['type'] = type;
    data['href'] = href;
    data['title'] = title;
    data['opds:activeFacet'] = opdsActiveFacet;
    data['opds:facetGroup'] = opdsFacetGroup;
    data['thr:count'] = thrCount;
    return data;
  }
}

class Entry {
  Id? title;
  Id? id;
  List<EntryAuthor>? author;
  Id? published;
  Id? updated;
  Id? dctermsLanguage;
  Id? dctermsPublisher;
  Id? dctermsIssued;
  Id? summary;
  List<EntryLink>? link;
  List<Category>? category;
  SchemaSeries? schemaSeries;

  Entry(
      {this.title,
      this.id,
      this.author,
      this.published,
      this.updated,
      this.dctermsLanguage,
      this.dctermsPublisher,
      this.dctermsIssued,
      this.summary,
      this.category,
      this.link,
      this.schemaSeries});

  Entry.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? Id.fromJson(json['title']) : null;
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    // 아..동적 타입 거지같다 22
    if (json['author'] != null) {
      author = <EntryAuthor>[];
      String type = json['author'].runtimeType.toString();
      if (type == 'List<dynamic>') {
        json['author'].forEach((v) {
          author!.add(EntryAuthor.fromJson(v));
        });
      } else {
        author!.add(EntryAuthor.fromJson(json['author']));
      }
    }
    published =
        json['published'] != null ? Id.fromJson(json['published']) : null;
    updated = json['updated'] != null ? Id.fromJson(json['updated']) : null;
    dctermsLanguage = json['dcterms\$language'] != null
        ? Id.fromJson(json['dcterms\$language'])
        : null;
    dctermsPublisher = json['dcterms\$publisher'] != null
        ? Id.fromJson(json['dcterms\$publisher'])
        : null;
    dctermsIssued = json['dcterms\$issued'] != null
        ? Id.fromJson(json['dcterms\$issued'])
        : null;
    summary = json['summary'] != null ? Id.fromJson(json['summary']) : null;
    if (json['category'] != null) {
      category = <Category>[];
      // 아..동적 타입 거지같다
      String type = json['category'].runtimeType.toString();
      if (type == 'List<dynamic>') {
        json['category'].forEach((v) {
          category!.add(Category.fromJson(v));
        });
      } else {
        category!.add(Category.fromJson(json['category']));
      }
    }
    if (json['link'] != null) {
      link = <EntryLink>[];
      json['link'].forEach((v) {
        link!.add(EntryLink.fromJson(v));
      });
    }
    schemaSeries = json['schema\$Series'] != null
        ? SchemaSeries.fromJson(json['schema\$Series'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (id != null) {
      data['id'] = id!.toJson();
    }
    if (author != null) {
      data['author'] = author!.map((v) => v.toJson()).toList();
    }
    if (published != null) {
      data['published'] = published!.toJson();
    }
    if (updated != null) {
      data['updated'] = updated!.toJson();
    }
    if (dctermsLanguage != null) {
      data['dcterms\$language'] = dctermsLanguage!.toJson();
    }
    if (dctermsPublisher != null) {
      data['dcterms\$publisher'] = dctermsPublisher!.toJson();
    }
    if (dctermsIssued != null) {
      data['dcterms\$issued'] = dctermsIssued!.toJson();
    }
    if (summary != null) {
      data['summary'] = summary!.toJson();
    }
    if (category != null) {
      data['category'] = category!.map((v) => v.toJson()).toList();
    }
    if (link != null) {
      data['link'] = link!.map((v) => v.toJson()).toList();
    }
    if (schemaSeries != null) {
      data['schema\$Series'] = schemaSeries!.toJson();
    }
    return data;
  }
}

class EntryAuthor {
  Id? name;
  Id? uri;

  EntryAuthor({this.name, this.uri});

  EntryAuthor.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Id.fromJson(json['name']) : null;
    uri = json['uri'] != null ? Id.fromJson(json['uri']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (uri != null) {
      data['uri'] = uri!.toJson();
    }
    return data;
  }
}

class Category {
  String? label;
  String? term;
  String? scheme;

  Category({this.label, this.term, this.scheme});

  Category.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    term = json['term'];
    scheme = json['scheme'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['term'] = term;
    data['scheme'] = scheme;
    return data;
  }
}

class EntryLink {
  String? type;
  String? rel;
  String? title;
  String? href;

  EntryLink({this.type, this.rel, this.title, this.href});

  EntryLink.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    rel = json['rel'];
    title = json['title'];
    href = json['href'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['rel'] = rel;
    data['title'] = title;
    data['href'] = href;
    return data;
  }
}

class SchemaSeries {
  String? schemaPosition;
  String? schemaName;
  String? schemaUrl;

  SchemaSeries({this.schemaPosition, this.schemaName, this.schemaUrl});

  SchemaSeries.fromJson(Map<String, dynamic> json) {
    schemaPosition = json['schema:position'];
    schemaName = json['schema:name'];
    schemaUrl = json['schema:url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['schema:position'] = schemaPosition;
    data['schema:name'] = schemaName;
    data['schema:url'] = schemaUrl;
    return data;
  }
}
