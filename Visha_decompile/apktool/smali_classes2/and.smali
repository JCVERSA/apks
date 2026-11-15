.class public final Land;
.super Lcom/cloud/hisavana/sdk/G;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Land$a;
    }
.end annotation


# instance fields
.field public i:Lcom/cloud/hisavana/sdk/b;

.field public volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public k:Land$a;

.field public l:Landroid/view/ViewGroup;

.field public m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public n:Z

.field public o:Ljava/lang/ref/WeakReference;

.field public p:J

.field public q:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lied;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lied;)V

    const/4 p1, 0x0

    iput-object p1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Land;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Land;->o:Ljava/lang/ref/WeakReference;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Land;->p:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Land;->q:Ljava/lang/Integer;

    return-void
.end method

.method private G()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/b;-><init>(Land;)V

    iput-object v0, p0, Land;->i:Lcom/cloud/hisavana/sdk/b;

    return-void
.end method

.method public static synthetic L(Land;)V
    .locals 0

    invoke-direct {p0}, Land;->T()V

    return-void
.end method

.method private O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    sget-object p0, Latd;->a:Latd;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Latd;->j(Ljava/lang/String;)V

    return-void
.end method

.method private Q()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Land;->l:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-object p0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->n(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 4

    iget-object v0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Land;->i:Lcom/cloud/hisavana/sdk/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Land;->l:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v2}, Lied;->y()Z

    move-result v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v3}, Lied;->v()Z

    move-result v3

    iget-object p0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/b;->j(Landroid/view/ViewGroup;ZZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Land;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "TranBanner"

    const-string v2, "no ad show, set visible gone"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Land;->l:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private T()V
    .locals 3

    iget-object v0, p0, Land;->k:Land$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Land$a;->a()V

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "loadNextAD"

    const-string v2, "TranBanner"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lied;->d(Ljava/lang/String;)V

    iget-object p0, p0, Land;->o:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "loadNextAD loadAdFromAutoRefresh true"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAdFromAutoRefresh(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "loadNextAD weakTBannerView is null ,not show"

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "TranBanner"

    const-string v2, "postDelayRefresh"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Land;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Land;->q:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Land;->k:Land$a;

    if-nez v0, :cond_0

    new-instance v0, Land$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Land;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Land$a;-><init>(Land;Landroid/os/Looper;I)V

    iput-object v0, p0, Land;->k:Land$a;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Land;->p:J

    iget-object p0, p0, Land;->k:Land$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public H(I)V
    .locals 2

    iget-object v0, p0, Land;->l:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseTypeUsedForTrack(Ljava/lang/Integer;)V

    :cond_0
    invoke-direct {p0}, Land;->Q()V

    return-void
.end method

.method public I(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Land;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    iput-object p1, p0, Land;->l:Landroid/view/ViewGroup;

    invoke-direct {p0}, Land;->G()V

    iget-object p1, p0, Land;->l:Landroid/view/ViewGroup;

    const-string v0, "TranBanner"

    if-eqz p1, :cond_3

    iget-object p1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v1}, Lied;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Land;->R()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Land;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "ad not condition to use"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Land;->l:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Land;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_5

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Land;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_5
    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "bannerView or mAdBean = null"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Land;->n:Z

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Land;->l:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseTypeUsedForTrack(Ljava/lang/Integer;)V

    :cond_0
    invoke-direct {p0}, Land;->Q()V

    return-void
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {p0}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->f()V

    invoke-virtual {p0}, Land;->F()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->k(Z)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Land;->n:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Land;->o:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Land;->F()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->x(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-boolean v2, p0, Land;->n:Z

    if-eqz v2, :cond_6

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Land;->o:Ljava/lang/ref/WeakReference;

    const-string p2, "TranBanner"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->D(Lcom/cloud/hisavana/sdk/G;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/G;->k(Z)V

    invoke-virtual {p0, p1}, Land;->M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    invoke-direct {p0, v0}, Land;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "tBannerView is null ,not show"

    invoke-virtual {p0, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "weakTBannerView is null ,not show"

    invoke-virtual {p0, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_FETCHED_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, p2}, Land;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public m()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    iget-object v0, p0, Land;->i:Lcom/cloud/hisavana/sdk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/b;->y()V

    :cond_0
    iget-object v0, p0, Land;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Land;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Land;->k:Land$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Land;->k:Land$a;

    :cond_2
    return-void
.end method
