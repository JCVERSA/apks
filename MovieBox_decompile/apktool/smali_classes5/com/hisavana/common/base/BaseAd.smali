.class public abstract Lcom/hisavana/common/base/BaseAd;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/Iad;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adSource:I

.field private additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

.field protected isContainVulgarContent:Z

.field private isDestroyed:Z

.field protected isLoaded:Z

.field protected isOfflineAd:Z

.field private isPreload:Z

.field private isTimeOut:Z

.field protected mAdCount:I

.field protected mAdUnit:Ljava/lang/String;

.field public final mBundle:Landroid/os/Bundle;

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrActivityFullscreen:Z

.field protected mExtInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mGameName:Ljava/lang/String;

.field protected mGameScene:Ljava/lang/String;

.field private mImpressionTime:J

.field protected final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadStatus:I

.field private mLoadedTime:J

.field protected final mNetwork:Lcom/hisavana/common/bean/Network;

.field protected mRequestId:Ljava/lang/String;

.field private mRequestRound:I

.field protected mShowId:Ljava/lang/String;

.field protected mTriggerId:Ljava/lang/String;

.field private maxPrice:D

.field private mediatorSourceName:Ljava/lang/String;

.field private mediatorSourceUnitId:Ljava/lang/String;

.field private price:D

.field private requestTime:J

.field protected requestType:I

.field protected runTimer:Lcom/hisavana/common/utils/RunTimer;

.field private sceneId:Ljava/lang/String;

.field private sceneToken:Ljava/lang/String;

.field public secondPrice:D

.field protected startTime:J

.field private supportHisavanaFlag:I

.field protected timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

