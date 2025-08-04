class Book {
    Book({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.saleInfo,
        required this.accessInfo,
        required this.searchInfo,
    });

    final String? kind;
    final String? id;
    final String? etag;
    final String? selfLink;
    final VolumeInfo? volumeInfo;
    final SaleInfo? saleInfo;
    final AccessInfo? accessInfo;
    final SearchInfo? searchInfo;

    Book copyWith({
        String? kind,
        String? id,
        String? etag,
        String? selfLink,
        VolumeInfo? volumeInfo,
        SaleInfo? saleInfo,
        AccessInfo? accessInfo,
        SearchInfo? searchInfo,
    }) {
        return Book(
            kind: kind ?? this.kind,
            id: id ?? this.id,
            etag: etag ?? this.etag,
            selfLink: selfLink ?? this.selfLink,
            volumeInfo: volumeInfo ?? this.volumeInfo,
            saleInfo: saleInfo ?? this.saleInfo,
            accessInfo: accessInfo ?? this.accessInfo,
            searchInfo: searchInfo ?? this.searchInfo,
        );
    }

    factory Book.fromJson(Map<String, dynamic> json){ 
        return Book(
            kind: json["kind"],
            id: json["id"],
            etag: json["etag"],
            selfLink: json["selfLink"],
            volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
            saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
            accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
            searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo?.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
        "searchInfo": searchInfo?.toJson(),
    };

    @override
    String toString(){
        return "$kind, $id, $etag, $selfLink, $volumeInfo, $saleInfo, $accessInfo, $searchInfo, ";
    }
}

class AccessInfo {
    AccessInfo({
        required this.country,
        required this.viewability,
        required this.embeddable,
        required this.publicDomain,
        required this.textToSpeechPermission,
        required this.epub,
        required this.pdf,
        required this.webReaderLink,
        required this.accessViewStatus,
        required this.quoteSharingAllowed,
    });

    final String? country;
    final String? viewability;
    final bool? embeddable;
    final bool? publicDomain;
    final String? textToSpeechPermission;
    final Epub? epub;
    final Pdf? pdf;
    final String? webReaderLink;
    final String? accessViewStatus;
    final bool? quoteSharingAllowed;

    AccessInfo copyWith({
        String? country,
        String? viewability,
        bool? embeddable,
        bool? publicDomain,
        String? textToSpeechPermission,
        Epub? epub,
        Pdf? pdf,
        String? webReaderLink,
        String? accessViewStatus,
        bool? quoteSharingAllowed,
    }) {
        return AccessInfo(
            country: country ?? this.country,
            viewability: viewability ?? this.viewability,
            embeddable: embeddable ?? this.embeddable,
            publicDomain: publicDomain ?? this.publicDomain,
            textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
            epub: epub ?? this.epub,
            pdf: pdf ?? this.pdf,
            webReaderLink: webReaderLink ?? this.webReaderLink,
            accessViewStatus: accessViewStatus ?? this.accessViewStatus,
            quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
        );
    }

    factory AccessInfo.fromJson(Map<String, dynamic> json){ 
        return AccessInfo(
            country: json["country"],
            viewability: json["viewability"],
            embeddable: json["embeddable"],
            publicDomain: json["publicDomain"],
            textToSpeechPermission: json["textToSpeechPermission"],
            epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
            pdf: json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]),
            webReaderLink: json["webReaderLink"],
            accessViewStatus: json["accessViewStatus"],
            quoteSharingAllowed: json["quoteSharingAllowed"],
        );
    }

    Map<String, dynamic> toJson() => {
        "country": country,
        "viewability": viewability,
        "embeddable": embeddable,
        "publicDomain": publicDomain,
        "textToSpeechPermission": textToSpeechPermission,
        "epub": epub?.toJson(),
        "pdf": pdf?.toJson(),
        "webReaderLink": webReaderLink,
        "accessViewStatus": accessViewStatus,
        "quoteSharingAllowed": quoteSharingAllowed,
    };

    @override
    String toString(){
        return "$country, $viewability, $embeddable, $publicDomain, $textToSpeechPermission, $epub, $pdf, $webReaderLink, $accessViewStatus, $quoteSharingAllowed, ";
    }
}

class Epub {
    Epub({
        required this.isAvailable,
    });

    final bool? isAvailable;

    Epub copyWith({
        bool? isAvailable,
    }) {
        return Epub(
            isAvailable: isAvailable ?? this.isAvailable,
        );
    }

    factory Epub.fromJson(Map<String, dynamic> json){ 
        return Epub(
            isAvailable: json["isAvailable"],
        );
    }

    Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
    };

    @override
    String toString(){
        return "$isAvailable, ";
    }
}

class Pdf {
    Pdf({
        required this.isAvailable,
        required this.acsTokenLink,
    });

    final bool? isAvailable;
    final String? acsTokenLink;

