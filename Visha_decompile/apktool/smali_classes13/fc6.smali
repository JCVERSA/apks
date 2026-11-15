.class public Lfc6;
.super Lig5;
.source "SourceFile"


# instance fields
.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lfc6;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "Conferences"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lfc6;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not parse json."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 4

    iget-object v0, p0, Lfc6;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "conferences"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    new-instance v1, Lau0;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result p0

    invoke-direct {v1, p0}, Lau0;-><init>(I)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge p0, v2, :cond_0

    new-instance v2, Lec6;

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lec6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v1, v2}, Lyz4;->d(Lxz4;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ltl5$a;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0
.end method
