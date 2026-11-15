.class public final Lcom/cloud/tmc/offline/download/task/DownloadTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0001%BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012 \u0008\u0002\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\t\u00a2\u0006\u0002\u0010\rJ\"\u0010\"\u001a\u00020\u000c2\u0018\u0010#\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010$H\u0016R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R2\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/DownloadTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "trigger",
        "",
        "isIdleRunTask",
        "",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V",
        "downloadFinishTime",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "downloadStartTime",
        "()Z",
        "getOffPkgConfig",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "priority",
        "",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "retryCount",
        "getTrigger",
        "()Ljava/lang/String;",
        "run",
        "block",
        "Lkotlin/Function1;",
        "Companion",
        "com.cloud.tmc.offline_download"
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

.field private static final RETRY_DELAY_COUNT:I = 0x3

.field private static final RETRY_DELAY_TIME:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: DownloadTask"


# instance fields
.field private final downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final isIdleRunTask:Z

.field private final offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field private onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private retryCount:I

.field private final trigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->Companion:Lcom/cloud/tmc/offline/download/task/DownloadTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offPkgConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->trigger:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask:Z

    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 7
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/task/DownloadTask;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadFinishTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->downloadStartTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnResult()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->trigger:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIdleRunTask()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask:Z

    .line 2
    .line 3
    return v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getStartTaskTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long v0, v9, v0

    .line 14
    .line 15
    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 16
    .line 17
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v12, v2

    .line 22
    check-cast v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 23
    .line 24
    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v14, "\uff0c\u8017\u65f6\uff1a"

    .line 35
    .line 36
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v15, "ms"

    .line 43
    .line 44
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    sget-object v5, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 52
    .line 53
    iget-object v2, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getTrigger()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v1, v5

    .line 72
    move-object/from16 v16, v15

    .line 73
    .line 74
    move-object v15, v5

    .line 75
    move-object v5, v0

    .line 76
    move-object v0, v6

    .line 77
    move-object/from16 v6, p0

    .line 78
    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-interface {v12, v6, v13, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "DownloadTask::run() "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v12, "TmcOfflineDownload: DownloadTask"

    .line 111
    .line 112
    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v13, 0x1

    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    const-string v0, "Network connection is not connected!"

    .line 123
    .line 124
    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    if-eqz v8, :cond_0

    .line 128
    .line 129
    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 130
    .line 131
    const/16 v2, 0x6b

    .line 132
    .line 133
    invoke-direct {v1, v2, v0, v13}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_f

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_2
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 157
    .line 158
    invoke-virtual {v15, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateDefaultZipFileInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, "fileInfo: "

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v12, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;->getZipCacheAbsolutePath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/4 v2, 0x0

    .line 187
    :try_start_0
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    move-object v3, v0

    .line 194
    const-string v0, "Unable to create zip directory"

    .line 195
    .line 196
    invoke-static {v12, v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    move v0, v2

    .line 200
    :goto_0
    if-nez v0, :cond_4

    .line 201
    .line 202
    if-eqz v8, :cond_3

    .line 203
    .line 204
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 205
    .line 206
    const/16 v21, 0x5

    .line 207
    .line 208
    const/16 v22, 0x0

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    const-string v19, "Offline cache file deletion failed"

    .line 213
    .line 214
    const/16 v20, 0x0

    .line 215
    .line 216
    move-object/from16 v17, v0

    .line 217
    .line 218
    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_3
    return-void

    .line 225
    :cond_4
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/cloud/h5update/TH5Update$a;->o(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 231
    .line 232
    iget-object v0, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUpdateEntity(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/h5update/bean/UpdateEntity;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-nez v0, :cond_6

    .line 239
    .line 240
    if-eqz v8, :cond_5

    .line 241
    .line 242
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 243
    .line 244
    const/16 v21, 0x5

    .line 245
    .line 246
    const/16 v22, 0x0

    .line 247
    .line 248
    const/16 v18, 0x0

    .line 249
    .line 250
    const-string v19, "Offline cache extra config is null or empty"

    .line 251
    .line 252
    const/16 v20, 0x0

    .line 253
    .line 254
    move-object/from16 v17, v0

    .line 255
    .line 256
    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_5
    return-void

    .line 263
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    move-object v4, v3

    .line 268
    check-cast v4, Ljava/util/Collection;

    .line 269
    .line 270
    if-eqz v4, :cond_7

    .line 271
    .line 272
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_8

    .line 277
    .line 278
    :cond_7
    move v2, v13

    .line 279
    :cond_8
    if-eqz v2, :cond_a

    .line 280
    .line 281
    if-eqz v8, :cond_9

    .line 282
    .line 283
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 284
    .line 285
    const/16 v21, 0x5

    .line 286
    .line 287
    const/16 v22, 0x0

    .line 288
    .line 289
    const/16 v18, 0x0

    .line 290
    .line 291
    const-string v19, "Offline resource is null or empty"

    .line 292
    .line 293
    const/16 v20, 0x0

    .line 294
    .line 295
    move-object/from16 v17, v0

    .line 296
    .line 297
    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    :cond_9
    return-void

    .line 304
    :cond_a
    sget-object v2, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOnUpdateCallback$com_cloud_tmc_offline_download()Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    if-eqz v4, :cond_c

    .line 311
    .line 312
    if-eqz v8, :cond_b

    .line 313
    .line 314
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 315
    .line 316
    const/16 v21, 0x5

    .line 317
    .line 318
    const/16 v22, 0x0

    .line 319
    .line 320
    const/16 v18, 0x0

    .line 321
    .line 322
    const-string v19, "Offline has downloadTask is running..."

    .line 323
    .line 324
    const/16 v20, 0x0

    .line 325
    .line 326
    move-object/from16 v17, v0

    .line 327
    .line 328
    invoke-direct/range {v17 .. v22}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :cond_b
    return-void

    .line 335
    :cond_c
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 336
    .line 337
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 342
    .line 343
    .line 344
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 345
    .line 346
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 347
    .line 348
    .line 349
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 352
    .line 353
    .line 354
    new-instance v13, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;

    .line 355
    .line 356
    invoke-direct {v13, v7, v4, v15, v5}, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;-><init>(Lcom/cloud/tmc/offline/download/task/DownloadTask;Ljava/util/concurrent/CountDownLatch;Ljava/util/Set;Ljava/util/Set;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v13}, Lcom/cloud/tmc/offline/download/OfflineManager;->setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    .line 360
    .line 361
    .line 362
    :try_start_1
    sget-object v5, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 363
    .line 364
    invoke-virtual {v5, v0}, Lcom/cloud/h5update/utils/l;->p(Lcom/cloud/h5update/bean/UpdateEntity;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 368
    .line 369
    .line 370
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    int-to-long v6, v0

    .line 372
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 373
    .line 374
    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v4, "await: "

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    sget-object v0, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    .line 400
    move-object/from16 v7, p0

    .line 401
    .line 402
    :try_start_3
    iget-object v3, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 403
    .line 404
    invoke-virtual {v3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportDownloadRecord(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    invoke-virtual {v2, v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->setOnUpdateCallback$com_cloud_tmc_offline_download(Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;)V

    .line 413
    .line 414
    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 416
    .line 417
    .line 418
    move-result-wide v2

    .line 419
    sub-long/2addr v2, v9

    .line 420
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 425
    .line 426
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 427
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    move-object/from16 v5, v16

    .line 443
    .line 444
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    iget-object v4, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getTrigger()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->isIdleRunTask()Z

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    move-object v2, v4

    .line 470
    move-object v3, v5

    .line 471
    move-object v4, v11

    .line 472
    move-object v5, v13

    .line 473
    move-object v11, v6

    .line 474
    move-object/from16 v6, p0

    .line 475
    .line 476
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;)Landroid/os/Bundle;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-interface {v0, v11, v9, v10, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_d

    .line 488
    .line 489
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    .line 490
    .line 491
    iget-object v1, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 492
    .line 493
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    const-string v3, "Download completed. offPkgConfig: "

    .line 503
    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const/4 v2, 0x1

    .line 515
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;Z)V

    .line 516
    .line 517
    .line 518
    goto :goto_1

    .line 519
    :catchall_0
    move-exception v0

    .line 520
    goto :goto_2

    .line 521
    :cond_d
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 522
    .line 523
    const-string v1, "Download failed"

    .line 524
    .line 525
    const/16 v2, 0x71

    .line 526
    .line 527
    const/4 v3, 0x1

    .line 528
    invoke-direct {v0, v2, v1, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 529
    .line 530
    .line 531
    :goto_1
    if-eqz v8, :cond_e

    .line 532
    .line 533
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    .line 535
    .line 536
    goto :goto_3

    .line 537
    :catchall_1
    move-exception v0

    .line 538
    move-object/from16 v7, p0

    .line 539
    .line 540
    :goto_2
    const-string v1, "Error processing update entity"

    .line 541
    .line 542
    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    .line 544
    .line 545
    if-eqz v8, :cond_e

    .line 546
    .line 547
    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v15

    .line 553
    const/16 v17, 0x1

    .line 554
    .line 555
    const/16 v18, 0x0

    .line 556
    .line 557
    const/4 v14, 0x0

    .line 558
    const/16 v16, 0x1

    .line 559
    .line 560
    move-object v13, v1

    .line 561
    invoke-direct/range {v13 .. v18}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    :cond_e
    :goto_3
    return-void

    .line 568
    :cond_f
    :goto_4
    if-eqz v8, :cond_11

    .line 569
    .line 570
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 571
    .line 572
    iget-object v1, v7, Lcom/cloud/tmc/offline/download/task/DownloadTask;->offPkgConfig:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 573
    .line 574
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    if-nez v1, :cond_10

    .line 579
    .line 580
    const-string v1, "The"

    .line 581
    .line 582
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v1, " offline package download group is empty"

    .line 591
    .line 592
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    const/16 v2, 0x69

    .line 600
    .line 601
    const/4 v3, 0x1

    .line 602
    invoke-direct {v0, v2, v1, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 603
    .line 604
    .line 605
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    :cond_11
    return-void
.end method

.method public setOnResult(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask;->priority:I

    .line 2
    .line 3
    return-void
.end method
