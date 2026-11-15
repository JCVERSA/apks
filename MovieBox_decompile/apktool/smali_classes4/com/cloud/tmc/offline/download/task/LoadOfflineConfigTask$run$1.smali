.class public final Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->run(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1",
        "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;",
        "noNetwork",
        "",
        "url",
        "",
        "errCode",
        "",
        "errMsg",
        "onFailure",
        "onSuccess",
        "",
        "responseStr",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startRunTime:J

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;


# direct methods
.method constructor <init>(JLcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public noNetwork(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

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
    const-string v1, "noNetwork: "

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
    const-string p1, " "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "TmcOfflineDownload: LoadOfflineConfigTask"

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "url"

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
    const-string v1, "onFailure: "

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
    const-string p1, " "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "TmcOfflineDownload: LoadOfflineConfigTask"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    .line 47
    .line 48
    sub-long/2addr v0, v2

    .line 49
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 56
    .line 57
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "\uff0c\u8017\u65f6\uff1a"

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, "ms"

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object v4, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 87
    .line 88
    iget-object v5, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v5, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v9, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 109
    .line 110
    const/4 v10, 0x1

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-static/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 122
    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    new-instance v0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "errCode: "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, " errMsg: "

    .line 141
    .line 142
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const/4 p3, 0x1

    .line 153
    const/16 v1, 0x70

    .line 154
    .line 155
    invoke-direct {v0, v1, p2, p3}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "responseStr"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "responseStr: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "TmcOfflineDownload: LoadOfflineConfigTask"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    iget-wide v6, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$startRunTime:J

    .line 37
    .line 38
    sub-long/2addr v4, v6

    .line 39
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 46
    .line 47
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 48
    .line 49
    iget-object v7, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 50
    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, "\uff0c\u8017\u65f6\uff1a"

    .line 60
    .line 61
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v7, "ms"

    .line 68
    .line 69
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    sget-object v15, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 77
    .line 78
    iget-object v8, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->getTrigger()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    iget-object v8, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 85
    .line 86
    invoke-virtual {v8}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;->isIdleRunTask()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    iget-object v13, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask;

    .line 99
    .line 100
    const/4 v14, 0x1

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    move-object v8, v15

    .line 104
    move-object v5, v15

    .line 105
    move-object v15, v4

    .line 106
    invoke-static/range {v8 .. v15}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->pointCommonParams$default(Lcom/cloud/tmc/offline/download/utils/OfflineUtils;Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/offline/download/task/base/ITask;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/4 v8, 0x0

    .line 111
    invoke-interface {v2, v8, v6, v7, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v4, 0x1

    .line 119
    if-nez v2, :cond_1

    .line 120
    .line 121
    iget-object v0, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 122
    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    new-instance v2, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 126
    .line 127
    const/16 v3, 0x6c

    .line 128
    .line 129
    const-string v5, "responseStr is empty!"

    .line 130
    .line 131
    invoke-direct {v2, v3, v5, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_0
    return v4

    .line 138
    :cond_1
    :try_start_0
    new-instance v2, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1$onSuccess$response$1;

    .line 139
    .line 140
    invoke-direct {v2}, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1$onSuccess$response$1;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v6, "object :\n               \u2026<UpdateEntity>>() {}.type"

    .line 148
    .line 149
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/cloud/h5update/bean/BaseResponse;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getCode()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    if-eqz v2, :cond_2

    .line 167
    .line 168
    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getCode()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v8, "request failed with code: "

    .line 184
    .line 185
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v6, " and message: "

    .line 192
    .line 193
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/16 v6, 0x6d

    .line 204
    .line 205
    invoke-direct {v5, v6, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    goto :goto_1

    .line 214
    :cond_2
    :goto_0
    return v4

    .line 215
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/BaseResponse;->getData()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lcom/cloud/h5update/bean/UpdateEntity;

    .line 220
    .line 221
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateOffPkgConfig(Lcom/cloud/h5update/bean/UpdateEntity;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-nez v0, :cond_5

    .line 226
    .line 227
    iget-object v0, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 228
    .line 229
    if-eqz v0, :cond_4

    .line 230
    .line 231
    new-instance v2, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 232
    .line 233
    const-string v5, "TH5Update configure conversion offPkgConfig failed!"

    .line 234
    .line 235
    const/16 v6, 0x6e

    .line 236
    .line 237
    invoke-direct {v2, v6, v5, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    :cond_4
    return v4

    .line 244
    :cond_5
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isNeedDownload(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_8

    .line 249
    .line 250
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->diffUpdateOfflinePkgConfig(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 254
    .line 255
    if-eqz v2, :cond_7

    .line 256
    .line 257
    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-nez v0, :cond_6

    .line 264
    .line 265
    const-string v0, "It"

    .line 266
    .line 267
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v0, " doesn\'t require a download"

    .line 276
    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const/16 v6, 0x6f

    .line 285
    .line 286
    invoke-direct {v5, v6, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 287
    .line 288
    .line 289
    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_7
    return v4

    .line 293
    :cond_8
    sget-object v2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    .line 294
    .line 295
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setOfflinePkgConfigCache(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 296
    .line 297
    .line 298
    const-string v2, "Load offline configuration successfully"

    .line 299
    .line 300
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 304
    .line 305
    if-eqz v2, :cond_9

    .line 306
    .line 307
    new-instance v5, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    .line 308
    .line 309
    invoke-direct {v5, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;-><init>(Ljava/lang/Object;Z)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :goto_1
    const-string v2, "Exception json parse error"

    .line 317
    .line 318
    invoke-static {v3, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v1, Lcom/cloud/tmc/offline/download/task/LoadOfflineConfigTask$run$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 322
    .line 323
    if-eqz v2, :cond_9

    .line 324
    .line 325
    new-instance v3, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 326
    .line 327
    const/16 v5, 0x3e8

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-direct {v3, v5, v0, v4}, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;-><init>(ILjava/lang/String;Z)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    :cond_9
    :goto_2
    return v4
.end method
