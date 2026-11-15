.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q()V
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

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreenV2(Z)V

    .line 4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->switchFullScreenV2(Z)V

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const-class v1, Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    iget-object v0, v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getReportH5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$17;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->onBackPressed()V

    return-void
.end method
