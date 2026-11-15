.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoCompleteListener;


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

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const-string v1, ""

    const-string v2, "110108"

    invoke-static {v0, v2, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$25;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    :cond_2
    :goto_0
    return-void
.end method
