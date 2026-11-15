.class public Lcom/hisavana/mediation/ad/TBannerAd;
.super Lpca;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpca;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Lcom/hisavana/common/base/WrapTadView;

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/base/WrapTadView;)V
    .locals 1

    invoke-direct {p0}, Lpca;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    iput-object p1, p0, Lpca;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lul4;->k(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lpca;->b()V

    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/a;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lpca;->d()Lvid;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    invoke-virtual {v0, v1}, Lvid;->s(I)V

    .line 4
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    invoke-virtual {v0, v1}, Lvid;->u(I)V

    .line 5
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    invoke-virtual {v0, v1}, Lvid;->p(I)V

    .line 6
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    invoke-virtual {v0, v1}, Lvid;->m(I)V

    .line 7
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->F:Z

    invoke-virtual {v0, v1}, Lvid;->q(Z)V

    .line 8
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->G:Z

    invoke-virtual {v0, v1}, Lvid;->g(Z)V

    .line 9
    new-instance v1, Lz2d;

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-direct {v1, p1, v0, p0}, Lz2d;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    return-void
.end method

.method public c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public clearCurrentAd()V
    .locals 1

    iget-boolean v0, p0, Lpca;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lpca;->clearCurrentAd()V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    return-void
.end method

.method public destroy()V
    .locals 4

    invoke-super {p0}, Lpca;->destroy()V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove banner view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TBannerAd"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->u()V

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    return-void
.end method

.method public enterScene(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-super {p0, p1, p2}, Lpca;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->H:Ljava/lang/String;

    return-object p1
.end method

.method public q()V
    .locals 6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string/jumbo v1, "show ad if avaliable"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "TBannerAd --> mBannerView is null"

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lpca;->n()V

    iget-boolean v0, p0, Lpca;->p:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpca;->setIsShowing(Z)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->clearCurrentAd()V

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lpca;->g()Lcom/hisavana/mediation/a;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lpca;->h:Lrud;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/a;->p(Lrud;)V

    iget-boolean v1, p0, Lpca;->q:Z

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/a;->d(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/base/BaseBanner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseBanner;->canShow()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    const-string v4, "TBannerAd"

    const-string v5, "TBannerAd setAdListener"

    invoke-virtual {v3, v4, v5}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lpca;->h:Lrud;

    invoke-virtual {v1, v3}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v3, "filling_source"

    iget v4, p0, Lpca;->mFillSource:I

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v3, "is_contain_vulgar"

    iget-boolean v4, p0, Lpca;->q:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lpca;->setIsShowing(Z)V

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    iget-object v3, p0, Lcom/hisavana/mediation/ad/TBannerAd;->H:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lpca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/hisavana/common/base/BaseBanner;->show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lpca;->t()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TBannerAd --> no ad or ad is expired"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TBannerAd --> exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpca;->t()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "must call show in main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpca;->a:Ljava/lang/String;

    return-void
.end method

.method public setBannerType(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->G:Z

    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->F:Z

    return-void
.end method

.method public final u()V
    .locals 7

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "destroyFoldAd "

    const-string v2, "TBannerAd"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpca;->e()I

    move-result v0

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lpca;->q:Z

    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/common/interfacz/ICacheAd;

    instance-of v4, v3, Lcom/hisavana/common/base/BaseBanner;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/hisavana/common/base/BaseBanner;

    invoke-virtual {v4}, Lcom/hisavana/common/base/BaseBanner;->destroyFoldAd()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/hisavana/common/bean/AdCache;->removeCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destroyFoldAd removeCache "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    move-result-object v0

    iget-object p0, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/hisavana/common/manager/RequestingAdManager;->destroyFoldAd(Ljava/lang/String;)V

    return-void
.end method
