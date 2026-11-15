.class Lcom/hunantv/media/player/subtitle/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/e;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/e;->b(Lcom/hunantv/media/player/subtitle/e;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/e;->a(Lcom/hunantv/media/player/subtitle/e;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    :goto_0
    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(Lcom/hunantv/media/player/subtitle/e;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/e$a;->a:Lcom/hunantv/media/player/subtitle/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/e;->a(Lcom/hunantv/media/player/subtitle/e;Landroid/util/Pair;)V

    :cond_5
    return-void
.end method
