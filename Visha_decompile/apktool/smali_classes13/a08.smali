.class public La08;
.super Lig5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lig5;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 0

    return-void
.end method

.method public r()Ltl5$a;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&start=0&count=12"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La08;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json data for kiosk info"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lmz7;->n(Lcom/grack/nanojson/JsonObject;)V

    const-string v1, "total"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v4

    invoke-direct {v3, v4}, Lqy9;-><init>(I)V

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lmz7;->c(Lyz4;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    new-instance p0, Ltl5$a;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lmz7;->i(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Unable to get PeerTube kiosk info"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
