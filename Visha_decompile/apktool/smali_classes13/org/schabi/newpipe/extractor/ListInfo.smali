.class public abstract Lorg/schabi/newpipe/extractor/ListInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">",
        "Lorg/schabi/newpipe/extractor/Info;"
    }
.end annotation


# instance fields
.field private final contentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextPage:Lorg/schabi/newpipe/extractor/Page;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
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
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 3
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 4
    iput-object p7, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 7
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 8
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    return-object p0
.end method

.method public getNextPage()Lorg/schabi/newpipe/extractor/Page;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-object p0
.end method

.method public getRelatedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-object p0
.end method

.method public getSortFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-object p0
.end method

.method public hasNextPage()Z
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result p0

    return p0
.end method

.method public setNextPage(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-void
.end method
