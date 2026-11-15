.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/mgtv/ssp/play/PlayerCore;->START_PLAY:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->K(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    :cond_0
    return-void
.end method
