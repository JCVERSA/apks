.class Lcom/hunantv/media/player/d/f$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/d/f;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/hunantv/media/player/d/f$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/d/f$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/d/f;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/d/f;II)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->b(Lcom/hunantv/media/player/d/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->c(Lcom/hunantv/media/player/d/f;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->d(Lcom/hunantv/media/player/d/f;)V

    :goto_0
    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/d/f;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->f(Lcom/hunantv/media/player/d/f;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/hunantv/media/player/d/f;->e(Lcom/hunantv/media/player/d/f;)Z

    return-void

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1}, Lcom/hunantv/media/player/d/f;->b(Lcom/hunantv/media/player/d/f;II)V

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/d/f;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
