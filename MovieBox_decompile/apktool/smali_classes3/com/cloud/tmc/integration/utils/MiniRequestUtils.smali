.class public final Lcom/cloud/tmc/integration/utils/MiniRequestUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u0006H\u0007J>\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00112&\u0008\u0002\u0010\u0012\u001a \u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u001c\u0008\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\u0008\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u001e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u001c\u0008\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\u0008\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007JL\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u001c\u0008\u0002\u0010\u001a\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00132\u001c\u0008\u0002\u0010\u001d\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/MiniRequestUtils;",
        "",
        "()V",
        "TAG",
        "",
        "collectMiniApp",
        "",
        "isCollect",
        "",
        "appId",
        "getUniqueId",
        "gaid",
        "callback",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
        "requestAbilityConfig",
        "requestRecommendMiniApp",
        "excludes",
        "",
        "block",
        "Lkotlin/Function1;",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "Lkotlin/collections/ArrayList;",
        "updateAppInfo",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "success",
        "Lcom/cloud/tmc/integration/net/BaseResponse;",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "failure",
        "updateAppInfoForCdn",
        "updateAppInfoForServer",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/MiniRequestUtils;

.field private static final TAG:Ljava/lang/String; = "TmcApp: MiniRequestUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniRequestUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final collectMiniApp(ZLjava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "collect appId: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " isCollect "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "TmcApp: MiniRequestUtils"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_COLLECT_MINI_APP()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    move-object v1, p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_CANCEL_COLLECT_MINI_APP()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const-class p0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v0, p0

    .line 56
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 57
    .line 58
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string p0, "miniappId"

    .line 69
    .line 70
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 p1, 0x1

    .line 75
    new-array p1, p1, [Lkotlin/Pair;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    aput-object p0, p1, v4

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    new-instance v6, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$collectMiniApp$1;

    .line 87
    .line 88
    invoke-direct {v6}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$collectMiniApp$1;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static final getUniqueId(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "gaid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "appId"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "callback"

    .line 12
    .line 13
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v5, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v6, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_UNIQUEID()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-class p0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    move-object v3, p0

    .line 43
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 44
    .line 45
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    move-object v8, p2

    .line 48
    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final requestAbilityConfig()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->isAllowRequest()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getAbilitiesCdnUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 30
    .line 31
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    new-instance v6, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$requestAbilityConfig$1;

    .line 44
    .line 45
    invoke-direct {v6}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$requestAbilityConfig$1;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final requestRecommendMiniApp(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "excludes"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getRECOMMEND_INFO_MINI_APP()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 18
    .line 19
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "excludeMiniAppIds"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Lkotlin/Pair;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    aput-object p0, v0, v5

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    new-instance v7, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$requestRecommendMiniApp$1;

    .line 48
    .line 49
    invoke-direct {v7, p1}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$requestRecommendMiniApp$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static synthetic requestRecommendMiniApp$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->requestRecommendMiniApp(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final updateAppInfo(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfoForServer(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic updateAppInfo$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfo(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final updateAppInfoForCdn(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v5, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v3, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "requestChannel"

    .line 17
    .line 18
    const-string v2, "server_api"

    .line 19
    .line 20
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-interface {v5, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string p0, "needClassification"

    .line 27
    .line 28
    const-string v0, "1"

    .line 29
    .line 30
    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_APPINFO_QUERY()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    const-string v0, "gaid"

    .line 48
    .line 49
    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "updateAppInfoForServer: url: "

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v0, "TmcApp: MiniRequestUtils"

    .line 70
    .line 71
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-class p0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 75
    .line 76
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    move-object v1, p0

    .line 81
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 82
    .line 83
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    new-instance v7, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;

    .line 86
    .line 87
    invoke-direct {v7, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static synthetic updateAppInfoForCdn$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfoForCdn(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final updateAppInfoForServer(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "mode"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-object v0, v2

    .line 23
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "sign"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    move-object v3, v2

    .line 36
    :cond_1
    const-string v4, "debug"

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const-string v7, "dev"

    .line 44
    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    invoke-static {v7, v0, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v6, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    move v6, v5

    .line 57
    :goto_1
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const-string v8, "1"

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const-string v2, "0"

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v7, v0, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    move-object v2, v8

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    const-string v4, "develop"

    .line 77
    .line 78
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const-string v2, "2"

    .line 85
    .line 86
    :cond_6
    :goto_2
    new-instance v13, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v11, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v0, "requestChannel"

    .line 97
    .line 98
    const-string v4, "server_api"

    .line 99
    .line 100
    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v0, "appId"

    .line 104
    .line 105
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v0, "needClassification"

    .line 113
    .line 114
    invoke-interface {v13, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_APPINFO_QUERY()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_7

    .line 130
    .line 131
    const-string v5, "gaid"

    .line 132
    .line 133
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_7
    if-eqz v6, :cond_8

    .line 137
    .line 138
    const-string v0, "version"

    .line 139
    .line 140
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/App;->getAppVersion()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v0, "typeCode"

    .line 148
    .line 149
    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_APPINFO_DEV_QUERY()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    const-string v1, "miniapp-token"

    .line 163
    .line 164
    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_8
    move-object v10, v0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v1, "updateAppInfoForServer: url: "

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "TmcApp: MiniRequestUtils"

    .line 186
    .line 187
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v9, v0

    .line 197
    check-cast v9, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 198
    .line 199
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 200
    .line 201
    new-instance v15, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForServer$1;

    .line 202
    .line 203
    move-object/from16 v0, p1

    .line 204
    .line 205
    move-object/from16 v1, p2

    .line 206
    .line 207
    invoke-direct {v15, v0, v1}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForServer$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    const/4 v12, 0x0

    .line 211
    invoke-interface/range {v9 .. v15}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public static synthetic updateAppInfoForServer$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfoForServer(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
