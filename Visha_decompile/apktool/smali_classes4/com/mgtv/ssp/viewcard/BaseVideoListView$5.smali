.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBack()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-interface {p0}, Lcom/mgtv/ssp/SspViewInterface;->onBackPress()Z

    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    :cond_0
    return-void
.end method

.method public retry()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m()V

    return-void
.end method

.method public toLogin()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    move-result-object v0

    new-instance v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5$1;-><init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;)V

    invoke-interface {v0, v1}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->gotoLogin(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    :cond_0
    return-void
.end method

.method public toVip(Ljava/lang/String;)V
    .locals 8

    new-instance v2, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-direct {v2}, Lcom/mgtv/ssp/authbase/AccountInfo;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->setToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/mgtv/ssp/authbase/AccountInfo;->setVipurl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->p()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getModType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$5;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v7, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->r:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    invoke-virtual/range {v0 .. v7}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    return-void
.end method
