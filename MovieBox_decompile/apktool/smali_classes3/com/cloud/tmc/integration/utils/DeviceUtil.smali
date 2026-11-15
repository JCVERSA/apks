.class public final Lcom/cloud/tmc/integration/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001AB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010&\u001a\u00020\u001c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0006H\u0007J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u00020\u0004H\u0007J\u0006\u0010/\u001a\u00020\u0006J\u0008\u00100\u001a\u0004\u0018\u00010\u0004J\u0006\u00101\u001a\u00020\u0004J\u0010\u00101\u001a\u0004\u0018\u00010\u00042\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u00020\u001cJ\n\u00105\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u00106\u001a\u00020+2\u0008\u00102\u001a\u0004\u0018\u0001032\u0006\u0010,\u001a\u00020-J\n\u00107\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u00108\u001a\u0004\u0018\u00010\u0004H\u0007J\u0015\u00109\u001a\u00020\u00042\u0008\u0010:\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u0004H\u0002J\u0008\u0010>\u001a\u00020+H\u0002J\u0010\u0010?\u001a\u00020+2\u0008\u0010@\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006B"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/DeviceUtil;",
        "",
        "()V",
        "AD_ABILITY_CLOSE_GAID",
        "",
        "CLOSE_GAID",
        "",
        "GET_GAID_TIME_INTERVAL",
        "NOT_GAID",
        "OPEN_GAID",
        "PREF_GAID",
        "PREF_IS_LIMIT_AD_TRACKING_ENABLED",
        "TAG",
        "cpucores",
        "getCpucores",
        "()I",
        "setCpucores",
        "(I)V",
        "cpuhardware",
        "getCpuhardware",
        "()Ljava/lang/String;",
        "setCpuhardware",
        "(Ljava/lang/String;)V",
        "gsmInteger",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "ip",
        "isLimitStatus",
        "isNewUser",
        "",
        "lastQueryGaidTime",
        "",
        "mGAId",
        "mGsmLocation",
        "totalMem",
        "getTotalMem",
        "()J",
        "setTotalMem",
        "(J)V",
        "checkCanRetryInTimes",
        "value",
        "increment",
        "limit",
        "getCupInfo",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "getGAId",
        "getGaidStatus",
        "getGsmCellLocation",
        "getIp",
        "context",
        "Landroid/content/Context;",
        "getIsNewUserStatus",
        "getLocalIpAddress",
        "getMemoryInfo",
        "getSystemVersion",
        "getUUID",
        "intToIp",
        "ipInt",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "isValidIp4Address",
        "hostName",
        "queryGaid",
        "updateIsNewUserStatus",
        "appId",
        "AdvertisingIdClient",
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
.field private static final AD_ABILITY_CLOSE_GAID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field private static final CLOSE_GAID:I = 0x1

.field private static final GET_GAID_TIME_INTERVAL:I = 0x927c0

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

.field private static final NOT_GAID:I = 0x0

.field private static final OPEN_GAID:I = 0x2

.field private static final PREF_GAID:Ljava/lang/String;

.field private static final PREF_IS_LIMIT_AD_TRACKING_ENABLED:Ljava/lang/String; = "is_limit_ad_tracking_enabled"

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"

.field private static cpucores:I

.field private static cpuhardware:Ljava/lang/String;

.field private static final gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static ip:Ljava/lang/String;

.field private static isLimitStatus:I

.field private static isNewUser:Z

.field private static lastQueryGaidTime:J

.field private static mGAId:Ljava/lang/String;

.field private static mGsmLocation:Ljava/lang/String;

.field private static totalMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "device_util_ga_id"

    .line 15
    .line 16
    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    sput-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    const-wide/16 v1, -0x1

    .line 33
    .line 34
    sput-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    sput v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 38
    .line 39
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 40
    .line 41
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId$lambda$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "increment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lt p0, p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0
.end method

.method public static final getGAId()Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sget-wide v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    .line 24
    .line 25
    sub-long/2addr v0, v2

    .line 26
    const-wide/32 v2, 0x927c0

    .line 27
    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-lez v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    sput-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->lastQueryGaidTime:J

    .line 41
    .line 42
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 49
    .line 50
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "minisdk_storage"

    .line 55
    .line 56
    sget-object v3, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    const-string v0, ""

    .line 65
    .line 66
    :cond_1
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 83
    .line 84
    new-instance v1, Lcom/cloud/tmc/integration/utils/j;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/cloud/tmc/integration/utils/j;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->queryGaid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    const-string v1, "DeviceUtil"

    .line 100
    .line 101
    const-string v2, "getGAId"

    .line 102
    .line 103
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 107
    .line 108
    return-object v0
