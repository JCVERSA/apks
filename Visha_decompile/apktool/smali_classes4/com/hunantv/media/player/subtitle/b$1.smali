.class Lcom/hunantv/media/player/subtitle/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b$1;->a:Lcom/hunantv/media/player/subtitle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b$1;->a:Lcom/hunantv/media/player/subtitle/b;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/b;->c(Lcom/hunantv/media/player/subtitle/b;)V

    return v1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b$1;->a:Lcom/hunantv/media/player/subtitle/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hunantv/media/player/subtitle/d;

    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/b;Lcom/hunantv/media/player/subtitle/d;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b$1;->a:Lcom/hunantv/media/player/subtitle/b;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/b;->b(Lcom/hunantv/media/player/subtitle/b;)V

    return v1

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b$1;->a:Lcom/hunantv/media/player/subtitle/b;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/b;)V

    return v1
.end method
