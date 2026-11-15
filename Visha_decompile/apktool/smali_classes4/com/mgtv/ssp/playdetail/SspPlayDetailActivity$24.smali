.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o()V
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

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onItemChildClick(Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/mgtv/ssp/f;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lcom/mgtv/ssp/f;

    iget-object v0, p1, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    iget-object v1, p1, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getVcode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/feed/control/StandardVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/play/PlayErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/control/BaseVideoController;->removeControlComponent(Lcom/mgtv/ssp/control/b;)V

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    iget-object p1, p1, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;I)I

    .line 11
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1, v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    .line 12
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c()V

    .line 13
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x()V

    :cond_2
    return-void
.end method

.method public onRetryItemChildClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$24;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d()V

    return-void
.end method
