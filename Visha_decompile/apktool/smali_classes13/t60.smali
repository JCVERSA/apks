.class public Lt60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpy9;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    invoke-virtual {p0}, Lt60;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "subtitle"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://bandcamp.com/?show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "image_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lt60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
