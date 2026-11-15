.class public Ls60;
.super Lig5;
.source "SourceFile"


# instance fields
.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ls60;->h:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 0

    const-string p0, "Radio"

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    const-string v1, "https://bandcamp.com/api/bcweekly/3/list"

    invoke-virtual {v0, v1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Ls60;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not parse Bandcamp Radio API response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 4

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    iget-object p0, p0, Ls60;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "results"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    new-instance v3, Lt60;

    invoke-direct {v3, v2}, Lt60;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v3}, Lqy9;->h(Lpy9;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ltl5$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
