.class public Lct9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa1;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lct9;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "permalink_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "created_at"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Lct9;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->q(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "permalink"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lct9;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "body"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()I
    .locals 1

    iget-object p0, p0, Lct9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method
