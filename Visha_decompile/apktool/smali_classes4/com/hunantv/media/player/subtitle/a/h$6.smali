.class Lcom/hunantv/media/player/subtitle/a/h$6;
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

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$6;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$6;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/a/h;->b()V

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$6;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->c(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$6;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$6;->a:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->i(Lcom/hunantv/media/player/subtitle/a/h;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
