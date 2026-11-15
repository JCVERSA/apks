.class public final Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/net/TmcResponseCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
            "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;",
            ">;)V"
        }
    .end annotation

    .line 52
    const-string v0, ""

    const-string v1, "MessageBubbleUtils"

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_MINI_QUERY_NEW_MSG_mini()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestUrl -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 55
    const-string v4, "minisdk_storage"

    const-string v5, "device_util_ga_id"

    invoke-interface {v2, p1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 56
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestQueryMsgStatus mGAId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v0

    .line 57
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 58
    const-string p1, "-1"

    const-string v2, "gaid is null"

    invoke-virtual {p2, p1, v2, v0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string p1, "mGAId is null "

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_1

    .line 60
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0o;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO0o0(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object v4

    .line 61
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v5, "originType"

    const-string v7, "3"

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v5, "uid"

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "webQueryTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 68
    const-string v5, "mainSwitchStatus"

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 70
    const-string v2, "mainSwitchTimestamp"

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO0O0(Landroid/content/Context;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    const-string v0, "miniAppSwitchOnOffs"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v6}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miniAppSwitchOnOffs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 75
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 76
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 78
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v8, p2

    .line 79
    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 80
    :goto_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V
    .locals 11

    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "miniAppPopWindowToken"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "controller"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 23
    :cond_0
    const-string v1, "checkAndShowMsgBubble"

    const-string v2, "MessageBubbleUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 25
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 26
    const-string v3, "showMsgBubbleTime"

    invoke-interface {v1, p1, p2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndShowMsgBubble showAddHomeTime->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentTimeMillis->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " diff ->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x2932e00

    .line 29
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 30
    const-string v5, "miniShowMsgBubbleInterval"

    .line 31
    invoke-interface {v1, v5, p1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 32
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    int-to-long v3, p1

    cmp-long p1, v5, v3

    if-gez p1, :cond_2

    return-void

    .line 34
    :cond_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v0, "miniShowMsgBubbleDelay"

    const v1, 0xea60

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPopWindow msg bubble:->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 37
    new-instance v10, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    int-to-long v3, p1

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {v0, p3, v10}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->addPopWindow(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    .locals 9

    const-string v0, "requestMsgBubbleStatus"

    const-string v1, "MessageBubbleUtils"

    .line 1
    :try_start_0
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0o;

    invoke-virtual {v4, v3}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO0OO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 5
    const-string p1, "latestUnreadMsg is null or empty"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    const-class v6, Lcom/google/gson/JsonObject;

    invoke-static {v5, v6}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 7
    const-string v6, "miniappId"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    const-string v7, ""

    if-nez v6, :cond_4

    move-object v6, v7

    .line 8
    :cond_4
    :try_start_1
    const-string v8, "miniappName"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    move-object v2, v7

    .line 9
    :cond_6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 10
    invoke-virtual {v4, v3, v6}, Lcom/cloud/tmc/miniapp/utils/OooO0o;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndShowMessageBubble appId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, p1

    .line 13
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 15
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 16
    const-string v4, "MessageBubbleLatestTime"

    invoke-interface {v3, p1, v7, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x2932e00

    cmp-long p1, v5, v3

    if-gez p1, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    const-string p1, "show msg bubble"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 19
    invoke-interface {p2, v7, v2}, Lcom/cloud/tmc/miniapp/utils/OooO0O0;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestMsgBubbleStatus msg switch is closed -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 21
    :goto_3
    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final OooO00o()Z
    .locals 3

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 48
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 49
    const-string v2, "msgBottomItemEnable"

    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 51
    const-string v2, "MessageBubbleUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final OooO00o(Ljava/lang/String;)Z
    .locals 3

    .line 39
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 40
    const-string v1, "miniPopwindowMsgBubbleForbidId"

    .line 41
    const-string v2, "[\"1000391591855976448\",\"1000886706715795456\"]"

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-class v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 46
    :goto_1
    const-string v0, "MessageBubbleUtils"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public final OooO0O0(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v5, "isNewUser"

    const/4 v6, 0x1

    const-string v7, "100000"

    invoke-interface {v4, v2, v7, v5, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "MessageBubbleUtils"

    if-eqz v4, :cond_2

    .line 7
    const-string p1, "updateDateMsgStatus isFirst = true"

    invoke-static {v5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    const-string v4, "miniMsgProvider"

    const-string v6, "mainMsgSwitch"

    .line 11
    invoke-interface {v3, v2, v4, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 12
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 13
    const-class v4, Lcom/google/gson/JsonObject;

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 14
    const-string v4, "mainSwitchStatus"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_4

    move-object v4, v0

    .line 15
    :cond_4
    const-string v6, "mainSwitchTimestamp"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_0
    :cond_7
    move-object v1, v0

    .line 16
    :goto_3
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    const-string p1, "main msg switch is closed,return"

    invoke-static {v5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_8
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;

    invoke-direct {v0, v2, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils$requestMsgInfo$1;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V

    .line 20
    invoke-virtual {p0, v2, v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/net/TmcResponseCallback;)V

    return-void
.end method

.method public final OooO0O0()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    const-string v2, "msgTotalEnable"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    const-string v2, "MessageBubbleUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method
