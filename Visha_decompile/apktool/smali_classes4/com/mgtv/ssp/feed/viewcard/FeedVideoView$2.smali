.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->I(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->J(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->K(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->M(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->L(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    const-string v2, ""

    const-string v3, "110108"

    invoke-static {v0, v3, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->O(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->N(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->P(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->R(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v3}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->Q(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Landroid/widget/FrameLayout$LayoutParams;Lcom/mgtv/ssp/control/b;Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->S(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    sget v2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->s:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;I)I

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->T(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0, v3}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v0

    invoke-static {p0, v0, v3, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;IZZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$2;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v0

    invoke-virtual {p0, v0, v3, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    :cond_3
    :goto_0
    return-void
.end method
