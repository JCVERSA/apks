.class public final Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->E0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