.field private ttl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isTimeOut:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/hisavana/common/base/BaseAd;->supportHisavanaFlag:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 11
    .line 12
    const-string v1, "BaseAd"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/hisavana/common/base/BaseAd;->mRequestRound:I

    .line 31
    .line 32
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mShowId:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isDestroyed:Z

    .line 47
    .line 48
    new-instance v0, Lcom/hisavana/common/base/BaseAd$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/hisavana/common/base/BaseAd$1;-><init>(Lcom/hisavana/common/base/BaseAd;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/Preconditions;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 66
    .line 67
    return-void
.end method

.method private adFailedToLoadTemp(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/hisavana/common/manager/RequestingAdManager;->removeRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Ad request has been destroyed or loaded,isLoaded = "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",isDestroyed = "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isDestroyed:Z

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "( triggerId is "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", code seat id is "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " )"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "BaseAd"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 87
    .line 88
    new-instance v0, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x7533

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v2, v1

    .line 103
    :goto_1
    if-nez v2, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    move v1, v2

    .line 107
    :goto_2
    const-string v2, "error_code"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    const-string v1, "null"

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_3
    const-string v2, "error_message"

    .line 126
    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 131
    .line 132
    const-string v2, "request_num"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/hisavana/common/base/BaseAd;->errorCallBack(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->supportTimer()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->stopTimer()V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private adLoadedTemp()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad request has been destroyed or loaded,isLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isDestroyed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "( triggerId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code seat id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "BaseAd"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/manager/RequestingAdManager;->removeRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 5
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSuccess adSource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v1}, Lcom/hisavana/common/base/BaseAd;->addDataToAdCache(Ljava/util/List;)V

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string v2, "error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v2, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    const-string v3, "request_num"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    const-string v2, "is_internal_ad"

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->mLoadedTime:J

    .line 18
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseAd;->loadedCallBack(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->supportTimer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->stopTimer()V

    :cond_3
    return-void
.end method

.method private adLoadedTemp(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad request has been destroyed or loaded,isLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isDestroyed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hisavana/common/base/BaseAd;->isDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "( triggerId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code seat id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "BaseAd"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/manager/RequestingAdManager;->removeRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 25
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    if-eqz v0, :cond_1

    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSuccess adSource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-direct {p0, p1}, Lcom/hisavana/common/base/BaseAd;->addDataToAdCache(Ljava/util/List;)V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_4

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 34
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 35
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 36
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 37
    :cond_3
    const-string v3, "is_internal_ad"

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    :cond_4
    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->mLoadedTime:J

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/hisavana/common/base/BaseAd;->loadedCallBack(Ljava/util/List;Ljava/util/List;)V

    .line 42
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->supportTimer()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->stopTimer()V

    :cond_5
    return-void
.end method

.method private addDataToAdCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq v1, v2, :cond_5

    .line 18
    .line 19
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 20
    .line 21
    if-nez v1, :cond_5

    .line 22
    .line 23
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 34
    .line 35
    iget v2, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/hisavana/common/bean/AdCache;->getAdBySourceAndUnitID(Ljava/lang/String;IZ)Lcom/hisavana/common/interfacz/ICacheAd;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    :goto_0
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/4 v3, 0x0

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    :goto_1
    cmpl-double v1, v1, v3

    .line 78
    .line 79
    if-ltz v1, :cond_5

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 83
    .line 84
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, p1, p0}, Lcom/hisavana/common/bean/AdCache;->addCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/bean/AdCache;->addCaches(Ljava/lang/String;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    :goto_3
    return-void
.end method

.method private addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method

.method private appendContextParam(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "trigger_id"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 13
    .line 14
    const-string v1, "trigger_ts"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 24
    .line 25
    const-string v1, "ad_type"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v1, "cld_app_id"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v1, "cld_code_seat_id"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 57
    .line 58
    const-string v1, "platform"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 68
    .line 69
    const-string v1, "app_id"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 79
    .line 80
    const-string v1, "code_seat_id"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 90
    .line 91
    const-string v1, "bidding_price"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 101
    .line 102
    const-string v1, "priority"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 112
    .line 113
    const-string v1, "ad_count"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 123
    .line 124
    const-string v1, "is_retreatad"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    const-string v0, "is_default_ad"

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 140
    .line 141
    const-string v1, "request_ts"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 151
    .line 152
    const-string v1, "request_time"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 162
    .line 163
    const-string v1, "request_id"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 173
    .line 174
    const-string v1, "return_ts"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 184
    .line 185
    const-string v1, "return_time"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 195
    .line 196
    const-string v1, "request_type"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 206
    .line 207
    const-string v1, "biddingType"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method private errorCallBack(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1, p1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method private getBaseAdditionalInfo()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPlacementId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lk7/c;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMcc(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 19
    .line 20
    const-string v2, "trigger_id"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTriggerId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v2, "traffic_group_id"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTrafficGroupId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 41
    .line 42
    const-string v2, "experiment_group_id"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setExperimentGroupId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isCollapsible()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCollapsibleBanner(Z)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method private getBiddingPrice()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->getNetworkType(Lcom/hisavana/common/bean/Network;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getTempPrice()D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 37
    .line 38
    :goto_0
    return-wide v0
.end method

.method private getShowAdditionalInfo(Lcom/hisavana/common/bean/AdNativeInfo;)Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->getBaseAdditionalInfo()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v2, "bidding_price"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->isWaterFallExecutor()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    const-string v1, "estimated"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "exact"

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecision(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "USD"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrency(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    if-nez p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->isInternalAd()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setInternalAd(Ljava/lang/Boolean;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method private isWaterFallExecutor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isWaterFall(Lcom/hisavana/common/bean/Network;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private loadedCallBack(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onLoad()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private loadedCallBack(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onLoad(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private saveShowedValue(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, ">>>>> codeSeatId: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " | adType : "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " | valueMicros: "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "ad_flow"

    .line 74
    .line 75
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 20
    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->getClickAdditionalInfo(Lcom/hisavana/common/bean/AdNativeInfo;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setPackageName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getImageUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setImageUrl(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->logClick(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->getClickAdditionalInfo(Lcom/hisavana/common/bean/AdNativeInfo;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, p1, v2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method protected adClosed()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->logClose(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 2
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onClosed(I)V

    :cond_1
    return-void
.end method

.method protected adClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->logClose(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_1
    return-void
.end method

.method protected adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoadTemp(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    :goto_0
    invoke-static {v1}, Lcom/hisavana/common/mock/RecordTestInfo;->getLogMsg(Lcom/hisavana/common/interfacz/ICacheAd;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "  isSupportFlag = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->supportHisavanaFlag:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget v1, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE12:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->SUCCESS_MESSAGE:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, p1, v1, v0}, Lcom/hisavana/common/base/BaseAd;->logImpression(Lcom/hisavana/common/bean/TAdNativeInfo;ZLcom/hisavana/common/bean/TAdErrorCode;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->mImpressionTime:J

    .line 52
    .line 53
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 71
    .line 72
    :goto_1
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-direct {p0, p1}, Lcom/hisavana/common/base/BaseAd;->getShowAdditionalInfo(Lcom/hisavana/common/bean/AdNativeInfo;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, p1, v2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public adLoaded()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->adLoadedTemp()V

    return-void
.end method

.method public adLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adLoadedTemp(Ljava/util/List;)V

    return-void
.end method

.method public adReturnTracking(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const-string v1, "cld_configure_id"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 23
    .line 24
    const-string v1, "trigger_id"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 34
    .line 35
    const-string v1, "trigger_ts"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 45
    .line 46
    const-string v2, "request_ts"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    sub-long/2addr v3, v0

    .line 68
    long-to-int v0, v3

    .line 69
    const-string v1, "request_time"

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 75
    .line 76
    const-string v1, "request_id"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    const-string v3, "return_ts"

    .line 90
    .line 91
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iget-object v4, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    sub-long/2addr v0, v4

    .line 105
    long-to-int v0, v0

    .line 106
    const-string v1, "return_time"

    .line 107
    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    iget-object v5, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 127
    .line 128
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    sub-long/2addr v3, v5

    .line 133
    long-to-int v2, v3

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 138
    .line 139
    const-string v1, "ad_type"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 149
    .line 150
    const-string v1, "cld_app_id"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 160
    .line 161
    const-string v1, "cld_code_seat_id"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 171
    .line 172
    const-string v1, "platform"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 182
    .line 183
    const-string v1, "app_id"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 193
    .line 194
    const-string v1, "code_seat_id"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->getBiddingPrice()D

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    const-string v0, "bidding_price"

    .line 208
    .line 209
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 210
    .line 211
    .line 212
    iget-object v4, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "adReturnTracking code_seat_id:"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ",bidding_price:"

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 256
    .line 257
    const-string v1, "priority"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 267
    .line 268
    const-string v1, "ad_count"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 278
    .line 279
    const-string v1, "is_retreatad"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    const-string v0, "is_default_ad"

    .line 289
    .line 290
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 295
    .line 296
    const-string v1, "request_type"

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 306
    .line 307
    const-string v1, "is_pre_trigger"

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 317
    .line 318
    const-string v1, "ad_title"

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 328
    .line 329
    const-string v1, "ad_url"

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 339
    .line 340
    const-string v1, "description"

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 350
    .line 351
    const-string v1, "image_url"

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const-string v1, "image_url"

    .line 358
    .line 359
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 363
    .line 364
    const-string v1, "icon_url"

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v1, "icon_url"

    .line 371
    .line 372
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 376
    .line 377
    const-string v1, "endcard_url"

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const-string v1, "endcard_url"

    .line 384
    .line 385
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 389
    .line 390
    const-string v1, "app_name"

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const-string v1, "app_name"

    .line 397
    .line 398
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 402
    .line 403
    const-string v1, "package_name"

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const-string v1, "package_name"

    .line 410
    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 415
    .line 416
    const-string v1, "native_info_list"

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    const-string v1, "native_info_list"

    .line 423
    .line 424
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 428
    .line 429
    const-string v1, "download_url"

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    const-string v1, "download_url"

    .line 436
    .line 437
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const-string v0, "is_timeout"

    .line 441
    .line 442
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isTimeOut:Z

    .line 443
    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 445
    .line 446
    .line 447
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 448
    .line 449
    const-string v1, "request_num"

    .line 450
    .line 451
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_2

    .line 459
    .line 460
    const-wide/16 v0, 0x1

    .line 461
    .line 462
    goto :goto_0

    .line 463
    :cond_2
    const-wide/16 v0, 0x0

    .line 464
    .line 465
    :goto_0
    const-string v2, "is_offline_ad"

    .line 466
    .line 467
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 471
    .line 472
    const-string v1, "ad_trigger_status"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    int-to-long v0, v0

    .line 479
    const-string v2, "ad_trigger_status"

    .line 480
    .line 481
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 482
    .line 483
    .line 484
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 485
    .line 486
    const-string v1, "request_round"

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    const-string v1, "request_round"

    .line 493
    .line 494
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 498
    .line 499
    const-string v1, "traffic_group_id"

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const-string v1, "traffic_group_id"

    .line 506
    .line 507
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 511
    .line 512
    const-string v1, "experiment_group_id"

    .line 513
    .line 514
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const-string v1, "experiment_group_id"

    .line 519
    .line 520
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 524
    .line 525
    const-string v1, "optimize_status"

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    const-string v1, "optimize_status"

    .line 532
    .line 533
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 537
    .line 538
    const-string v1, "priority_code"

    .line 539
    .line 540
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    const-string v1, "priority_code"

    .line 545
    .line 546
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 547
    .line 548
    .line 549
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 550
    .line 551
    const-string v1, "mediator_source"

    .line 552
    .line 553
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 557
    .line 558
    const-string v1, "mediator_code_seat_id"

    .line 559
    .line 560
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 564
    .line 565
    if-eqz v0, :cond_3

    .line 566
    .line 567
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 572
    .line 573
    .line 574
    move-result-wide v0

    .line 575
    goto :goto_1

    .line 576
    :cond_3
    const-wide/16 v0, 0x0

    .line 577
    .line 578
    :goto_1
    const-string v2, "price_coefficient"

    .line 579
    .line 580
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 581
    .line 582
    .line 583
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 584
    .line 585
    const-string v1, "biddingType"

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    const-string v1, "biddingType"

    .line 592
    .line 593
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 597
    .line 598
    if-nez v0, :cond_4

    .line 599
    .line 600
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    .line 601
    .line 602
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    const-string v2, "ew_request_strategy"

    .line 607
    .line 608
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/b;->a()J

    .line 612
    .line 613
    .line 614
    move-result-wide v0

    .line 615
    const-string v2, "ew_strategy_var_id"

    .line 616
    .line 617
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 618
    .line 619
    .line 620
    :cond_4
    invoke-static {p1}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdReturn(Landroid/os/Bundle;)V

    .line 621
    .line 622
    .line 623
    :cond_5
    :goto_2
    return-void
.end method

.method protected adTrackingRequest()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adTrackingRequest code_seat_id:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",bidding_price:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 24
    .line 25
    const-string v2, "bidding_price"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 42
    .line 43
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 44
    .line 45
    const-string v2, "ad_count"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 51
    .line 52
    const-string v1, "is_retreatad"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 59
    .line 60
    const-string v1, "is_default_ad"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 80
    .line 81
    const-string v1, "trigger_id"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, "request_id"

    .line 94
    .line 95
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "cloudControlVersion"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v3, "cld_configure_id"

    .line 111
    .line 112
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 116
    .line 117
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 118
    .line 119
    const-string v3, "request_num"

    .line 120
    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 125
    .line 126
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mRequestRound:I

    .line 127
    .line 128
    const-string v3, "request_round"

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 136
    .line 137
    if-eqz v1, :cond_1

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const-wide/16 v3, 0x0

    .line 149
    .line 150
    :goto_0
    const-string v1, "price_coefficient"

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 156
    .line 157
    const-string v1, "is_preload"

    .line 158
    .line 159
    iget-boolean v3, p0, Lcom/hisavana/common/base/BaseAd;->isPreload:Z

    .line 160
    .line 161
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const/4 v1, 0x1

    .line 171
    if-nez v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isQueryPriceNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    :cond_2
    move v2, v1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 183
    .line 184
    if-eqz v2, :cond_4

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    const/4 v1, 0x2

    .line 188
    :goto_1
    const-string v2, "biddingType"

    .line 189
    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 194
    .line 195
    if-nez v0, :cond_5

    .line 196
    .line 197
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 198
    .line 199
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const-string v3, "ew_request_strategy"

    .line 206
    .line 207
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/manager/b;->a()J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    const-string v3, "ew_strategy_var_id"

    .line 217
    .line 218
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 222
    .line 223
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdRequest(Landroid/os/Bundle;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x2

    .line 19
    if-le p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public admobShowPriceTracking(FLjava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v2, "trigger_id"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v2, "request_id"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 29
    .line 30
    const-string v2, "cld_app_id"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 40
    .line 41
    const-string v2, "app_id"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 51
    .line 52
    const-string v2, "cld_code_seat_id"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 62
    .line 63
    const-string v2, "code_seat_id"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "ad_value"

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 75
    .line 76
    .line 77
    const-string p1, "advalue_currency_code"

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "ad_value_type"

    .line 83
    .line 84
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    const-string p3, "event_ts"

    .line 92
    .line 93
    invoke-virtual {v0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 97
    .line 98
    const-wide/16 p2, 0x0

    .line 99
    .line 100
    if-nez p1, :cond_0

    .line 101
    .line 102
    move-wide v1, p2

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    :goto_0
    const-string p1, "bidding_price"

    .line 113
    .line 114
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 118
    .line 119
    if-nez p1, :cond_1

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    :goto_1
    const-string v1, "ad_type"

    .line 128
    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 133
    .line 134
    const-string v1, "traffic_group_id"

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 144
    .line 145
    const-string v1, "experiment_group_id"

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 155
    .line 156
    const-string v1, "mediator_source"

    .line 157
    .line 158
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 162
    .line 163
    const-string v1, "mediator_code_seat_id"

    .line 164
    .line 165
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 169
    .line 170
    if-eqz p1, :cond_2

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 177
    .line 178
    .line 179
    move-result-wide p2

    .line 180
    :cond_2
    const-string p1, "price_coefficient"

    .line 181
    .line 182
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdmobShowPrice(Landroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isDestroyed:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->detachContext()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->stopTimer()V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "error_code"

    .line 22
    .line 23
    const/16 v2, 0x7535

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_REQUEST_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "error_message"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 40
    .line 41
    const-string v2, "request_num"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public detachContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAdSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getClickAdditionalInfo(Lcom/hisavana/common/bean/AdNativeInfo;)Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->getBaseAdditionalInfo()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v2, "bidding_price"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->isWaterFallExecutor()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    const-string v1, "estimated"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "exact"

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecision(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "USD"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrency(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    if-nez p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->isInternalAd()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setInternalAd(Ljava/lang/Boolean;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public getEcpmPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilterSource()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->mLoadStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "----- class name = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ----- mAdUnit = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getMediatorSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediatorSourceUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetwork()Lcom/hisavana/common/bean/Network;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->requestTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected getSupportHisavanaFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->supportHisavanaFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 19
    .line 20
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "BaseAd"

    .line 25
    .line 26
    const-string v3, "Base Ad getTAdAllianceListener"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method protected getTimeOutTime()I
    .locals 1

    .line 1
    const/16 v0, 0x7530

    .line 2
    .line 3
    return v0
.end method

.method public getTtl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->ttl:I

    .line 2
    .line 3
    return v0
.end method

.method public getValidTimeLimit()J
    .locals 6

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseAd;->ttl:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xea60

    .line 13
    .line 14
    .line 15
    mul-long/2addr v0, v2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, p0, Lcom/hisavana/common/base/BaseAd;->startTime:J

    .line 21
    .line 22
    sub-long/2addr v2, v4

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    return-wide v0
.end method

.method public isAdxAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isCollapsible()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isEwAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isExpired()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getValidTimeLimit()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

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

.method public isIconAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x6

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    :goto_1
    return v0
.end method

.method public isInternalAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isSupportRtBidding()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isSupportStopRequest()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public loadAd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->startTime:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->supportTimer()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->startTimer()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adTrackingRequest()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "loadAd adSource "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " id "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "BaseAd"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Lcom/hisavana/common/manager/RequestingAdManager;->addRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method protected logClick(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseAd;->appendContextParam(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v2, "request_time"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 21
    .line 22
    const-string v2, "return_ts"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v2, "return_time"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v2, "show_ts"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v2, "show_time"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    const-string v3, "click_ts"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    iget-wide v3, p0, Lcom/hisavana/common/base/BaseAd;->mImpressionTime:J

    .line 78
    .line 79
    sub-long/2addr v1, v3

    .line 80
    long-to-int v1, v1

    .line 81
    const-string v2, "click_time"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 87
    .line 88
    const-string v2, "ad_title"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 98
    .line 99
    const-string v2, "ad_url"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 109
    .line 110
    const-string v2, "filling_source"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 120
    .line 121
    const-string v2, "description"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 131
    .line 132
    const-string v2, "image_url"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 142
    .line 143
    const-string v2, "icon_url"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 153
    .line 154
    const-string v2, "app_name"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v3, "endcard_url"

    .line 161
    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 175
    .line 176
    const-string v2, "package_name"

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string v2, "download_url"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 197
    .line 198
    const-string v2, "slot_height"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 208
    .line 209
    const-string v2, "slot_width"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 219
    .line 220
    const-string v2, "is_pre_trigger"

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 230
    .line 231
    const-string v2, "request_type"

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 241
    .line 242
    const-string v2, "request_id"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v1, "click_x"

    .line 252
    .line 253
    const/4 v2, 0x0

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    const-string v1, "click_y"

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    const-string v1, "is_expired"

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 272
    .line 273
    const-string v2, "request_num"

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 283
    .line 284
    const-string v2, "ad_trigger_status"

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string v1, "is_offline_ad"

    .line 294
    .line 295
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 303
    .line 304
    const-string v2, "filling_ad_type"

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    const-string v2, "filling_ad_type"

    .line 311
    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 316
    .line 317
    const-string v2, "traffic_group_id"

    .line 318
    .line 319
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const-string v2, "traffic_group_id"

    .line 324
    .line 325
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 329
    .line 330
    const-string v2, "experiment_group_id"

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-string v2, "experiment_group_id"

    .line 337
    .line 338
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 342
    .line 343
    const-string v2, "priority_code"

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    const-string v2, "priority_code"

    .line 350
    .line 351
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 355
    .line 356
    const-string v2, "max_price"

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 359
    .line 360
    .line 361
    move-result-wide v1

    .line 362
    const-string v3, "max_price"

    .line 363
    .line 364
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->sceneId:Ljava/lang/String;

    .line 368
    .line 369
    const-string v2, "scene_id"

    .line 370
    .line 371
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    if-nez p1, :cond_0

    .line 375
    .line 376
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 377
    .line 378
    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    :goto_0
    const-string v2, "mediator_source"

    .line 384
    .line 385
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    if-nez p1, :cond_1

    .line 389
    .line 390
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 391
    .line 392
    goto :goto_1

    .line 393
    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    :goto_1
    const-string v2, "mediator_code_seat_id"

    .line 398
    .line 399
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 403
    .line 404
    if-eqz v1, :cond_2

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 411
    .line 412
    .line 413
    move-result-wide v1

    .line 414
    goto :goto_2

    .line 415
    :cond_2
    const-wide/16 v1, 0x0

    .line 416
    .line 417
    :goto_2
    const-string v3, "price_coefficient"

    .line 418
    .line 419
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 420
    .line 421
    .line 422
    if-nez p1, :cond_3

    .line 423
    .line 424
    const-string p1, "is_internal_ad"

    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_3
    const-string v1, "is_internal_ad"

    .line 435
    .line 436
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    :goto_3
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 444
    .line 445
    if-eqz p1, :cond_4

    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_4
    const-string p1, ""

    .line 449
    .line 450
    :goto_4
    const-string v1, "game_name"

    .line 451
    .line 452
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 456
    .line 457
    if-eqz p1, :cond_5

    .line 458
    .line 459
    goto :goto_5

    .line 460
    :cond_5
    const-string p1, ""

    .line 461
    .line 462
    :goto_5
    const-string v1, "game_scene"

    .line 463
    .line 464
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdClick(Landroid/os/Bundle;)V

    .line 468
    .line 469
    .line 470
    return-void
.end method

.method protected logClose(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseAd;->appendContextParam(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v2, "request_time"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 21
    .line 22
    const-string v2, "return_ts"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v2, "return_time"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v2, "show_ts"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v2, "show_time"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    const-string v3, "click_ts"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    iget-wide v3, p0, Lcom/hisavana/common/base/BaseAd;->mImpressionTime:J

    .line 78
    .line 79
    sub-long/2addr v1, v3

    .line 80
    long-to-int v1, v1

    .line 81
    const-string v2, "click_time"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 87
    .line 88
    const-string v2, "ad_title"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 98
    .line 99
    const-string v2, "ad_url"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 109
    .line 110
    const-string v2, "filling_source"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 120
    .line 121
    const-string v2, "description"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 131
    .line 132
    const-string v2, "image_url"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 142
    .line 143
    const-string v2, "icon_url"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 153
    .line 154
    const-string v2, "endcard_url"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 164
    .line 165
    const-string v2, "app_name"

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 175
    .line 176
    const-string v2, "package_name"

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string v2, "download_url"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 197
    .line 198
    const-string v2, "traffic_group_id"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 208
    .line 209
    const-string v2, "experiment_group_id"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v1, "slot_height"

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    const-string v1, "slot_width"

    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    const-string v1, "click_x"

    .line 230
    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    const-string v1, "click_y"

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->sceneId:Ljava/lang/String;

    .line 240
    .line 241
    const-string v2, "scene_id"

    .line 242
    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    if-nez p1, :cond_0

    .line 247
    .line 248
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    :goto_0
    const-string v2, "mediator_source"

    .line 256
    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-nez p1, :cond_1

    .line 261
    .line 262
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    :goto_1
    const-string v2, "mediator_code_seat_id"

    .line 270
    .line 271
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 275
    .line 276
    if-eqz v1, :cond_2

    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 283
    .line 284
    .line 285
    move-result-wide v1

    .line 286
    goto :goto_2

    .line 287
    :cond_2
    const-wide/16 v1, 0x0

    .line 288
    .line 289
    :goto_2
    const-string v3, "price_coefficient"

    .line 290
    .line 291
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 292
    .line 293
    .line 294
    const-string v1, "is_internal_ad"

    .line 295
    .line 296
    if-nez p1, :cond_3

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    :goto_3
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 314
    .line 315
    const-string v1, ""

    .line 316
    .line 317
    if-eqz p1, :cond_4

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_4
    move-object p1, v1

    .line 321
    :goto_4
    const-string v2, "game_name"

    .line 322
    .line 323
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 327
    .line 328
    if-eqz p1, :cond_5

    .line 329
    .line 330
    move-object v1, p1

    .line 331
    :cond_5
    const-string p1, "game_scene"

    .line 332
    .line 333
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdClose(Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method protected logImpression(Lcom/hisavana/common/bean/TAdNativeInfo;ZLcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/hisavana/common/base/BaseAd;->appendContextParam(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-string v4, "show_ts"

    .line 15
    .line 16
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-wide v5, v0, Lcom/hisavana/common/base/BaseAd;->mLoadedTime:J

    .line 24
    .line 25
    sub-long/2addr v2, v5

    .line 26
    const-string v5, "show_time"

    .line 27
    .line 28
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v3, "ad_title"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v3, "ad_url"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v3, "filling_source"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 65
    .line 66
    const-string v6, "description"

    .line 67
    .line 68
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 76
    .line 77
    const-string v6, "image_url"

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 87
    .line 88
    const-string v6, "icon_url"

    .line 89
    .line 90
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 98
    .line 99
    const-string v6, "endcard_url"

    .line 100
    .line 101
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 109
    .line 110
    const-string v6, "app_name"

    .line 111
    .line 112
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 120
    .line 121
    const-string v6, "package_name"

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 131
    .line 132
    const-string v6, "download_url"

    .line 133
    .line 134
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 142
    .line 143
    const-string v6, "ad_trigger_status"

    .line 144
    .line 145
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    const-string v2, "is_offline_ad"

    .line 153
    .line 154
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 162
    .line 163
    const-string v6, "filling_ad_type"

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    const-string v2, "slot_height"

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    const-string v7, "slot_width"

    .line 179
    .line 180
    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    iget-object v8, v0, Lcom/hisavana/common/base/BaseAd;->sceneId:Ljava/lang/String;

    .line 184
    .line 185
    const-string v9, "scene_id"

    .line 186
    .line 187
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v8, "is_expired"

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    const/4 v8, 0x1

    .line 200
    const-string v9, "fail_reason"

    .line 201
    .line 202
    const-string v10, "show_status"

    .line 203
    .line 204
    if-eqz p2, :cond_0

    .line 205
    .line 206
    invoke-virtual {v1, v10, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_0
    const/4 v11, 0x2

    .line 214
    invoke-virtual {v1, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v9, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    :goto_0
    iget-object v11, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 221
    .line 222
    const-string v12, "is_pre_trigger"

    .line 223
    .line 224
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    const-string v12, "is_pre_trigger"

    .line 229
    .line 230
    invoke-virtual {v1, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    iget-object v11, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    invoke-virtual {v1, v3, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 243
    .line 244
    const-string v11, "request_id"

    .line 245
    .line 246
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    const-string v11, "request_id"

    .line 251
    .line 252
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 256
    .line 257
    const-string v11, "request_num"

    .line 258
    .line 259
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    const-string v11, "request_num"

    .line 264
    .line 265
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 269
    .line 270
    const-string v11, "traffic_group_id"

    .line 271
    .line 272
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const-string v11, "traffic_group_id"

    .line 277
    .line 278
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 282
    .line 283
    const-string v11, "experiment_group_id"

    .line 284
    .line 285
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const-string v11, "experiment_group_id"

    .line 290
    .line 291
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 295
    .line 296
    const-string v11, "optimize_status"

    .line 297
    .line 298
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    const-string v11, "optimize_status"

    .line 303
    .line 304
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 308
    .line 309
    const-string v11, "priority_code"

    .line 310
    .line 311
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    const-string v11, "priority_code"

    .line 316
    .line 317
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    iget-wide v11, v0, Lcom/hisavana/common/base/BaseAd;->maxPrice:D

    .line 321
    .line 322
    const-wide/16 v13, 0x0

    .line 323
    .line 324
    cmpl-double v3, v11, v13

    .line 325
    .line 326
    const-string v11, "max_price"

    .line 327
    .line 328
    if-nez v3, :cond_1

    .line 329
    .line 330
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 333
    .line 334
    .line 335
    move-result-wide v12

    .line 336
    iput-wide v12, v0, Lcom/hisavana/common/base/BaseAd;->maxPrice:D

    .line 337
    .line 338
    :cond_1
    iget-wide v12, v0, Lcom/hisavana/common/base/BaseAd;->maxPrice:D

    .line 339
    .line 340
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 341
    .line 342
    .line 343
    if-nez p1, :cond_2

    .line 344
    .line 345
    iget-wide v12, v0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 349
    .line 350
    .line 351
    move-result-wide v12

    .line 352
    :goto_1
    const-string v3, "ecpm"

    .line 353
    .line 354
    invoke-virtual {v1, v3, v12, v13}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 355
    .line 356
    .line 357
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->isWaterFallExecutor()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_3

    .line 362
    .line 363
    const-string v3, "estimated"

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_3
    const-string v3, "exact"

    .line 367
    .line 368
    :goto_2
    const-string v12, "ecpm_precision"

    .line 369
    .line 370
    invoke-virtual {v1, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    if-nez p1, :cond_4

    .line 374
    .line 375
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mShowId:Ljava/lang/String;

    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getShowId()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    :goto_3
    const-string v12, "show_id"

    .line 383
    .line 384
    invoke-virtual {v1, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    if-nez p1, :cond_5

    .line 388
    .line 389
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->sceneToken:Ljava/lang/String;

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneToken()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    :goto_4
    const-string v12, "scene_token"

    .line 397
    .line 398
    invoke-virtual {v1, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    if-nez p3, :cond_6

    .line 402
    .line 403
    const/4 v3, 0x0

    .line 404
    goto :goto_5

    .line 405
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    :goto_5
    const-string v12, "error_code"

    .line 414
    .line 415
    invoke-virtual {v1, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    if-nez p3, :cond_7

    .line 419
    .line 420
    const/4 v3, 0x0

    .line 421
    goto :goto_6

    .line 422
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-static {v3}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    :goto_6
    const-string v12, "error_message"

    .line 431
    .line 432
    invoke-virtual {v1, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v6}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    xor-int/2addr v3, v8

    .line 440
    const-string v6, "is_offline"

    .line 441
    .line 442
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 446
    .line 447
    const-string v6, "is_contain_vulgar"

    .line 448
    .line 449
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    const-string v6, "is_contain_vulgar"

    .line 454
    .line 455
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 456
    .line 457
    .line 458
    if-nez p1, :cond_8

    .line 459
    .line 460
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    :goto_7
    const-string v6, "mediator_source"

    .line 468
    .line 469
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    if-nez p1, :cond_9

    .line 473
    .line 474
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 475
    .line 476
    goto :goto_8

    .line 477
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    :goto_8
    const-string v6, "mediator_code_seat_id"

    .line 482
    .line 483
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 487
    .line 488
    if-eqz v3, :cond_a

    .line 489
    .line 490
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 495
    .line 496
    .line 497
    move-result-wide v12

    .line 498
    goto :goto_9

    .line 499
    :cond_a
    const-wide/16 v12, 0x0

    .line 500
    .line 501
    :goto_9
    const-string v3, "price_coefficient"

    .line 502
    .line 503
    invoke-virtual {v1, v3, v12, v13}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 504
    .line 505
    .line 506
    if-nez p1, :cond_b

    .line 507
    .line 508
    const-string v3, "is_internal_ad"

    .line 509
    .line 510
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 515
    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_b
    const-string v3, "is_internal_ad"

    .line 519
    .line 520
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    :goto_a
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 528
    .line 529
    if-eqz v3, :cond_c

    .line 530
    .line 531
    goto :goto_b

    .line 532
    :cond_c
    const-string v3, ""

    .line 533
    .line 534
    :goto_b
    const-string v6, "game_name"

    .line 535
    .line 536
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v3, v0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 540
    .line 541
    if-eqz v3, :cond_d

    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_d
    const-string v3, ""

    .line 545
    .line 546
    :goto_c
    const-string v6, "game_scene"

    .line 547
    .line 548
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget v3, v0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 552
    .line 553
    if-nez v3, :cond_e

    .line 554
    .line 555
    sget-object v3, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    .line 556
    .line 557
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    const-string v8, "ew_request_strategy"

    .line 562
    .line 563
    invoke-virtual {v1, v8, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/manager/b;->a()J

    .line 567
    .line 568
    .line 569
    move-result-wide v12

    .line 570
    const-string v3, "ew_strategy_var_id"

    .line 571
    .line 572
    invoke-virtual {v1, v3, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 573
    .line 574
    .line 575
    :cond_e
    invoke-static {v1}, Lcom/hisavana/common/tracking/TrackingManager;->trackingImpression(Landroid/os/Bundle;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 579
    .line 580
    .line 581
    move-result-wide v12

    .line 582
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-direct {p0, v4, v3}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 590
    .line 591
    .line 592
    move-result-wide v3

    .line 593
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-direct {p0, v5, v3}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-direct {p0, v2, v3}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-direct {p0, v7, v2}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-direct {p0, v10, v2}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-direct {p0, v9, v2}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 645
    .line 646
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 647
    .line 648
    .line 649
    move-result-wide v3

    .line 650
    invoke-virtual {v2, v11, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 651
    .line 652
    .line 653
    return-void
.end method

.method public logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    .line 2
    const-string v0, ""

    invoke-virtual {p0, p1, v0, v0}, Lcom/hisavana/common/base/BaseAd;->trigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->trigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method protected onAdShowError(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/hisavana/common/base/BaseAd;->logImpression(Lcom/hisavana/common/bean/TAdNativeInfo;ZLcom/hisavana/common/bean/TAdErrorCode;)V

    .line 3
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    return-void
.end method

.method protected onAdditionalShowed(JLjava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->saveShowedValue(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 22
    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseAd;->getBaseAdditionalInfo()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    long-to-double p1, p1

    .line 31
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    div-double/2addr p1, v2

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setAdmobECPM(Ljava/lang/Double;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrencyCode(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecisionType(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method protected onReward()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onRewarded()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onTimeOut()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    iput-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 6
    .line 7
    return-void
.end method

.method public setAdSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->adSource:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdUnit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEcpmPrice(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/common/base/BaseAd;->price:D

    .line 2
    .line 3
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLoadStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->mLoadStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxPrice(D)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setMaxPrice "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Athena"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Lcom/hisavana/common/base/BaseAd;->maxPrice:D

    .line 28
    .line 29
    return-void
.end method

.method protected setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, ">>>>> sourceName: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " | sourceUnitId: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " | "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "ad_flow"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseAd;->isOfflineAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseAd;->isPreload:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestRound(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setRequestRound "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "BaseAd"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->mRequestRound:I

    .line 40
    .line 41
    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/common/base/BaseAd;->requestTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setRequestType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSecondPrice(D)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "*----> BaseAd setSecondPrice price"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "ssp_second_price"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-wide p1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 35
    .line 36
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mShowId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSupportFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->supportHisavanaFlag:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseAd;->isTimeOut:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTrackingBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-string v2, "bidding_price"

    .line 22
    .line 23
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->ttl:I

    .line 2
    .line 3
    return-void
.end method

.method protected startTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hisavana/common/utils/RunTimer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hisavana/common/utils/RunTimer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getTimeOutTime()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setScheduleTime(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->runTimerTask()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "BaseAd"

    .line 36
    .line 37
    const-string v2, "\u542f\u52a8\u5e7f\u544a\u8bf7\u6c42\u8d85\u65f6\u76d1\u542c..."

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public stopLoader()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isSupportStopRequest()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->detachContext()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "BaseAd"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method protected stopTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/hisavana/common/base/BaseAd;->runTimer:Lcom/hisavana/common/utils/RunTimer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected supportTimer()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected trigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3}, Lcom/hisavana/common/base/BaseAd;->appendContextParam(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const-string v4, "is_default_ad"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v4, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 27
    .line 28
    const-string v5, "is_timeout"

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object v4, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 38
    .line 39
    const-string v5, "error_code"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 49
    .line 50
    const-string v5, "error_message"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "is_internal_ad"

    .line 64
    .line 65
    const-string v5, "scene_token"

    .line 66
    .line 67
    const-string v6, "scene_id"

    .line 68
    .line 69
    const-string v7, "download_url"

    .line 70
    .line 71
    const-string v8, "package_name"

    .line 72
    .line 73
    const-string v9, "app_name"

    .line 74
    .line 75
    const-string v10, "endcard_url"

    .line 76
    .line 77
    const-string v11, "ad_url"

    .line 78
    .line 79
    const-string v12, "icon_url"

    .line 80
    .line 81
    const-string v13, "description"

    .line 82
    .line 83
    const-string v14, "ad_title"

    .line 84
    .line 85
    const-string v15, ""

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v3, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v11, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getDescription()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v3, v13, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v3, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {v3, v10, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v9, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v8, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_2

    .line 147
    .line 148
    move-object v1, v15

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_0
    iput-object v1, v0, Lcom/hisavana/common/base/BaseAd;->sceneId:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneToken()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSceneToken()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v0, Lcom/hisavana/common/base/BaseAd;->sceneToken:Ljava/lang/String;

    .line 168
    .line 169
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-nez v2, :cond_4

    .line 181
    .line 182
    move-object v2, v15

    .line 183
    :cond_4
    iput-object v2, v0, Lcom/hisavana/common/base/BaseAd;->sceneId:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v0, Lcom/hisavana/common/base/BaseAd;->sceneToken:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/common/base/BaseAd;->isInternalAd()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    :goto_1
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 198
    .line 199
    const-string v2, "is_pre_trigger"

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 209
    .line 210
    const-string v2, "filling_source"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 220
    .line 221
    const-string v2, "request_id"

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 231
    .line 232
    const-string v2, "ad_trigger_status"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    const-string v1, "is_offline_ad"

    .line 242
    .line 243
    invoke-interface/range {p0 .. p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 251
    .line 252
    const-string v2, "filling_ad_type"

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 262
    .line 263
    const-string v2, "traffic_group_id"

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 273
    .line 274
    const-string v2, "experiment_group_id"

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const-string v2, "experiment_group_id"

    .line 281
    .line 282
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    if-nez p1, :cond_5

    .line 286
    .line 287
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mShowId:Ljava/lang/String;

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getShowId()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :goto_2
    const-string v2, "show_id"

    .line 295
    .line 296
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    xor-int/lit8 v1, v1, 0x1

    .line 305
    .line 306
    const-string v2, "is_offline"

    .line 307
    .line 308
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 312
    .line 313
    const-string v2, "is_contain_vulgar"

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    const-string v2, "is_contain_vulgar"

    .line 320
    .line 321
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    if-nez p1, :cond_6

    .line 325
    .line 326
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceName:Ljava/lang/String;

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    :goto_3
    const-string v2, "mediator_source"

    .line 334
    .line 335
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    if-nez p1, :cond_7

    .line 339
    .line 340
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mediatorSourceUnitId:Ljava/lang/String;

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    :goto_4
    const-string v2, "mediator_code_seat_id"

    .line 348
    .line 349
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 353
    .line 354
    if-eqz v1, :cond_8

    .line 355
    .line 356
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 361
    .line 362
    .line 363
    move-result-wide v1

    .line 364
    goto :goto_5

    .line 365
    :cond_8
    const-wide/16 v1, 0x0

    .line 366
    .line 367
    :goto_5
    const-string v4, "price_coefficient"

    .line 368
    .line 369
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 370
    .line 371
    .line 372
    invoke-static {v3}, Lcom/hisavana/common/tracking/TrackingManager;->trackingTriggerShow(Landroid/os/Bundle;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-direct {v0, v14, v1}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v0, v11, v15}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-direct {v0, v13, v1}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    const-string v1, "image_url"

    .line 393
    .line 394
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v2, "image_url"

    .line 399
    .line 400
    invoke-direct {v0, v2, v1}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-direct {v0, v12, v1}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v10, v15}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v0, v9, v15}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-direct {v0, v8, v15}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-direct {v0, v7, v15}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    iget v1, v0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 423
    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const-string v2, "request_num"

    .line 429
    .line 430
    invoke-direct {v0, v2, v1}, Lcom/hisavana/common/base/BaseAd;->addToContextParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    return-void
.end method
