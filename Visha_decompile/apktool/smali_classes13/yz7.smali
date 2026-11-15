.class public Lyz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpy9;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lyz7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyz7;->b:Ljava/lang/String;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    invoke-static {v1, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lce9;->d:Ltz7;

    invoke-virtual {v2}, Ltz7;->c()Lem5;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lyz7;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lem5;->k(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "account.displayName"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lyz7;->b:Ljava/lang/String;

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "publishedAt"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    invoke-virtual {p0}, Lyz7;->f()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lmz7;->m(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "name"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "uuid"

    invoke-static {v0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lce9;->d:Ltz7;

    invoke-virtual {v1}, Ltz7;->u()Lil5;

    move-result-object v1

    iget-object p0, p0, Lyz7;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lil5;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lyz7;->b:Ljava/lang/String;

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0}, Lmz7;->j(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "isLive"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    :goto_0
    return-object p0
.end method

.method public w()J
    .locals 2

    iget-object p0, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "views"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
