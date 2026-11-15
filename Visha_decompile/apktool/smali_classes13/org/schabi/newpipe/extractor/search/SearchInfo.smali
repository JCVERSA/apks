.class public Lorg/schabi/newpipe/extractor/search/SearchInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isCorrectedSearch:Z

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final searchString:Ljava/lang/String;

.field private searchSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Search"

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lmk3;->b()V

    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 5
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/search/SearchInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setSearchSuggestion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setIsCorrectedSearch(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 15
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 16
    :goto_3
    invoke-static {v0, p0}, Lok3;->a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 18
    invoke-virtual {p0}, Ltl5$a;->d()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Ltl5$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMetaInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    return-object p0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    return-object p0
.end method

.method public isCorrectedSearch()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    return p0
.end method

.method public setIsCorrectedSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    return-void
.end method

.method public setSearchSuggestion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    return-void
.end method
