.class public Lcom/mgmi/ads/api/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/widget/IVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setVideoFrameClockNotifyMs(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setOnAVPlayListener(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setOnFrameListener(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isRendered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
