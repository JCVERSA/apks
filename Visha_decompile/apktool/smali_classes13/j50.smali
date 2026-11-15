.class public Lj50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/b;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lj50;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj50;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "band_name"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "band_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v3, "item_id"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object p0, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v4, "item_type"

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lj60;->k(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lj50;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "art_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
