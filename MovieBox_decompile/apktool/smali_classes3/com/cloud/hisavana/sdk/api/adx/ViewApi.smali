.class public Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cloud/hisavana/sdk/F;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Z

.field protected f:Lcom/cloud/hisavana/sdk/api/listener/d;

.field protected g:Z

.field protected h:Z

.field protected i:Ld7/a;

.field protected j:Ld7/b;

.field protected k:Landroidx/collection/b;

.field private l:J


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
    new-instance p1, Landroidx/collection/b;

    invoke-direct {p1}, Landroidx/collection/b;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/collection/b;

    invoke-direct {p1}, Landroidx/collection/b;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:J

    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->q(Lcom/cloud/hisavana/sdk/F;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/F;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v5, p2

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :catchall_0
    return-void
.end method

.method protected b()Z
    .locals 9

    .line 1
    sget-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "ssp"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "AppId is empty, please check your config."

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_APP_ID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "You should init first"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->n()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:J

    .line 58
    .line 59
    sub-long v7, v3, v7

    .line 60
    .line 61
    cmp-long v0, v7, v5

    .line 62
    .line 63
    if-lez v0, :cond_3

    .line 64
    .line 65
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:J

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    return v0

    .line 69
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "Ad request rate limit exceeded\uff0ccurrent interval is"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v1
.end method

.method public destroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "ssp"

    .line 24
    .line 25
    const-string v2, "ViewApi mLoadedAd destroy"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/collection/b;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ge v0, v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/collection/b;->o(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/cloud/hisavana/sdk/F;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/collection/b;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :catchall_0
    :cond_4
    return-void
.end method

.method public getAdSource()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->q()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getBidPrice()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->t()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
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

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ld7/b;->a()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0
.end method

.method public getFillAdType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ld7/b;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0
.end method

.method public getGameScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ld7/b;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0
.end method

.method public getRequest()Ld7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Ld7/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAdValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.1.0"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isDefaultAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_1
    if-nez v1, :cond_2

    .line 15
    .line 16
    new-instance v2, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "s_err_code"

    .line 39
    .line 40
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_OUTER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 44
    .line 45
    invoke-virtual {p0, v0, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return v1
.end method

.method public loadAd(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/F;->j(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V

    .line 6
    .line 7
    .line 8
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

    .line 1
    new-instance v0, Ld7/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ld7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Ld7/b;

    .line 7
    .line 8
    return-void
.end method

.method public setBidding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultFillTimeoutDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnlyFetchDefaultAd(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    .line 6
    .line 7
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequest(Ld7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Ld7/a;

    .line 2
    .line 3
    return-void
.end method
