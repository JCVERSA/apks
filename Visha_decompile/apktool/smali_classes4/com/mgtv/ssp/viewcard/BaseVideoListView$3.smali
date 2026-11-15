.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAuthorizeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o()V
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

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "110100"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "110102"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v0, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object p2, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p2}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v0, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz v0, :cond_2

    iget-object p2, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    const-string v0, "-1"

    invoke-virtual {p2, p1, v0}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v0, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object p2, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Landroid/widget/FrameLayout$LayoutParams;Lcom/mgtv/ssp/control/b;Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$3;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    :cond_3
    :goto_1
    return-void
.end method
