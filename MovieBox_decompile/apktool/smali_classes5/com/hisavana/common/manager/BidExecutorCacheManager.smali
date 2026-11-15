.class public Lcom/hisavana/common/manager/BidExecutorCacheManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InmobiBidCacheManager"

.field private static sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;


# instance fields
.field private final bidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hisavana/common/base/BaseAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hisavana/common/manager/BidExecutorCacheManager;
    .locals 2

    .line 1
    const-class v0, Lcom/hisavana/common/manager/BidExecutorCacheManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/hisavana/common/manager/BidExecutorCacheManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public removeData(Ljava/lang/String;)Lcom/hisavana/common/base/BaseAd;
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
    const-string v2, "removeBidData "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "InmobiBidCacheManager"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/hisavana/common/base/BaseAd;

    .line 34
    .line 35
    return-object p1
.end method

.method public saveBidData(Ljava/lang/String;Lcom/hisavana/common/base/BaseAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
