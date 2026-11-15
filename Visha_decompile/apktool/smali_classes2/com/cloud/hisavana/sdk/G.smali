.class public abstract Lcom/cloud/hisavana/sdk/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lau4;


# instance fields
.field public final a:Lcom/cloud/hisavana/sdk/e;

.field public final b:Lied;

.field public c:Z

.field public d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

.field public e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

.field public f:Ljava/util/List;

.field public g:Lcom/cloud/hisavana/sdk/Q0;

.field public h:Z


# direct methods
.method public constructor <init>(Lied;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/e;->j(Lied;Lau4;)Lcom/cloud/hisavana/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p1}, Lied;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    new-instance p1, Lcom/cloud/hisavana/sdk/Q0;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/Q0;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/Q0;

    return-void
.end method

.method public static synthetic D()V
    .locals 1

    sget-object v0, Ly55;->a:Ly55;

    invoke-virtual {v0}, Ly55;->a()V

    sget-object v0, Lq1d;->a:Lq1d;

    invoke-virtual {v0}, Lq1d;->c()V

    sget-object v0, Lzm6;->a:Lzm6;

    invoke-virtual {v0}, Lzm6;->c()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/cloud/hisavana/sdk/G;->D()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public B()Z
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public C()Z
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public E()V
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/e;->n()V

    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    invoke-direct {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;-><init>()V

    invoke-static {}, Lp9;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->setUseTestEnvironment(Z)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    move-result-object v0

    new-instance v1, Lo94;

    invoke-direct {v1}, Lo94;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->setInitCompleteListener(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->build()Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->init(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->x(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code seat id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v1}, Lied;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": fill success ,fill time is ------\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time_consuming"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAd"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    invoke-virtual {p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcgc;->p(I)V

    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_FETCHED_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-void
.end method

.method public h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/G$a;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/G$a;-><init>(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_BIDDING_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setPrice(Ljava/lang/Double;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v1}, Lied;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setAdCreativeId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p1}, Lied;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setBiddingToken(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;->USD:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCurrency(Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public j(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/e;->D(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    return-void
.end method

.method public l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 4

    if-nez p1, :cond_0

    const/16 p0, 0x45a

    return p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lhp0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x44d

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    const/16 v1, 0x44f

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    invoke-static {p1, v0}, Lhp0;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lov7;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/16 p0, 0x451

    return p0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const/16 p0, 0x452

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/cloud/hisavana/sdk/l0;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowMaxOfDay()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, p1, :cond_5

    return v1

    :cond_5
    return p0

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdStatusForAdsDTO failed, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseAd"

    invoke-virtual {v0, v1, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/Q0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/Q0;->a()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/Q0;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e;->E()V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Latd;->a:Latd;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Latd;->j(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->w()I

    move-result v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->y()I

    move-result p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picDelayTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoDelayTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseAd"

    invoke-virtual {v1, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method public final o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Lied;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    return-object p0
.end method

.method public q()I
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public r()I
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    invoke-static {}, Lr6;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady(), adId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/w;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isReady="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BaseAd"

    invoke-virtual {v1, v2, p0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    return-object p0
.end method

.method public t()D
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public u()I
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public v()Lcom/cloud/hisavana/sdk/Q0;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/Q0;

    return-object p0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getPictureDelayCloseTime()I

    move-result p0

    :goto_0
    return p0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getRetentionEndCardRatio()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getVideoDelayCloseTime()I

    move-result p0

    :goto_0
    return p0
.end method

.method public z()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    return p0
.end method
