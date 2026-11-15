.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;

.field public static final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
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
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "renderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "render"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0OO;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 41
    .line 42
    const-string v4, "maxNativeWebviewNum"

    .line 43
    .line 44
    const/4 v5, 0x5

    .line 45
    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lt v4, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    instance-of v5, v4, Landroid/webkit/WebView;

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    check-cast v4, Landroid/webkit/WebView;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v4, 0x0

    .line 73
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "webviewQueue size >= 5,remove "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "NativeWebviewManager"

    .line 91
    .line 92
    invoke-static {v6, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v5, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 96
    .line 97
    const-string v6, "removeViewId"

    .line 98
    .line 99
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v4, v3, p2}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->removeNativeComponent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    :cond_2
    new-instance v3, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 106
    .line 107
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    const-string p1, "appId"

    .line 114
    .line 115
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-object v3
.end method
