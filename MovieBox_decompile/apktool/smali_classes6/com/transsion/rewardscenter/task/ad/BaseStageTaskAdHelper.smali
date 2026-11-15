.class public abstract Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;,
        Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

.field public static final f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:J

.field private d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic A(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: startClaim"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final synthetic a(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/String;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "expDuration"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x7530

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method public final f(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    new-instance v5, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$fetchMemberAdTaskInfo$2$1;

    .line 26
    .line 27
    invoke-direct {v5, p1, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$fetchMemberAdTaskInfo$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "adBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    move-object v1, p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    if-nez p1, :cond_0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_0

    .line 104
    .line 105
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final i(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Z
    .locals 4

    .line 1
    const-string v0, "adBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    sget-object v0, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, v3, p1}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :goto_0
    move v1, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x2

    .line 80
    if-ne p1, v0, :cond_1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/4 p1, 0x0

    .line 103
    :goto_2
    if-eqz p1, :cond_1

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_1

    .line 123
    .line 124
    :goto_3
    return v1
.end method

.method public final j(Lcom/transsion/rewardscenter/task/ad/v$a;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->g()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sub-long/2addr v0, v2

    .line 32
    const-wide/32 v2, 0x2bf20

    .line 33
    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    :goto_1
    return p1
.end method

.method public final k(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->g()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sub-long/2addr v0, v2

    .line 32
    const-wide/32 v2, 0x2bf20

    .line 33
    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    :goto_1
    return p1
.end method

.method public final l(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->PLAYING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    .line 18
    .line 19
    sub-long/2addr v1, v3

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->q(J)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->j()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "----> onResume playedTime: "

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v7, 0x4

    .line 47
    const/4 v8, 0x0

    .line 48
    const-string v4, "StageTaskAd"

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->j()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->e(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    cmp-long v1, v1, v3

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    if-ltz v1, :cond_1

    .line 74
    .line 75
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->PLAYED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_1
    const-string v1, "Play for 30 seconds to get the reward."

    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_2
    return v0
.end method

.method public final m(Lcom/transsion/rewardscenter/task/ad/v$a;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v1, v2, v4}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 44
    .line 45
    .line 46
    move v1, v0

    .line 47
    move p1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->j(Lcom/transsion/rewardscenter/task/ad/v$a;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v1, 0x0

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->o(J)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 76
    .line 77
    .line 78
    move p1, v0

    .line 79
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move p1, v0

    .line 82
    move v1, p1

    .line 83
    :goto_0
    if-nez p1, :cond_3

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    :cond_3
    move v0, v3

    .line 88
    :cond_4
    return v0
.end method

.method public final n(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v4, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 19
    .line 20
    if-ne v1, v4, :cond_3

    .line 21
    .line 22
    :cond_1
    sget-object v1, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v1, v4, v5}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 52
    .line 53
    .line 54
    move v1, v0

    .line 55
    move p1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->k(Lcom/transsion/rewardscenter/task/ad/v$c;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->o(J)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    .line 82
    .line 83
    .line 84
    move p1, v0

    .line 85
    move v1, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move p1, v0

    .line 88
    move v1, p1

    .line 89
    :goto_0
    if-nez p1, :cond_4

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    :cond_4
    move v0, v3

    .line 94
    :cond_5
    return v0
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    .line 6
    .line 7
    return-void
.end method

.method public final p()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "cooldownDays"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x3

    .line 23
    :goto_0
    return p1
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    .line 10
    .line 11
    const-string v3, "MemberTaskStageNativeScene"

    .line 12
    .line 13
    invoke-static {v0, v3, v2, v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;->b(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->u()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->t()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    .line 29
    .line 30
    const-string v3, "MemberTaskRegularNativeScene"

    .line 31
    .line 32
    invoke-static {v0, v3, v2, v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;->b(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :cond_2
    sub-int v0, v1, v0

    .line 40
    .line 41
    :cond_3
    :goto_1
    return v0
.end method

.method public final t()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->g()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final u()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->h()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final v()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final w()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->k()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final x(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    .line 2
    .line 3
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/u;->u(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->k()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    move-object v3, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->h()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->g()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->i()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    move-object v3, v1

    .line 78
    :goto_1
    if-eqz v3, :cond_7

    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    new-instance v1, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    move-object v2, v1

    .line 88
    move-object v4, p0

    .line 89
    move-object v5, p1

    .line 90
    move-object v6, p2

    .line 91
    invoke-direct/range {v2 .. v7}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;-><init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 92
    .line 93
    .line 94
    const/4 v8, 0x3

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    move-object v4, v0

    .line 99
    move-object v7, v1

    .line 100
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_6
    if-nez v1, :cond_9

    .line 105
    .line 106
    :cond_7
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    .line 107
    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    invoke-interface {p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->b()V

    .line 111
    .line 112
    .line 113
    :cond_8
    const/4 p1, 0x0

    .line 114
    const-string p2, "Failed to claim points."

    .line 115
    .line 116
    invoke-static {p1, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    :cond_9
    return-void
.end method
