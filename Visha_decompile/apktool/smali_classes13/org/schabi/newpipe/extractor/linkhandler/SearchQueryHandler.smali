.class public Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 6

    .line 2
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    iget-object v5, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
