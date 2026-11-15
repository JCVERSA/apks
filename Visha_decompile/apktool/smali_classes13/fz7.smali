.class public Lfz7;
.super Lea1;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lea1;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfz7;->g:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 0

    return-void
.end method

.method public r()Ltl5$a;
    .locals 3

    invoke-virtual {p0}, Lfz7;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfz7;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?start=0&count=12"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfz7;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lga1;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lga1;-><init>(I)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v1

    const-string v2, "children"

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfu8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json data for comments info"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lmz7;->n(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0}, Lfz7;->y()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Lfz7;->w(Lga1;Lcom/grack/nanojson/JsonObject;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1}, Lfz7;->x(Lga1;Lcom/grack/nanojson/JsonObject;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Unable to get PeerTube kiosk info"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lfz7;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1}, Lfz7;->x(Lga1;Lcom/grack/nanojson/JsonObject;)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance p0, Ltl5$a;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lmz7;->i(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json data for nested comments  info"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Lga1;Lcom/grack/nanojson/JsonObject;)V
    .locals 8

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v0, "isDeleted"

    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lgz7;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lfz7;->y()Z

    move-result v7

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lgz7;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x(Lga1;Lcom/grack/nanojson/JsonObject;)V
    .locals 9

    const-string v0, "children"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    const-string v1, "isDeleted"

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lgz7;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lfz7;->y()Z

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lgz7;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Lfz7;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/videos/watch/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lfz7;->g:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/comment-threads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfz7;->g:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    iget-object p0, p0, Lfz7;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
