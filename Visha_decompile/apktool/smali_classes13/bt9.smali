.class public Lbt9;
.super Lea1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lea1;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 0

    return-void
.end method

.method public r()Ltl5$a;
    .locals 1

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbt9;->x(Ljava/lang/String;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbt9;->x(Ljava/lang/String;)Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Lga1;Lcom/grack/nanojson/JsonArray;)V
    .locals 2

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lct9;

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v0, p0}, Lct9;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)Ltl5$a;
    .locals 4

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lga1;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lga1;-><init>(I)V

    const-string v1, "collection"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbt9;->w(Lga1;Lcom/grack/nanojson/JsonArray;)V

    new-instance p0, Ltl5$a;

    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    const-string v2, "next_href"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
