.class public Lcom/cloud/hisavana/sdk/k;
.super Lcom/cloud/hisavana/sdk/z;
.source "SourceFile"


# instance fields
.field public e:Lied;

.field public f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/z;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/k;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k;->n(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lied;)V
    .locals 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/k;->m(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/k;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {}, Lr6;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg10:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    const-string/jumbo v0, "start load offline ad."

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/k;->k(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    invoke-virtual {v0}, Lied;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lr6;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/i;->M()Lcom/cloud/hisavana/sdk/i;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    invoke-virtual {v3}, Lied;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    invoke-virtual {v4}, Lied;->q()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/cloud/hisavana/sdk/i;->A(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p1}, Lied;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lied;->q()I

    move-result p1

    if-ne p1, v2, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/i;->M()Lcom/cloud/hisavana/sdk/i;

    move-result-object v1

    iget v3, p0, Lcom/cloud/hisavana/sdk/z;->d:I

    new-instance v7, Lww6;

    invoke-direct {v7, p0}, Lww6;-><init>(Lcom/cloud/hisavana/sdk/k;)V

    const/4 v5, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/i;->z(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/i$c;)V

    return-void
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1, p0}, Lcom/cloud/hisavana/sdk/w;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExoPlayer unavailable, remove video ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OfflineAdNode"

    invoke-virtual {v2, v3, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_offline_status"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v0, "s_offline_failed_reason"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p0, v0, p1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offline ad fetch failed, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/k;->k(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/k;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offline_ad_status"

    invoke-static {v0, v1, p2}, Lf09;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lr6;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    const-string v1, "OfflineAdNode"

    if-nez v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", codeSeatId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    invoke-virtual {p0}, Lied;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    const-string v0, "\n"

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    invoke-static {}, Lr6;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offline ad fetch succeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "adCreativeId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff0cis_offline_ad: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", source:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/k;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k;->o()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offline_ad_status"

    invoke-static {v0, v1, p2}, Lf09;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lnrd;->a:Lnrd;

    invoke-virtual {p2}, Lnrd;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/k;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/z$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final m(Lied;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
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

    invoke-virtual {p1}, Lied;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    invoke-virtual {p1}, Lied;->t()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoRefresh:Z

    return-object p0
.end method

.method public final synthetic n(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k;->l(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final o()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k;->e:Lied;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lied;->p()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "s_offline_status"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lf09;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
