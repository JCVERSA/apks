.class public Lbz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt0;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lbz7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbz7;->b:Ljava/lang/String;

    iget-object p0, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public z()J
    .locals 2

    iget-object p0, p0, Lbz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "followersCount"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
