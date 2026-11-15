.class public Lc60;
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

    iput-object p1, p0, Lc60;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lc60;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lc60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lc60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "image_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc60;->l()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc60;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lc60;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object p0, p0, Lc60;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "why"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
