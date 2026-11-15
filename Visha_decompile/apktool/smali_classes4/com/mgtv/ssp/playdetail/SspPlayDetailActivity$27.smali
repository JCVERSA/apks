.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;


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

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "140105_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mgtv/ssp/R$string;->sorry_play_faild:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getAuthData()Lcom/mgtv/ssp/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->setAuthData(Lcom/mgtv/ssp/a/a;)V

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/ssp/play/PlayErrorView;->rendUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$27;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    :cond_1
    return-void
.end method
