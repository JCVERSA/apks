.class public final Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0011\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016Jy\u0010\u001c\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010\"2\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010%J*\u0010&\u001a\u00020\u00122\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "KEY_RESPONSE_PREFETCHDATA",
        "",
        "KEY_RESPONSE_PREFETCH_EXPIRED_TIME",
        "KEY_RESPONSE_PREFETCH_PREFETCH_TIME",
        "KEY_RESPONSE_PREFETCH_TOKEN",
        "KEY_STORAGE_PREFETCH_DATA",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "mTempDataMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
        "getMTempDataMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getPrefetchData",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "prefetchToken",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "onFinalized",
        "onInitialized",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "prefetchAndSaveToTemp",
        "url",
        "method",
        "requestHeader",
        "requestParam",
        "requestTimeout",
        "",
        "prefetchExpiredTime",
        "callbackId",
        "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "removePrefetchData",
        "MiniPrefetchData",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

.field private final KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

.field private final KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
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
    const-string v0, "PrefetchDataBridge"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v0, "mini_PrefetchData"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "prefetchData"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "prefetchToken"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "expiredTime"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "prefetchTime"

    .line 32
    .line 33
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCHDATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_EXPIRED_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_PREFETCH_TIME$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getKEY_RESPONSE_PREFETCH_TOKEN$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getKEY_STORAGE_PREFETCH_DATA$p(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getMTempDataMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrefetchData(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchToken"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "prefetchToken"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    move-object p1, v1

    .line 27
    :goto_0
    if-nez p1, :cond_2

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "errMsg"

    .line 42
    .line 43
    const-string v1, "Failed Prefetch data, context is null: PD001"

    .line 44
    .line 45
    invoke-virtual {p1, p2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :cond_2
    :try_start_1
    const-string v2, "app?.appContext?.context\u2026     return\n            }"

    .line 59
    .line 60
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v2, p1, v3, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_a

    .line 78
    .line 79
    new-instance v2, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$getPrefetchData$1$1$map$1;

    .line 80
    .line 81
    invoke-direct {v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$getPrefetchData$1$1$map$1;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {p1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/Map;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    instance-of v3, v2, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object v2, v1

    .line 108
    :goto_1
    if-nez v2, :cond_5

    .line 109
    .line 110
    if-eqz p3, :cond_4

    .line 111
    .line 112
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 117
    .line 118
    const-string v2, ""

    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    :cond_4
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_PREFETCH_TIME:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 146
    .line 147
    const-wide/16 v4, 0x0

    .line 148
    .line 149
    if-eqz v3, :cond_6

    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move-wide v6, v4

    .line 157
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_EXPIRED_TIME:Ljava/lang/String;

    .line 158
    .line 159
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Ljava/lang/String;

    .line 164
    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v8

    .line 175
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v10, "token:"

    .line 183
    .line 184
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v10, ",prefetchData is exist"

    .line 191
    .line 192
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v10, "prefetchTime:"

    .line 210
    .line 211
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v10, ",expiredTime:"

    .line 218
    .line 219
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v10, ","

    .line 226
    .line 227
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    add-long/2addr v6, v4

    .line 241
    cmp-long p1, v6, v8

    .line 242
    .line 243
    if-ltz p1, :cond_8

    .line 244
    .line 245
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 246
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v4, "prefetchData: "

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    if-eqz p3, :cond_9

    .line 268
    .line 269
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 290
    .line 291
    .line 292
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v3, "token:"

    .line 303
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v3, ",prefetchData expired"

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    if-eqz p3, :cond_9

    .line 323
    .line 324
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 329
    .line 330
    const-string v2, ""

    .line 331
    .line 332
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 347
    .line 348
    .line 349
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 350
    .line 351
    :cond_9
    :goto_3
    if-nez v1, :cond_b

    .line 352
    .line 353
    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v2, "token:"

    .line 361
    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v2, ",prefetchData is not exist"

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    if-eqz p3, :cond_b

    .line 381
    .line 382
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCHDATA:Ljava/lang/String;

    .line 387
    .line 388
    const-string v2, ""

    .line 389
    .line 390
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 405
    .line 406
    .line 407
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    .line 409
    :cond_b
    monitor-exit v0

    .line 410
    return-void

    .line 411
    :goto_4
    monitor-exit v0

    .line 412
    throw p1
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final prefetchAndSaveToTemp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "url"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "method"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestHeader"
            }
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestParam"
            }
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "requestTimeout"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchExpiredTime"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "callbackId"
            }
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    iget-object v4, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    :goto_0
    if-nez v5, :cond_2

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v5, "errMsg"

    .line 38
    .line 39
    const-string v6, "Failed Prefetch data, context is null: PD001"

    .line 40
    .line 41
    invoke-virtual {v0, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v5, "callbackId"

    .line 46
    .line 47
    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v4

    .line 59
    return-void

    .line 60
    :cond_2
    :try_start_1
    const-string v6, "app?.appContext?.context\u2026     return\n            }"

    .line 61
    .line 62
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_4

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v5, "errMsg"

    .line 78
    .line 79
    const-string v6, "Failed Prefetch data, appId is null: PD002"

    .line 80
    .line 81
    invoke-virtual {v0, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v5, "callbackId"

    .line 86
    .line 87
    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_3
    monitor-exit v4

    .line 99
    return-void

    .line 100
    :cond_4
    :try_start_2
    const-string v7, "app.appId ?: kotlin.run \u2026     return\n            }"

    .line 101
    .line 102
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v6, "_"

    .line 118
    .line 119
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    iget-object v6, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .line 135
    const-string v7, "token"

    .line 136
    .line 137
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v7, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    goto :goto_1

    .line 149
    :cond_5
    const-wide/16 v8, 0x0

    .line 150
    .line 151
    :goto_1
    invoke-direct {v7, v8, v9, v3, v2}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;-><init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v6, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    const-string v3, "requestChannel"

    .line 172
    .line 173
    const-string v6, "prefetch"

    .line 174
    .line 175
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    move-object v10, v2

    .line 183
    goto :goto_2

    .line 184
    :catchall_1
    move-object/from16 v10, p4

    .line 185
    .line 186
    :goto_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v3, "request"

    .line 191
    .line 192
    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    instance-of v3, v2, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 197
    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    iget-object v3, v1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->TAG:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v7, "url:"

    .line 208
    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-object/from16 v8, p2

    .line 213
    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v7, ",requestParam:"

    .line 218
    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    move-object/from16 v9, p5

    .line 223
    .line 224
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v7, ",header:"

    .line 228
    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v7, ",method:"

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move-object/from16 v11, p3

    .line 241
    .line 242
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v7, ",requestTimeout:"

    .line 246
    .line 247
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-object/from16 v12, p6

    .line 251
    .line 252
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v7, ",prefetchExpiredTime:"

    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v0, ",token:"

    .line 264
    .line 265
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    move-object v7, v2

    .line 279
    check-cast v7, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 280
    .line 281
    new-instance v14, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;

    .line 282
    .line 283
    invoke-direct {v14, v1, v5, v13}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$prefetchAndSaveToTemp$1$1;-><init>(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v8, p2

    .line 287
    .line 288
    move-object/from16 v9, p5

    .line 289
    .line 290
    move-object/from16 v11, p3

    .line 291
    .line 292
    move-object/from16 v12, p6

    .line 293
    .line 294
    move-object/from16 v15, p1

    .line 295
    .line 296
    invoke-virtual/range {v7 .. v15}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    .line 297
    .line 298
    .line 299
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    .line 301
    monitor-exit v4

    .line 302
    return-void

    .line 303
    :goto_3
    monitor-exit v4

    .line 304
    throw v0
.end method

.method public final removePrefetchData(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "prefetchToken"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "prefetchToken"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->mTempDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-nez p1, :cond_2

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "errMsg"

    .line 40
    .line 41
    const-string v1, "Failed Prefetch data, context is null: PD001"

    .line 42
    .line 43
    invoke-virtual {p1, p2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :cond_2
    :try_start_1
    const-string v1, "app?.appContext?.context\u2026     return\n            }"

    .line 57
    .line 58
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_STORAGE_PREFETCH_DATA:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;->KEY_RESPONSE_PREFETCH_TOKEN:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    :cond_3
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_1
    monitor-exit v0

    .line 98
    throw p1
.end method
