.class public final Lcom/cloud/tmc/integration/utils/PopWindowManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;,
        Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/PopWindowManager;",
        "",
        "()V",
        "TAG",
        "",
        "controllerMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;",
        "Lkotlin/collections/ArrayList;",
        "addPopWindow",
        "",
        "key",
        "bean",
        "clearPopWindow",
        "refreshPopWindow",
        "showPopWindow",
        "diffTime",
        "",
        "IPopWindowManagerController",
        "PopWindowData",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

.field private static final TAG:Ljava/lang/String;

.field private static final controllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/PopWindowManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v0, "PopWindowManager"

    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
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

.method private final refreshPopWindow(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getPopWindowController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;->onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "refreshPopWindow error: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final addPopWindow(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 10

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "controllerMap[key] ?: ArrayList()"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, -0x1

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    cmp-long v4, v6, v8

    .line 60
    .line 61
    if-ltz v4, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v3, v5

    .line 68
    :goto_2
    if-ne v3, v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_3
    sget-object p2, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object p2, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->refreshPopWindow(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :catchall_0
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    monitor-exit v0

    .line 99
    throw p1
.end method

.method public final clearPopWindow(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "clearPopWindow error: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    monitor-exit v0

    .line 42
    throw p1
.end method

.method public final showPopWindow(Ljava/lang/String;J)V
    .locals 10

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    const-string v4, "controllerMap[key]"

    .line 24
    .line 25
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_4

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-class v5, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 48
    .line 49
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 54
    .line 55
    const-string v6, "miniPopwindowintervalTime"

    .line 56
    .line 57
    const/16 v7, 0x7530

    .line 58
    .line 59
    invoke-interface {v5, v6, v7}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sget-object v6, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v8, "KEY_MINI_POPWINDOW_INTERVAL_TIME->"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v6, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getIgnoreInterval()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_0

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    sub-long/2addr v6, v8

    .line 100
    int-to-long v8, v5

    .line 101
    cmp-long v5, v6, v8

    .line 102
    .line 103
    if-gez v5, :cond_4

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getIgnoreInterval()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getPriority()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getPriority()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-le v5, v6, :cond_3

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :goto_1
    move-object v3, v4

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    goto :goto_4

    .line 129
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    cmp-long v2, p2, v4

    .line 140
    .line 141
    if-ltz v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_5
    sget-object v2, Lcom/cloud/tmc/integration/utils/PopWindowManager;->controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Ljava/util/ArrayList;

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/util/Collection;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    :cond_6
    if-eqz v3, :cond_8

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    cmp-long p2, p2, v1

    .line 172
    .line 173
    if-ltz p2, :cond_7

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getPopWindowController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getAppId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;->show(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object p2, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 187
    .line 188
    invoke-direct {p2, p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->refreshPopWindow(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getPopWindowController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-interface {p1, v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;->onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :goto_4
    :try_start_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/PopWindowManager;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v1, "showPopWindow error :"

    .line 210
    .line 211
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    .line 226
    :cond_8
    :goto_5
    monitor-exit v0

    .line 227
    return-void

    .line 228
    :catchall_1
    move-exception p1

    .line 229
    monitor-exit v0

    .line 230
    throw p1
.end method
