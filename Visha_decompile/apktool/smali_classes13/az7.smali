.class public Laz7;
.super Lus0;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lus0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laz7;->h:Ljava/lang/String;

    return-void
.end method

.method private C(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Unable to extract PeerTube channel data"

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "displayName"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 3

    iget-object v0, p0, Laz7;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Laz7;->C(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Unable to extract PeerTube channel data"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laz7;->h:Ljava/lang/String;

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laz7;->h:Ljava/lang/String;

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0}, Lmz7;->f(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/feeds/videos.xml?videoChannelId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Laz7;->h:Ljava/lang/String;

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "ownerAccount"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "ownerAccount.name"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "ownerAccount.url"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public y()J
    .locals 2

    iget-object p0, p0, Laz7;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "followersCount"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/util/List;
    .locals 5

    invoke-static {}, Lez7;->r()Lez7;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videos"

    invoke-static {v2}, Lxy7;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lem5;->m(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-static {}, Lez7;->r()Lez7;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playlists"

    invoke-static {v3}, Lyy7;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, v4, p0}, Lem5;->m(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-static {v0, p0}, Lzy7;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
