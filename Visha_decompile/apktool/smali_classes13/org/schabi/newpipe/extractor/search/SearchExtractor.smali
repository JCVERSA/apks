.class public abstract Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.super Ltl5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltl5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .locals 0

    invoke-super {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    return-object p0
.end method

.method public abstract v()Ljava/util/List;
.end method

.method public w()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;->getSearchString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Z
.end method