    Pdf copyWith({
        bool? isAvailable,
        String? acsTokenLink,
    }) {
        return Pdf(
            isAvailable: isAvailable ?? this.isAvailable,
            acsTokenLink: acsTokenLink ?? this.acsTokenLink,
        );
    }

    factory Pdf.fromJson(Map<String, dynamic> json){ 
        return Pdf(
            isAvailable: json["isAvailable"],
            acsTokenLink: json["acsTokenLink"],
        );
    }

    Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
        "acsTokenLink": acsTokenLink,
    };

    @override
    String toString(){
        return "$isAvailable, $acsTokenLink, ";
    }
}

class SaleInfo {
    SaleInfo({
        required this.country,
        required this.saleability,
        required this.isEbook,
    });

    final String? country;
    final String? saleability;
    final bool? isEbook;

    SaleInfo copyWith({
        String? country,
        String? saleability,
        bool? isEbook,
    }) {
        return SaleInfo(
            country: country ?? this.country,
            saleability: saleability ?? this.saleability,
            isEbook: isEbook ?? this.isEbook,
        );
    }

    factory SaleInfo.fromJson(Map<String, dynamic> json){ 
        return SaleInfo(
            country: json["country"],
            saleability: json["saleability"],
            isEbook: json["isEbook"],
        );
    }

    Map<String, dynamic> toJson() => {
        "country": country,
        "saleability": saleability,
        "isEbook": isEbook,
    };

    @override
    String toString(){
        return "$country, $saleability, $isEbook, ";
    }
}

class SearchInfo {
    SearchInfo({
        required this.textSnippet,
    });

    final String? textSnippet;

    SearchInfo copyWith({
        String? textSnippet,
    }) {
        return SearchInfo(
            textSnippet: textSnippet ?? this.textSnippet,
        );
    }

    factory SearchInfo.fromJson(Map<String, dynamic> json){ 
        return SearchInfo(
            textSnippet: json["textSnippet"],
        );
    }

    Map<String, dynamic> toJson() => {
        "textSnippet": textSnippet,
    };

    @override
    String toString(){
        return "$textSnippet, ";
    }
}

class VolumeInfo {
    VolumeInfo({
        required this.title,
        required this.subtitle,
        required this.authors,
        required this.publisher,
        required this.publishedDate,
        required this.description,
        required this.industryIdentifiers,
        required this.readingModes,
        required this.pageCount,
        required this.printType,
        required this.categories,
        required this.maturityRating,
        required this.allowAnonLogging,
        required this.contentVersion,
        required this.panelizationSummary,
        required this.imageLinks,
        required this.language,
        required this.previewLink,
        required this.infoLink,
        required this.canonicalVolumeLink,
    });

    final String? title;
    final String? subtitle;
    final List<String> authors;
    final String? publisher;
    final DateTime? publishedDate;
    final String? description;
    final List<IndustryIdentifier> industryIdentifiers;
    final ReadingModes? readingModes;
    final int? pageCount;
    final String? printType;
    final List<String> categories;
    final String? maturityRating;
    final bool? allowAnonLogging;
    final String? contentVersion;
    final PanelizationSummary? panelizationSummary;
    final ImageLinks? imageLinks;
    final String? language;
    final String? previewLink;
    final String? infoLink;
    final String? canonicalVolumeLink;

    VolumeInfo copyWith({
        String? title,
        String? subtitle,
        List<String>? authors,
        String? publisher,
        DateTime? publishedDate,
        String? description,
        List<IndustryIdentifier>? industryIdentifiers,
        ReadingModes? readingModes,
        int? pageCount,
        String? printType,
        List<String>? categories,
        String? maturityRating,
        bool? allowAnonLogging,
        String? contentVersion,
        PanelizationSummary? panelizationSummary,
        ImageLinks? imageLinks,
        String? language,
        String? previewLink,
        String? infoLink,
        String? canonicalVolumeLink,
    }) {
        return VolumeInfo(
            title: title ?? this.title,
            subtitle: subtitle ?? this.subtitle,
            authors: authors ?? this.authors,
            publisher: publisher ?? this.publisher,
            publishedDate: publishedDate ?? this.publishedDate,
            description: description ?? this.description,
            industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
            readingModes: readingModes ?? this.readingModes,
            pageCount: pageCount ?? this.pageCount,
            printType: printType ?? this.printType,
            categories: categories ?? this.categories,
            maturityRating: maturityRating ?? this.maturityRating,
            allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
            contentVersion: contentVersion ?? this.contentVersion,
            panelizationSummary: panelizationSummary ?? this.panelizationSummary,
            imageLinks: imageLinks ?? this.imageLinks,
            language: language ?? this.language,
            previewLink: previewLink ?? this.previewLink,
            infoLink: infoLink ?? this.infoLink,
            canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
        );
    }

