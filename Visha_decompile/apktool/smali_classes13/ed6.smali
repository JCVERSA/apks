.class public Led6;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lfc6;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 2

    const-string v0, "conferences"

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    :try_start_0
    new-instance p2, Lfc6;

    invoke-static {}, Lhc6;->r()Lhc6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lem5;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lfc6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    iput-object p2, p0, Led6;->h:Lfc6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 3

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const-string v1, "events"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "all"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Led6;->g:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    const-string v0, "conferences"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Led6;->h:Lfc6;

    invoke-virtual {p0}, Lmk3;->b()V

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not parse JSON."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 4

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lls6;-><init>(I)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    const-string v2, "conferences"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "all"

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Led6;->h:Lfc6;

    invoke-virtual {v3}, Lfc6;->r()Ltl5$a;

    move-result-object v3

    invoke-virtual {v3}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v0}, Led6;->z(Ljava/lang/String;Ljava/util/List;Lls6;)V

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    const-string v3, "events"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object p0, p0, Led6;->g:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "release_date"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lld6;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lld6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v2}, Lyz4;->d(Lxz4;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ltl5$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z(Ljava/lang/String;Ljava/util/List;Lls6;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Led6$a;

    invoke-direct {v1, p0, v0}, Led6$a;-><init>(Led6;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    invoke-virtual {p3, v1}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :cond_1
    return-void
.end method
