.class Lcom/cloud/hisavana/sdk/o$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->a(Lied;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field public final synthetic f:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/o;ZLjava/lang/String;ILcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/o$b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/hisavana/sdk/o$b;->c:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/o$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/o$b;->l(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method public static synthetic l(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 1

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lspc;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    if-eqz p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load ad error: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ssp_load"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/o$b;->m(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    return-void
.end method

.method public m(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lie9;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    const/4 v2, -0x1

    if-eqz v0, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {}, Lr6;->p()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_RESPONSE_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_1
    invoke-static {}, Lr6;->l()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v12, v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getRecommendInfos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    move v7, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->getRecommend()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v6, v6, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v6, v6, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    invoke-interface {v6, v0}, Lcom/cloud/hisavana/sdk/z$a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v6

    const-string v7, "OnlineAdNode"

    const-string v8, "processWebRecommendInfo error"

    invoke-virtual {v6, v7, v8, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_b

    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/cloud/hisavana/sdk/o$b;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response pmid is diffrent with request\'s, request is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_PLACEMENT_ID_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_6
    iget v6, v1, Lcom/cloud/hisavana/sdk/o$b;->c:I

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_7

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v2, "response adt is diffrent with request\'s"

    invoke-static {v0, v2, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_TYPE_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_7
    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdRequestVer()I

    move-result v5

    add-int/2addr v5, v12

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v10, :cond_a

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v6, v6, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v7, "filter: ad is null, remove from list"

    invoke-static {v6, v7, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFill_ts(Ljava/lang/Long;)V

    iget v6, v1, Lcom/cloud/hisavana/sdk/o$b;->c:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_b

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getShowTime()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setShowTime(Ljava/lang/Integer;)V

    :cond_b
    invoke-static {v10}, Lhp0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v8, "filter: CacheAdExpiredUtil.isCacheAdEnd"

    invoke-static {v6, v8, v10}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v6, v6, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_c
    sget-object v6, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {v6, v10}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v10}, Lhp0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v6, v6, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v7, "filter:CacheAdExpiredUtil.isOfflineAdEfficient is false"

    invoke-static {v6, v7, v10}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgw5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v9, v4}, Lov7;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v12, :cond_e

    if-ne v4, v7, :cond_f

    :cond_e
    move-object v6, v10

    move-object/from16 v22, v11

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setInteractiveAd()V

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/o$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-object v7, v10

    move-object v9, v3

    move-object v4, v10

    move v10, v5

    move-object/from16 v22, v11

    move-object v11, v14

    invoke-static/range {v6 .. v11}, Lcom/cloud/hisavana/sdk/o;->q(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/w;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v6

    if-ne v6, v2, :cond_10

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v7, "filter: video data format failed"

    invoke-static {v6, v7, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    :goto_6
    move-object/from16 v11, v22

    :goto_7
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgw5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    :cond_11
    sget-object v6, Lnrd;->a:Lnrd;

    invoke-virtual {v6}, Lnrd;->b()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v6, v4}, Lcom/cloud/hisavana/sdk/o;->j(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v4, v4, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_12
    sget-object v6, Ldw5;->a:Ldw5;

    iget-object v7, v1, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-virtual {v6, v4, v7}, Ldw5;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v4, v4, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/16 v6, 0x45d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_13
    sget-object v6, Latd;->a:Latd;

    invoke-virtual {v6, v4}, Latd;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    goto :goto_6

    :goto_8
    if-ne v4, v12, :cond_14

    iget-object v9, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v9, v9, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    if-ne v4, v7, :cond_15

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v8, v8, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_9
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v4, v12, :cond_16

    move v7, v12

    :cond_16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v8, v22

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    const-string v7, "filter:filterResult == Constants.FilterResult.NEW_BUT_EXIT || filterResult == Constants.FilterResult.PULL_BUT_NOT_EXIT"

    invoke-static {v4, v7, v6}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    move-object v11, v8

    goto/16 :goto_7

    :cond_17
    move-object v8, v11

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-eqz v2, :cond_18

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-virtual {v2, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestVer(I)V

    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v3, v1, Lcom/cloud/hisavana/sdk/o$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    new-instance v4, Lcom/cloud/hisavana/sdk/q;

    invoke-direct {v4, v3}, Lcom/cloud/hisavana/sdk/q;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {v2, v4}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    :cond_18
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v2, :cond_19

    iget-object v3, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/o$b;->b:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-static/range {v15 .. v21}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    :cond_19
    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v3, v2, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/o;->n(Lcom/cloud/hisavana/sdk/o;Landroidx/collection/ArraySet;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    iget-object v4, v4, Lcom/cloud/hisavana/sdk/o;->h:Landroidx/collection/ArraySet;

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V

    invoke-static {}, Lr6;->p()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg4:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/cloud/sdk/commonutil/util/b;->b(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online request result after filtered, count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/cloud/hisavana/sdk/o;->r(Lcom/cloud/hisavana/sdk/o;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_ONLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_a

    :cond_1b
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/o;->s(Lcom/cloud/hisavana/sdk/o;Ljava/util/List;)V

    goto :goto_a

    :cond_1c
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_ONLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/i;->M()Lcom/cloud/hisavana/sdk/i;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/cloud/hisavana/sdk/i;->C(Ljava/util/List;)V

    goto :goto_c

    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_ADS_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_1e
    const-string/jumbo v3, "ssp_load"

    if-eqz v0, :cond_1f

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "business error: code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_c

    :cond_1f
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v4, "business error: response is null"

    invoke-virtual {v0, v3, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/o$b;->f:Lcom/cloud/hisavana/sdk/o;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v3, "response is null"

    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_c
    return-void
.end method
