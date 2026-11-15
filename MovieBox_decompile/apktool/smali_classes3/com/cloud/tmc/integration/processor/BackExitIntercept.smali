.class public final Lcom/cloud/tmc/integration/processor/BackExitIntercept;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/processor/BackExitIntercept$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/BackExitIntercept;",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "()V",
        "mCallback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "getMCallback",
        "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "setMCallback",
        "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "checkInterceptorCount",
        "",
        "context",
        "Landroid/content/Context;",
        "appId",
        "",
        "checkNSecondsRules",
        "getInterceptName",
        "getPriority",
        "",
        "intercept",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "chain",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;",
        "refreshBackTimes",
        "",
        "Companion",
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
.field public static final Companion:Lcom/cloud/tmc/integration/processor/BackExitIntercept$Companion;

.field private static final ONE_DAYS:J = 0x5265c00L

.field public static final TAG:Ljava/lang/String; = "BackExitIntercept"


# instance fields
.field private mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/processor/BackExitIntercept$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/processor/BackExitIntercept$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->Companion:Lcom/cloud/tmc/integration/processor/BackExitIntercept$Companion;

    .line 8
    .line 9
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

.method private final checkInterceptorCount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "BackExitIntercept"

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    .line 11
    const-string v3, "latestCheckBackInterceptorTime"

    .line 12
    .line 13
    invoke-interface {v2, p1, p2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 26
    .line 27
    const-string v6, "latestCheckBackInterceptorNum"

    .line 28
    .line 29
    invoke-interface {v1, p1, p2, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p2, 0x5

    .line 34
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 35
    .line 36
    const-string v6, "miniBackInterceptorNum"

    .line 37
    .line 38
    invoke-virtual {v1, v6, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v6, "checkInterceptorCount: currentTimeMillis: "

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, " lastCheckTime: "

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, " num: "

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " showNum: "

    .line 77
    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v0, 0x0

    .line 92
    .line 93
    cmp-long v0, v2, v0

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    sub-long/2addr v4, v2

    .line 98
    const-wide/32 v0, 0x5265c00

    .line 99
    .line 100
    .line 101
    cmp-long v0, v4, v0

    .line 102
    .line 103
    if-gtz v0, :cond_1

    .line 104
    .line 105
    if-ge p1, p2, :cond_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    const/4 p1, 0x0

    .line 109
    return p1

    .line 110
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 111
    return p1
.end method

.method private final checkNSecondsRules(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "BackExitIntercept"

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    .line 11
    const-string v2, "latestCheckBackInterceptorTimeInterval"

    .line 12
    .line 13
    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const v3, 0xea60

    .line 22
    .line 23
    .line 24
    :try_start_0
    sget-object v4, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 25
    .line 26
    const-string v5, "miniBackInterceptorShowTime"

    .line 27
    .line 28
    invoke-virtual {v4, v5, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v4

    .line 34
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "checkNSecondsRules: currentTimeMillis: "

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, " lastCheckTimeInterval: "

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, " showTime: "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sub-long/2addr v1, p1

    .line 74
    int-to-long p1, v3

    .line 75
    cmp-long p1, v1, p1

    .line 76
    .line 77
    if-lez p1, :cond_0

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    return p1

    .line 81
    :cond_0
    const/4 p1, 0x0

    .line 82
    return p1
.end method

.method private final refreshBackTimes(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    const-string v2, "latestCheckBackInterceptorTime"

    .line 10
    .line 11
    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v3, v1, v3

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const-string v5, "latestCheckBackInterceptorNum"

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    sub-long v1, v9, v1

    .line 29
    .line 30
    const-wide/32 v6, 0x5265c00

    .line 31
    .line 32
    .line 33
    cmp-long v1, v1, v6

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 43
    .line 44
    invoke-interface {v1, p1, p2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 53
    .line 54
    add-int/2addr v1, v4

    .line 55
    invoke-interface {v2, p1, p2, v5, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 64
    .line 65
    invoke-interface {v1, p1, p2, v5, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v3, v1

    .line 73
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 74
    .line 75
    const-string v6, "latestCheckBackInterceptorTime"

    .line 76
    .line 77
    move-object v4, p1

    .line 78
    move-object v5, p2

    .line 79
    move-wide v7, v9

    .line 80
    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v3, v0

    .line 88
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 89
    .line 90
    const-string v6, "latestCheckBackInterceptorTimeInterval"

    .line 91
    .line 92
    move-object v4, p1

    .line 93
    move-object v5, p2

    .line 94
    move-wide v7, v9

    .line 95
    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public backResult(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getInterceptName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BackExitIntercept"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    return v0
.end method

.method public intercept(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 12

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

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
    const-string v2, "BackExitIntercept: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BackExitIntercept"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 54
    .line 55
    const-string v6, "miniBackInterceptorTime"

    .line 56
    .line 57
    const/16 v7, 0x2710

    .line 58
    .line 59
    invoke-virtual {v0, v6, v7}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    int-to-long v6, v0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v6, 0x2710

    .line 70
    .line 71
    :goto_1
    sub-long/2addr v4, v2

    .line 72
    cmp-long v0, v4, v6

    .line 73
    .line 74
    const-string v2, "back intercept, "

    .line 75
    .line 76
    if-lez v0, :cond_7

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getAppId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v5, 0x8

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v4, 0x0

    .line 101
    move-object v0, p0

    .line 102
    move-object v3, p0

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    invoke-direct {p0, v3, v0}, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->checkInterceptorCount(Landroid/content/Context;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_2

    .line 123
    .line 124
    const-string v0, "back intercept count overrun"

    .line 125
    .line 126
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/16 v5, 0x8

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    const/4 v4, 0x0

    .line 142
    move-object v0, p0

    .line 143
    move-object v3, p0

    .line 144
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->checkNSecondsRules(Landroid/content/Context;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_3

    .line 154
    .line 155
    const-string v0, "back intercept time interval not allowed"

    .line 156
    .line 157
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const/16 v5, 0x8

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    const/4 v4, 0x0

    .line 173
    move-object v0, p0

    .line 174
    move-object v3, p0

    .line 175
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1

    .line 180
    :cond_3
    iget-object v4, p0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 181
    .line 182
    if-eqz v4, :cond_4

    .line 183
    .line 184
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v3, v0}, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->refreshBackTimes(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    const/4 v4, 0x1

    .line 194
    if-eqz v0, :cond_5

    .line 195
    .line 196
    move v0, v4

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    move v0, v3

    .line 199
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iget-object p1, p0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 226
    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    move v7, v4

    .line 230
    goto :goto_3

    .line 231
    :cond_6
    move v7, v3

    .line 232
    :goto_3
    const/16 v10, 0x8

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    const/4 v9, 0x0

    .line 236
    move-object v5, p0

    .line 237
    move-object v8, p0

    .line 238
    invoke-static/range {v5 .. v11}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_7
    const/16 v0, 0x3e8

    .line 244
    .line 245
    int-to-long v3, v0

    .line 246
    div-long/2addr v6, v3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v2, "s \u5185\u4e0d\u751f\u6548\u62e6\u622a\u5668"

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const/16 v5, 0x8

    .line 279
    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v2, 0x0

    .line 282
    const/4 v4, 0x0

    .line 283
    move-object v0, p0

    .line 284
    move-object v3, p0

    .line 285
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    return-object p1
.end method

.method public final setMCallback(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/BackExitIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-void
.end method
