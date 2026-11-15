.class public final Lcom/cloud/tmc/integration/utils/CloudConfigUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J.\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cJ\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001e\u0010 \u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u000fJ \u0010\"\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/CloudConfigUtils;",
        "",
        "()V",
        "DEFAULT_QUERY_KEY",
        "",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "cloudConfigRequestInterval",
        "",
        "getCloudConfigRequestInterval",
        "()J",
        "setCloudConfigRequestInterval",
        "(J)V",
        "isRequesting",
        "",
        "requestingMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getRequestingMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "checkAllowCloudConfigRequest",
        "context",
        "Landroid/content/Context;",
        "checkCloudConfigRequestInterval",
        "requestKey",
        "checkEnableConfigRequest",
        "queryKey",
        "complete",
        "Lkotlin/Function1;",
        "",
        "checkUseSuccessCallback",
        "updateCdnConfig",
        "updateCloudConfigRequestStatus",
        "success",
        "updateCloudConfigStatus",
        "status",
        "intervalBySuccess",
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
.field public static final DEFAULT_QUERY_KEY:Ljava/lang/String; = "defaultKey"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

.field private static final TAG:Ljava/lang/String;

.field private static cloudConfigRequestInterval:J

.field private static volatile isRequesting:Z

.field private static final requestingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 7
    .line 8
    const-string v0, "CloudConfigUtils"

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public static final synthetic access$setRequesting$p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateCloudConfigStatus(Lcom/cloud/tmc/integration/utils/CloudConfigUtils;Landroid/content/Context;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigStatus(Landroid/content/Context;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkAllowCloudConfigRequest(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCdnConfig(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 12
    .line 13
    const-string v2, "miniLauncherGlobal"

    .line 14
    .line 15
    const-string v3, "enableRequestConfig"

    .line 16
    .line 17
    invoke-interface {v1, p1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "checkAllowCloudConfigRequest"

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return v0
.end method

.method private final checkCloudConfigRequestInterval(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 3
    .line 4
    const-string v2, "ccrInterval"

    .line 5
    .line 6
    const-wide/32 v3, 0x2932e00

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sput-wide v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    .line 14
    .line 15
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 22
    .line 23
    const-string v2, "miniLauncherGlobal"

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "latestRequestTime_"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    sub-long/2addr v1, p1

    .line 51
    sget-wide v3, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    cmp-long v1, v1, v3

    .line 54
    .line 55
    const-string v2, ",cloudConfigRequestInterval->"

    .line 56
    .line 57
    if-gez v1, :cond_0

    .line 58
    .line 59
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    sget-wide v5, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v8, "cloud config request interval is not over,currentTime->"

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, ",latestReuestTime->"

    .line 81
    .line 82
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    return p1

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v6, "cloud config request interval is over,latestReuestTime->"

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    return v0

    .line 134
    :goto_0
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string v1, "checkCloudConfigRequestInterval error"

    .line 137
    .line 138
    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    return v0
.end method

.method private final checkUseSuccessCallback(Landroid/content/Context;)Z
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    const-string v1, "miniLauncherGlobal"

    .line 10
    .line 11
    const-string v2, "requestIntervalBySuccess"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "updateCloudConfigStatus"

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private final updateCdnConfig(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 2
    .line 3
    const-string v1, "updateCdnConfig isRequesting->"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 32
    .line 33
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 40
    .line 41
    const-string v2, "miniLauncherGlobal"

    .line 42
    .line 43
    const-string v3, "laterestRequestCdnTime"

    .line 44
    .line 45
    invoke-interface {v0, p1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 50
    .line 51
    const-string v4, "cdnrInterval"

    .line 52
    .line 53
    const-wide/32 v5, 0x2932e00

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    sub-long/2addr v6, v2

    .line 65
    cmp-long v0, v6, v4

    .line 66
    .line 67
    if-gez v0, :cond_1

    .line 68
    .line 69
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    sput-boolean p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->isRequesting:Z

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v1, v0

    .line 102
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 103
    .line 104
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    new-instance v6, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;

    .line 117
    .line 118
    invoke-direct {v6, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "https://cloud-config-oss.shalltry.com/cloudconfig/config/onoff/miniapp_cloudconfig_onoff.json"

    .line 122
    .line 123
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private final updateCloudConfigStatus(Landroid/content/Context;ZZ)V
    .locals 5

    .line 1
    const-string v0, "updateCloudConfigStatus"

    .line 2
    .line 3
    const-string v1, "miniLauncherGlobal"

    .line 4
    .line 5
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 12
    .line 13
    const-string v4, "enableRequestConfig"

    .line 14
    .line 15
    invoke-interface {v3, p1, v1, v4, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    sget-object v3, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    .line 31
    const-string v2, "requestIntervalBySuccess"

    .line 32
    .line 33
    invoke-interface {p2, p1, v1, v2, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method


# virtual methods
.method public final checkEnableConfigRequest(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const-string p2, "defaultKey"

    .line 19
    .line 20
    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "cloud config request is requesting, key: "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_3
    return v3

    .line 69
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkAllowCloudConfigRequest(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_6

    .line 79
    .line 80
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    const-string v4, "cloud config request is not enable"

    .line 83
    .line 84
    invoke-static {p1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_5
    return v3

    .line 98
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkCloudConfigRequestInterval(Landroid/content/Context;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_8

    .line 103
    .line 104
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    if-eqz p3, :cond_7

    .line 110
    .line 111
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_7
    return v3

    .line 115
    :cond_8
    return v0

    .line 116
    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    const-string p3, "checkEnableConfigRequest"

    .line 119
    .line 120
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    return v0
.end method

.method public final getCloudConfigRequestInterval()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRequestingMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCloudConfigRequestInterval(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->cloudConfigRequestInterval:J

    .line 2
    .line 3
    return-void
.end method

.method public final updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestKey"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->requestingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkUseSuccessCallback(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    const-class p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 30
    .line 31
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    move-object v0, p3

    .line 36
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 37
    .line 38
    const-string v2, "miniLauncherGlobal"

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "latestRequestTime_"

    .line 46
    .line 47
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    move-object v1, p1

    .line 62
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "updateCloudConfigRequestStatus requestKey: "

    .line 73
    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_1
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string p3, "updateCloudConfigRequestStatus error: "

    .line 91
    .line 92
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_2
    return-void
.end method
