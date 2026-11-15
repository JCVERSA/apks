.class public final Lcom/cloud/hisavana/sdk/x2;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/u3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/x2$b;
    }
.end annotation


# instance fields
.field private i:Lcom/cloud/hisavana/sdk/u5;

.field private j:Lcom/cloud/hisavana/sdk/x2$b;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic H(Lcom/cloud/hisavana/sdk/x2;)Lcom/cloud/hisavana/sdk/u5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 2
    .line 3
    return-object p0
.end method

.method private I(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private J(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_BIDDING_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :cond_0
    return-void
.end method

.method private K(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssp"

    .line 6
    .line 7
    const-string v2, "current native did not showed..."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2;->j:Lcom/cloud/hisavana/sdk/x2$b;

    .line 17
    .line 18
    invoke-virtual {v0, p2, p1, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private L(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "registerClickAndImpression"

    .line 6
    .line 7
    const-string v2, "ssp"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/J0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "adItem is null"

    .line 32
    .line 33
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getSecondPrice()D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {v0, v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setSecondPrice(D)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/x2;->K(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 51
    .line 52
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/u5;->e(Landroid/view/View;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string p3, "Native Ad start registered"

    .line 60
    .line 61
    invoke-virtual {p2, v2, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    const/16 p3, 0x8

    .line 71
    .line 72
    if-ne p3, p2, :cond_1

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method static synthetic M(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/x2;->U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private N(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setPrice(Ljava/lang/Double;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setAdCreativeId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setBiddingToken(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;->USD:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCurrency(Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/F;->d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 53
    .line 54
    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private O(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/F;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/F;->f:Ljava/util/List;

    .line 7
    .line 8
    const-string p3, "s_rec_temp_data"

    .line 9
    .line 10
    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/x2;->J(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->N(Ljava/util/List;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/F;->f:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->G(Ljava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setNativeBridge(Lcom/cloud/hisavana/sdk/u3;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/x2;->I(I)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x1

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setUseRecommend(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setRecommendInfos(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    const-string v0, "TranNative"

    .line 104
    .line 105
    const-string v1, "use recommendInfo"

    .line 106
    .line 107
    invoke-virtual {p3, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p3, "s_recommend_req"

    .line 111
    .line 112
    invoke-virtual {p2, p3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    :catchall_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 116
    .line 117
    if-eqz p3, :cond_7

    .line 118
    .line 119
    invoke-virtual {p3, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->r(Lcom/cloud/hisavana/sdk/F;Ljava/util/List;Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const/4 p2, 0x3

    .line 127
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/g1;->n(I)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 6

    .line 1
    if-eqz p3, :cond_5

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const-string v0, "TranNative"

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    check-cast p4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    const-string p4, "materialStyle is not empty not use recommend"

    .line 43
    .line 44
    invoke-virtual {p3, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->T(Ljava/util/List;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getShowWebLetterAdPrice()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    :cond_2
    const/16 v1, 0xa

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    int-to-double v4, v1

    .line 79
    cmpl-double v2, v2, v4

    .line 80
    .line 81
    if-ltz v2, :cond_4

    .line 82
    .line 83
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "high price ,not use recommend -> firstPrice:"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p4, ",showWebLetterAdPrice -> "

    .line 101
    .line 102
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-virtual {p3, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->T(Ljava/util/List;Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 125
    .line 126
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;-><init>()V

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v1, p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    const-string v2, "adsdto is empty,creat a new adsdto data"

    .line 137
    .line 138
    invoke-virtual {p4, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p4, "s_rec_temp_data"

    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p2, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .line 146
    .line 147
    :catchall_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/x2;->O(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->T(Ljava/util/List;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    return-void
.end method

.method static synthetic R(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/x2;->X(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/F;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/F;->f:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->N(Ljava/util/List;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    if-eqz p1, :cond_5

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/F;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->G(Ljava/util/List;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setNativeBridge(Lcom/cloud/hisavana/sdk/u3;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/x2;->I(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->r(Lcom/cloud/hisavana/sdk/F;Ljava/util/List;Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x3

    .line 67
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/g1;->n(I)V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void
.end method

.method private U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private X(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u5;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u5;->j()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u5;->j()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/x2;->U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/u5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/u5;-><init>(Lcom/cloud/hisavana/sdk/x2;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/hisavana/sdk/x2$b;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/x2$b;-><init>(Lcom/cloud/hisavana/sdk/x2;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->j:Lcom/cloud/hisavana/sdk/x2$b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public F(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/J0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/J0;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/listener/d;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public G(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->ad_badge_height:I

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public Q(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/x2;->a0()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/x2;->L(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public S(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssp"

    .line 6
    .line 7
    const-string v2, "native close ad ----\u300b"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/F;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/F;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lc7/b;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "isReady(), adId="

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/w2;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", isReady="

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v2, "TranNative"

    .line 49
    .line 50
    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return v0
.end method

.method public W(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "TranNative"

    .line 14
    .line 15
    const-string v1, "ad has been showed"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/F;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setAdShowed(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/x2;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :catchall_0
    return-void
.end method

.method public Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/x2$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/x2$a;-><init>(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/cloud/hisavana/sdk/x2;->P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/cloud/hisavana/sdk/x2;->P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/x2;->Y()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2;->i:Lcom/cloud/hisavana/sdk/u5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u5;->d()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