    factory VolumeInfo.fromJson(Map<String, dynamic> json){ 
        return VolumeInfo(
            title: json["title"],
            subtitle: json["subtitle"],
            authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
            publisher: json["publisher"],
            publishedDate: DateTime.tryParse(json["publishedDate"] ?? ""),
            description: json["description"],
            industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
            readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
            pageCount: json["pageCount"],
            printType: json["printType"],
            categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
            maturityRating: json["maturityRating"],
            allowAnonLogging: json["allowAnonLogging"],
            contentVersion: json["contentVersion"],
            panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
            imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
            language: json["language"],
            previewLink: json["previewLink"],
            infoLink: json["infoLink"],
            canonicalVolumeLink: json["canonicalVolumeLink"],
        );
    }

    Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "authors": authors.map((x) => x).toList(),
        "publisher": publisher,
        "publishedDate": "${publishedDate!.year.toString().padLeft(4,'0')}-${publishedDate!.month.toString().padLeft(2,'0')}-${publishedDate!.day.toString().padLeft(2,'0')}",
        "description": description,
        "industryIdentifiers": industryIdentifiers.map((x) => x?.toJson()).toList(),
        "readingModes": readingModes?.toJson(),
        "pageCount": pageCount,
        "printType": printType,
        "categories": categories.map((x) => x).toList(),
        "maturityRating": maturityRating,
        "allowAnonLogging": allowAnonLogging,
        "contentVersion": contentVersion,
        "panelizationSummary": panelizationSummary?.toJson(),
        "imageLinks": imageLinks?.toJson(),
        "language": language,
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
    };

    @override
    String toString(){
        return "$title, $subtitle, $authors, $publisher, $publishedDate, $description, $industryIdentifiers, $readingModes, $pageCount, $printType, $categories, $maturityRating, $allowAnonLogging, $contentVersion, $panelizationSummary, $imageLinks, $language, $previewLink, $infoLink, $canonicalVolumeLink, ";
    }
}

class ImageLinks {
    ImageLinks({
        required this.smallThumbnail,
        required this.thumbnail,
    });

    final String? smallThumbnail;
    final String? thumbnail;

    ImageLinks copyWith({
        String? smallThumbnail,
        String? thumbnail,
    }) {
        return ImageLinks(
            smallThumbnail: smallThumbnail ?? this.smallThumbnail,
            thumbnail: thumbnail ?? this.thumbnail,
        );
    }

    factory ImageLinks.fromJson(Map<String, dynamic> json){ 
        return ImageLinks(
            smallThumbnail: json["smallThumbnail"],
            thumbnail: json["thumbnail"],
        );
    }

    Map<String, dynamic> toJson() => {
        "smallThumbnail": smallThumbnail,
        "thumbnail": thumbnail,
    };

    @override
    String toString(){
        return "$smallThumbnail, $thumbnail, ";
    }
}

class IndustryIdentifier {
    IndustryIdentifier({
        required this.type,
        required this.identifier,
    });

    final String? type;
    final String? identifier;

    IndustryIdentifier copyWith({
        String? type,
        String? identifier,
    }) {
        return IndustryIdentifier(
            type: type ?? this.type,
            identifier: identifier ?? this.identifier,
        );
    }

    factory IndustryIdentifier.fromJson(Map<String, dynamic> json){ 
        return IndustryIdentifier(
            type: json["type"],
            identifier: json["identifier"],
        );
    }

    Map<String, dynamic> toJson() => {
        "type": type,
        "identifier": identifier,
    };

    @override
    String toString(){
        return "$type, $identifier, ";
    }
}

class PanelizationSummary {
    PanelizationSummary({
        required this.containsEpubBubbles,
        required this.containsImageBubbles,
    });

    final bool? containsEpubBubbles;
    final bool? containsImageBubbles;

    PanelizationSummary copyWith({
        bool? containsEpubBubbles,
        bool? containsImageBubbles,
    }) {
        return PanelizationSummary(
            containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
            containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
        );
    }

    factory PanelizationSummary.fromJson(Map<String, dynamic> json){ 
        return PanelizationSummary(
            containsEpubBubbles: json["containsEpubBubbles"],
            containsImageBubbles: json["containsImageBubbles"],
        );
    }

    Map<String, dynamic> toJson() => {
        "containsEpubBubbles": containsEpubBubbles,
        "containsImageBubbles": containsImageBubbles,
    };

    @override
    String toString(){
        return "$containsEpubBubbles, $containsImageBubbles, ";
    }
}

class ReadingModes {
    ReadingModes({
        required this.text,
        required this.image,
    });

    final bool? text;
    final bool? image;

    ReadingModes copyWith({
        bool? text,
        bool? image,
    }) {
        return ReadingModes(
            text: text ?? this.text,
            image: image ?? this.image,
        );
    }

    factory ReadingModes.fromJson(Map<String, dynamic> json){ 
        return ReadingModes(
            text: json["text"],
            image: json["image"],
        );
    }

    Map<String, dynamic> toJson() => {
        "text": text,
        "image": image,
    };

    @override
    String toString(){
        return "$text, $image, ";
    }
}