.end method

.method private static final getGAId$lambda$0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->queryGaid()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ip.hostAddress"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/net/NetworkInterface;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/net/InetAddress;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isValidIp4Address(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    move-object v1, v4

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v2, "DeviceUtil"

    .line 67
    .line 68
    const-string v3, "getLocalIpAddress: "

    .line 69
    .line 70
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    return-object v1
.end method

.method public static final getSystemVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getUUID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final isValidIp4Address(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :catch_0
    :cond_0
    return v0
.end method

.method private final queryGaid()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    .line 2
    .line 3
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext()"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_0
    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "minisdk_storage"

    .line 60
    .line 61
    sget-object v4, Lcom/cloud/tmc/integration/utils/DeviceUtil;->PREF_GAID:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v5, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "is_limit_ad_tracking_enabled"

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v0, 0x2

    .line 81
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/transsion/core/utils/f;->n(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGAId:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "gaid is "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v1, 0x0

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/transsion/core/log/LogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public final getCpucores()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCpuhardware()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCupInfo(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "HARDWARE"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    const-string v0, "cpucores"

    .line 42
    .line 43
    sget v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string v0, "cpuhardware"

    .line 49
    .line 50
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    const-string v0, "DeviceUtil"

    .line 57
    .line 58
    const-string v1, "getCupInfo: "

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public final getGaidStatus()I
    .locals 3

    .line 1
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "is_limit_ad_tracking_enabled"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/utils/f;->f(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    .line 19
    .line 20
    :cond_0
    sget v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isLimitStatus:I

    .line 21
    .line 22
    return v0
.end method

.method public final getGsmCellLocation()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->gsmInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "phone"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "|"

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sput-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->mGsmLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    return-object v1

    .line 94
    :goto_1
    const-string v2, "DeviceUtil"

    .line 95
    .line 96
    const-string v3, "getGsmCellLocation: "

    .line 97
    .line 98
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->intToIp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :goto_0
    const-string v1, "DeviceUtil"

    const-string v2, "getIp: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/net/ConnectivityManager;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    goto :goto_8

    :cond_4
    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-ne p1, v3, :cond_9

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_5

    :cond_6
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    goto :goto_6

    :cond_7
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 23
    :cond_8
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->intToIp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 24
    :goto_7
    const-string v0, "DeviceUtil"

    const-string v1, "getIp: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_9
    :goto_8
    sget-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->ip:Ljava/lang/String;

    return-object p1
.end method

.method public final getIsNewUserStatus()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMemoryInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v0, "activity"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Landroid/app/ActivityManager;

    .line 20
    .line 21
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 27
    .line 28
    .line 29
    sget-wide v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 30
    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    cmp-long p1, v1, v3

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 38
    .line 39
    const-wide/32 v2, 0x100000

    .line 40
    .line 41
    .line 42
    div-long/2addr v0, v2

    .line 43
    sput-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    const-string p1, "totalMem"

    .line 49
    .line 50
    sget-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 51
    .line 52
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    const-string p2, "DeviceUtil"

    .line 57
    .line 58
    const-string v0, "getMemoryInfo: "

    .line 59
    .line 60
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_2
    return-void
.end method

.method public final getTotalMem()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final intToIp(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    and-int/lit16 v1, p1, 0xff

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    shr-int/lit8 v2, p1, 0x8

    .line 23
    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    shr-int/lit8 v2, p1, 0x10

    .line 33
    .line 34
    and-int/lit16 v2, v2, 0xff

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    shr-int/lit8 p1, p1, 0x18

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "sb.toString()"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final setCpucores(I)V
    .locals 0

    .line 1
    sput p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpucores:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCpuhardware(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->cpuhardware:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTotalMem(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->totalMem:J

    .line 2
    .line 3
    return-void
.end method

.method public final updateIsNewUserStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->isNewUser:Z

    .line 15
    .line 16
    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportCacheData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :catchall_0
    :cond_1
    return-void
.end method
