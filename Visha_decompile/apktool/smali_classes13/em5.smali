.class public abstract Lem5;
.super Lil5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil5;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lem5;->k(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    invoke-virtual {p0, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lem5;->o(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lem5;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1, p2}, Lem5;->q(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1}, Lil5;->b(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1, p2}, Lil5;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lem5;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-object v0, p0

    move-object v1, v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lem5;->q(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-object v0, p0

    move-object v1, v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lem5;->o(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1

    const-string v0, "URL may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-super {p0, p1, p2}, Lil5;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public abstract p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public q(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lem5;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
