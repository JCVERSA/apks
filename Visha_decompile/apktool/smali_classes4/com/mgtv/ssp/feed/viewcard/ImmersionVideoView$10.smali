.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    iput p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->x(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->y(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->A(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->z(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    const-string v1, ""

    const-string v2, "110108"

    invoke-static {v0, v2, v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->C(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->B(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->D(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->F(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/control/GestureVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->E(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Lcom/mgtv/ssp/control/b;Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->G(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->J(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->H(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->I(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$10;->a:I

    add-int/lit8 p0, p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method
