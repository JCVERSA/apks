.class public final Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000cJ\"\u0010\u001b\u001a\u00020\u000b2\u0018\u0010\u001c\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR2\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;",
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "_packageName",
        "",
        "_priority",
        "",
        "trigger",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "isIdleRunTask",
        "",
        "()Z",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "priority",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: LoadOfflineConfigTask"


# instance fields
.field private final _packageName:Ljava/lang/String;

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

.field private final trigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->Companion:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
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
    const-string v0, "_packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "trigger"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "LoadOfflineConfigTask-"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->trigger:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    iput p2, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->trigger:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIdleRunTask()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 15
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
    move-object v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v10

    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getStartTaskTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sub-long v0, v10, v0

    .line 13
    .line 14
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v12, v2

    .line 21
    check-cast v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 22
    .line 23
    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "\uff0c\u8017\u65f6\uff1a"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "ms"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v6, 0x1

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v1, 0x0

    .line 71
    move-object v0, v2

    .line 72
    move-object v2, v3

    .line 73
    move-object v3, v4

    .line 74
    move-object v4, v5

    .line 75
    move-object v5, p0

    .line 76
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v12, v1, v13, v14, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->isConnected()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const-string v1, "TmcOfflineDownload: LoadOfflineConfigTask"

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const-string v0, "Network connection is not connected!"

    .line 92
    .line 93
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eqz v9, :cond_0

    .line 97
    .line 98
    new-instance v1, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 99
    .line 100
    const/16 v2, 0x6b

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-direct {v1, v2, v0, v3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v0, v8, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v3, "request config _packageName: "

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 133
    .line 134
    iget-object v3, v8, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->_packageName:Ljava/lang/String;

    .line 135
    .line 136
    const/4 v6, 0x6

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    move-object v2, v0

    .line 141
    invoke-static/range {v2 .. v7}, Lcom/cloud/h5update/TH5Update$a;->m(Lcom/cloud/h5update/TH5Update$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_3

    .line 149
    .line 150
    const-string v0, "context is null!"

    .line 151
    .line 152
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    if-eqz v9, :cond_2

    .line 156
    .line 157
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 158
    .line 159
    const/4 v6, 0x5

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v3, 0x0

    .line 162
    const-string v4, "context is null!"

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    move-object v2, v0

    .line 166
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void

    .line 173
    :cond_3
    invoke-virtual {v0, v2}, Lcom/cloud/h5update/TH5Update$a;->k(Landroid/content/Context;)Lcom/cloud/h5update/b$a;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 178
    .line 179
    new-instance v2, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;

    .line 180
    .line 181
    invoke-direct {v2, v10, v11, p0, v9}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;-><init>(JLcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;Lkotlin/jvm/functions/Function1;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, v2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;-><init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/cloud/h5update/b$a;->c(Lv6/a;)Lcom/cloud/h5update/b$a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/cloud/h5update/b$a;->b()V

    .line 192
    .line 193
    .line 194
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
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->priority:I

    .line 2
    .line 3
    return-void
.end method
