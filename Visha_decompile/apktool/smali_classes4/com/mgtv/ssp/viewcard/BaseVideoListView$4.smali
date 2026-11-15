.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;


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

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "140105_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mgtv/ssp/R$string;->sorry_play_faild:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->o:Lcom/mgtv/ssp/bean/VideoInfoBean;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getPreviewVcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    const-string v1, "-1"

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q:Lcom/mgtv/ssp/control/GestureVideoController;

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->l:Lcom/mgtv/ssp/play/PlayErrorView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/mgtv/ssp/control/BaseVideoController;->addControlComponent(Landroid/widget/FrameLayout$LayoutParams;Lcom/mgtv/ssp/control/b;Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$4;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->p:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    :cond_2
    return-void
.end method
