.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> rewardedListener --> onBiddingError() --> \u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->J0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> rewardedListener --> onLoad() --> \u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->L0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> rewardedListener --> onClosed() --> \u5e7f\u544a\u5173\u95ed"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->I0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> rewardedListener --> onShow() --> \u5e7f\u544a\u5c55\u793a"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->M0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> rewardedListener --> onRewarded() --> \u6fc0\u52b1\u5e7f\u544a\u5956\u52b1"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->G0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> rewardedListener --> onShowError() --> \u5e7f\u544a\u5c55\u793a\u5931\u8d25"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->K0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
