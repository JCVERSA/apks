.class Lcom/hunantv/media/player/subtitle/a/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/a/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$2;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "WEBVTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WEBVTT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WEBVTT\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$2;->a:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v1, "Not a WEBVTT header"

    invoke-static {v0, v1, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$2;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$2;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->b(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method
