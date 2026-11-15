.class public Lk60;
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
    .locals 0

    const-string p0, "Featured"

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    const-string v1, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "{\"platform\":\"\",\"version\":0}"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lk60;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse Bandcamp featured API response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 2

    iget-object v0, p0, Lk60;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "feed_content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "stories"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "featured"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk60;->u(Lcom/grack/nanojson/JsonArray;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "stories"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "featured"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk60;->u(Lcom/grack/nanojson/JsonArray;)Ltl5$a;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse Bandcamp featured API response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final u(Lcom/grack/nanojson/JsonArray;)Ltl5$a;
    .locals 4

    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/c;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/c;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "album_title"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lp60;

    invoke-direct {v3, v2}, Lp60;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v3}, Lyz4;->d(Lxz4;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    new-instance v1, Ltl5$a;

    invoke-virtual {p0, p1}, Lk60;->v(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public final v(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;
    .locals 6

    const-string p0, "story_date"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p0, "ntid"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string p0, "story_type"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://bandcamp.com/api/mobile/24/feed_older_logged_out?story_groups=featured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
