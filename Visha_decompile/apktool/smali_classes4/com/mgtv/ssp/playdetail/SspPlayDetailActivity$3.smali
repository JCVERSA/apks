.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;


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

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdStartPlaying()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayErrorView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$3;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Lcom/mgtv/ssp/play/PlayErrorView;)Lcom/mgtv/ssp/play/PlayErrorView;

    :cond_0
    return-void
.end method
