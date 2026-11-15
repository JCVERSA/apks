.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->onBackPressed()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTopUiVisible(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->i(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->screenChange(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 11
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/high16 p1, 0x42200000    # 40.0f

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result p0

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/hunantv/imgo/util/t;->a(Landroid/app/Activity;Z)V

    .line 13
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->j(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    move p0, v1

    .line 14
    :goto_0
    instance-of p1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_3

    .line 15
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 16
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreenV2(Z)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreenV2(Z)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$15;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    return-void
.end method
