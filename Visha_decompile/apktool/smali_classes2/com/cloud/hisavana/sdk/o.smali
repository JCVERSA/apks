.class public Lcom/cloud/hisavana/sdk/o;
.super Lcom/cloud/hisavana/sdk/z;
.source "SourceFile"


# instance fields
.field public e:Lr7;

.field public f:Lied;

.field public g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field public h:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/z;-><init>()V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    return-void
.end method

.method public static synthetic A(Lcom/cloud/hisavana/sdk/o;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->x(Ljava/util/List;)V

    return-void
.end method

.method private C(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    invoke-virtual {v0}, Lied;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->x(Ljava/util/List;)V

    return-void

    :cond_0
    const-string/jumbo v0, "start to load materials"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o;->H()V

    new-instance v0, Lcom/cloud/hisavana/sdk/h0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/h0;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/o$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/o$c;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/h0;->d(Lcom/cloud/hisavana/sdk/h0$g;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    invoke-virtual {v1}, Lied;->e()I

    move-result v1

    iget p0, p0, Lcom/cloud/hisavana/sdk/z;->d:I

    invoke-virtual {v0, p1, v1, v5, p0}, Lcom/cloud/hisavana/sdk/h0;->g(Ljava/util/List;III)V

    return-void
.end method

.method private synthetic D()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lied;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/o;->E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/o;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o;->D()V

    return-void
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o;->F()V

    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/o;)Lied;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    return-object p0
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/o;->z(Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/o;Landroidx/collection/ArraySet;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->m(Landroidx/collection/ArraySet;)V

    return-void
.end method

.method public static synthetic o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic p(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/o;->u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic q(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/o;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V

    return-void
.end method

.method public static synthetic r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static synthetic s(Lcom/cloud/hisavana/sdk/o;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->C(Ljava/util/List;)V

    return-void
.end method

.method private t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online ad fetch failed, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V

    return-void
.end method

.method private y(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 2

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    invoke-virtual {p1}, Lied;->e()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lied;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->a()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {p1}, Lied;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->l()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    invoke-virtual {p1}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->n()Ld29;

    move-result-object v0

    invoke-virtual {v0}, Ld29;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lied;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    invoke-virtual {p1}, Lied;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {p1}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lied;->a()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    invoke-virtual {p1}, Lied;->q()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    invoke-virtual {p1}, Lied;->r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lied;->r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->webPageReqInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    :cond_1
    invoke-virtual {p1}, Lied;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->t()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoRefresh:Z

    return-object p0
.end method

.method public static z(Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lr6;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Llmb;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lied;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lied;->r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lied;->r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p0

    invoke-static {p1, p0}, Llmb;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Llmb;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-static {p1}, Llmb;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/cloud/hisavana/sdk/z$a;->c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    return-void
.end method

.method public final synthetic F()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/o;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public final G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_online_status"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v0, "s_online_failed_reason_v2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lf09;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_ma_d_s"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 4

    iget v0, p0, Lcom/cloud/hisavana/sdk/z;->c:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lqba;

    invoke-direct {v1, p0}, Lqba;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lrba;

    invoke-direct {v1, p0}, Lrba;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    iget p0, p0, Lcom/cloud/hisavana/sdk/z;->c:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->k(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public final J()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_online_status"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    const-string v0, "s_online_failed_reason_v2"

    invoke-static {p0, v0}, Lf09;->j(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public a(Lied;)V
    .locals 11

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->y(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {}, Lr6;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    const-string/jumbo v0, "start load online ad."

    invoke-virtual {p0, v0, v2}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v1, v0, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o;->I()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->y(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lied;->g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v8

    invoke-virtual {p1}, Lied;->e()I

    move-result v7

    invoke-virtual {p1}, Lied;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch from server, impBean="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v2, Lr7;

    invoke-direct {v2}, Lr7;-><init>()V

    new-instance v10, Lcom/cloud/hisavana/sdk/o$b;

    const/4 v5, 0x1

    move-object v3, v10

    move-object v4, p0

    move-object v6, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/o$b;-><init>(Lcom/cloud/hisavana/sdk/o;ZLjava/lang/String;ILcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {v2, v10}, Lr7;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lr7;

    move-result-object v2

    new-instance v3, Lcom/cloud/hisavana/sdk/o$a;

    invoke-direct {v3, p0, p1, v0}, Lcom/cloud/hisavana/sdk/o$a;-><init>(Lcom/cloud/hisavana/sdk/o;Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {v2, v3}, Lr7;->o(Lr7$b;)Lr7;

    move-result-object p1

    invoke-static {}, Lr6;->p()Z

    move-result v2

    invoke-virtual {p1, v2}, Lr7;->k(Z)Lr7;

    move-result-object p1

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object v2

    invoke-virtual {v2}, Lcgc;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lr7;->q(Ljava/lang/String;)Lr7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lr7;->n(Ljava/lang/String;)Lr7;

    move-result-object p1

    invoke-virtual {p1, v0}, Lr7;->j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lr7;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->e:Lr7;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lxs8;->b()V

    :cond_3
    return-void
.end method

.method public final k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/w;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo v0, "ssp_load"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer unavailable, remove video ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final m(Landroidx/collection/ArraySet;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_online_return_filter"

    invoke-static {p0, v0, p1}, Lf09;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    const-string p2, "s_ma_d_fr"

    invoke-static {p0, p2, p1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lf09;->b(Ljava/util/concurrent/ConcurrentHashMap;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    :goto_0
    const-string p2, "s_ma_d_s"

    invoke-static {p0, p2, p1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTestResponse()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTestResponse(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAbTest()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAbTest(Ljava/util/List;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getExtInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExtInfo(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAdSeatType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdSeatType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAuctionSecondPrice(Ljava/lang/Double;)V

    sget-object p0, Lt6;->a:Lt6;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lt6;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setFullScreenFlag(Ljava/lang/Integer;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTrackingUrlBool()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOptimizeTracking(Z)V

    invoke-virtual {p1, p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdRequestVer(I)V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/U0;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getScales()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScales(Ljava/util/List;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setSource(I)V

    return-void
.end method

.method public final w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-static {}, Lr6;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    if-eqz p1, :cond_1

    const-string p1, ", codeSeatId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lied;

    invoke-virtual {p0}, Lied;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, ", adCreativeId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "OnlineAdNode"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 6

    const-string v0, "\n"

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    invoke-static {}, Lr6;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online ad fetch succeed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "adCreativeId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cis_offline_ad: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", source:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/cloud/hisavana/sdk/o;->w(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o;->J()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, v2}, Lcom/cloud/hisavana/sdk/z$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method
