.class public Ldc6;
.super Lus0;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lus0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 0

    invoke-static {p0, p1, p2}, Ldc6;->E(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lc23;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.media.ccc.de/public/conferences/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse json returned by URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic E(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 1

    new-instance v0, Lac6;

    invoke-direct {v0, p1, p2, p0}, Lac6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ldc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 1

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldc6;->D(Lc23;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Ldc6;->g:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Ldc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "logo_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwc6;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public y()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public z()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Ldc6;->g:Lcom/grack/nanojson/JsonObject;

    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcc6;

    invoke-direct {v3, v0}, Lcc6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    const-string v0, "videos"

    invoke-direct {v1, v2, p0, v0, v3}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-static {v1}, Lbc6;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
