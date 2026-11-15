.class public Lvs9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt0;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "track_count"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "permalink_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "verified"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public z()J
    .locals 2

    iget-object p0, p0, Lvs9;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "followers_count"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
