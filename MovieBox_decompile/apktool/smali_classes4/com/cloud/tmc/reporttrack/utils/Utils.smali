.class public Lcom/cloud/tmc/reporttrack/utils/Utils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    .line 26
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 29
    .line 30
    const/16 v1, 0x1c

    .line 31
    .line 32
    invoke-direct {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v9, Lcom/cloud/tmc/reporttrack/thread/QueryAthenaStatusThreadFactory;

    .line 36
    .line 37
    invoke-direct {v9}, Lcom/cloud/tmc/reporttrack/thread/QueryAthenaStatusThreadFactory;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v10, Lcom/cloud/tmc/reporttrack/thread/QueryAthenaStatusRejectHandler;

    .line 41
    .line 42
    invoke-direct {v10}, Lcom/cloud/tmc/reporttrack/thread/QueryAthenaStatusRejectHandler;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    const/4 v4, 0x4

    .line 47
    const-wide/16 v5, 0x3c

    .line 48
    .line 49
    move-object v2, v0

    .line 50
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    .line 55
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

.method public static getInitAthenaStatus()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getInitAthenaStatus -> currentProcessIsInitAthena:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/reporttrack/utils/Utils;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "getInitAthenaStatus -> mainProcessIsInitAthena:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/reporttrack/utils/Utils;->mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "getInitAthenaStatus -> delayStatus:"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    sget-object v1, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v1, 0x0

    .line 65
    const-class v2, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;

    .line 66
    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const-string v0, "currentProcessIsInitAthena"

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    sget-object v3, Lcom/cloud/tmc/reporttrack/utils/Utils;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    const-string v0, "mainProcessIsInitAthena"

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    sget-object v3, Lcom/cloud/tmc/reporttrack/utils/Utils;->mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    .line 125
    .line 126
    :cond_1
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v3, -0x1

    .line 133
    if-ne v0, v3, :cond_3

    .line 134
    .line 135
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/AthenaConstants;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    const-string v0, "delay"

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    .line 155
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_2
    return-void
.end method
