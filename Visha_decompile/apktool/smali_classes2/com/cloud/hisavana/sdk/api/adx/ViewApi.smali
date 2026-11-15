.class public Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;
    }
.end annotation


# instance fields
.field public b:Lcom/cloud/hisavana/sdk/G;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Ln6;

.field public h:Z

.field public i:Z

.field public j:Lw6;

.field public k:Ld29;

.field public l:Landroidx/collection/ArraySet;

.field public m:J

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->m:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->m:J

    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->q(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b()Z
    .locals 9

    sget-object v0, Lr6;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "ssp"

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v3, "AppId is empty, please check your config."

    invoke-virtual {v0, v2, v3}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Ln6;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_APP_ID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Ln6;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "You should init first"

    invoke-virtual {p0, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->n()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->m:J

    sub-long v7, v3, v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->m:J

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad request rate limit exceeded\uff0ccurrent interval is"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getShowInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastShowAdTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateDownloadCount, current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",lastShowAdTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",showInterval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssp"

    invoke-virtual {p1, v5, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    int-to-long p0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Ln6;

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "ssp"

    const-string v2, "ViewApi mLoadedAd destroy"

    invoke-virtual {v0, v1, v2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/G;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public enterScene(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->n:Ljava/lang/String;

    sget-object v0, Lr6;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "ssp"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "AppId is empty, please check your config."

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "you should init first"

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "enterScene,mPlacementId is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lspc;->b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v0

    invoke-virtual {v0}, Lspc;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "The local machine has cloud control data, but the current code location configuration does not exist"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatType(Ljava/lang/Integer;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdEnable(Z)V

    iget v2, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:I

    if-ltz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setFillTimeoutDuration(Ljava/lang/Integer;)V

    :cond_4
    sget-object v2, Lo02;->a:Lo02;

    invoke-virtual {v2, v0}, Lo02;->a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    :cond_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current adType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The current code segment has reached its maximum display limit. ----- Display counts = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", display limit = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdShowCountLimit()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "ad show not in interval"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public getAdReadyStatusWithoutTracking()I
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-nez p0, :cond_0

    const/16 p0, 0x45b

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result p0

    return p0
.end method

.method public getAdSource()I
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->q()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAdType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBidPrice()D
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->t()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getExtInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    invoke-virtual {v0}, Lied;->n()Ld29;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p0

    invoke-virtual {p0}, Lied;->n()Ld29;

    move-result-object p0

    invoke-virtual {p0}, Ld29;->a()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFillAdType()I
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->u()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    invoke-virtual {v0}, Lied;->n()Ld29;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p0

    invoke-virtual {p0}, Lied;->n()Ld29;

    move-result-object p0

    invoke-virtual {p0}, Ld29;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getGameScene()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    invoke-virtual {v0}, Lied;->n()Ld29;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p0

    invoke-virtual {p0}, Lied;->n()Ld29;

    move-result-object p0

    invoke-virtual {p0}, Ld29;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRequest()Lw6;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lw6;

    return-object p0
.end method

.method public isAdValid()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.1.0"
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

    move-result p0

    return p0
.end method

.method public isDefaultAd()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMatchVulgarBrand()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->B()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOfflineAd()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "s_err_code"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_OUTER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_2
    return v1
.end method

.method public loadAd(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/G;->j(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V

    :cond_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ld29;

    invoke-direct {v0, p1, p2, p3}, Ld29;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Ld29;

    return-void
.end method

.method public setBidding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Z

    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:Z

    return-void
.end method

.method public setDefaultFillTimeoutDuration(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:I

    return-void
.end method

.method public setListener(Ln6;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Ln6;

    return-void
.end method

.method public setOnlyFetchDefaultAd(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Z

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    return-void
.end method

.method public setRequest(Lw6;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lw6;

    return-void
.end method
