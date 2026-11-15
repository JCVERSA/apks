.class public abstract Ltl5;
.super Lmk3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltl5$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmk3;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public abstract r()Ltl5$a;
.end method

.method public s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 0

    invoke-super {p0}, Lmk3;->j()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    return-object p0
.end method

.method public abstract t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
.end method
