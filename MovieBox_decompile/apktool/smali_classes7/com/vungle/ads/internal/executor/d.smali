.class public final Lcom/vungle/ads/internal/executor/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/executor/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/executor/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/executor/d$a;

.field private static final IO_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final JOBS_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final SINGLE_CORE_POOL_SIZE:I = 0x1

.field private static final VUNGLE_KEEP_ALIVE_TIME_SECONDS:I = 0xa


# instance fields
.field private API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private final NUMBER_OF_CORES:I

.field private OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/executor/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/executor/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/executor/d;->Companion:Lcom/vungle/ads/internal/executor/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iput v3, p0, Lcom/vungle/ads/internal/executor/d;->NUMBER_OF_CORES:I

    .line 13
    .line 14
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 15
    .line 16
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v8, Lcom/vungle/ads/internal/executor/c;

    .line 24
    .line 25
    const-string v1, "vng_jr"

    .line 26
    .line 27
    invoke-direct {v8, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v4, 0x5

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move v2, v3

    .line 34
    move-object v6, v12

    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 39
    .line 40
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 41
    .line 42
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    .line 44
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 48
    .line 49
    const-string v1, "vng_io"

    .line 50
    .line 51
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    const/4 v6, 0x1

    .line 56
    const-wide/16 v7, 0x5

    .line 57
    .line 58
    move-object v4, v0

    .line 59
    move-object v9, v12

    .line 60
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 64
    .line 65
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 66
    .line 67
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 73
    .line 74
    const-string v1, "vng_api"

    .line 75
    .line 76
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v7, 0xa

    .line 80
    .line 81
    move-object v4, v0

    .line 82
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 86
    .line 87
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 88
    .line 89
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 90
    .line 91
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 95
    .line 96
    const-string v1, "vng_logger"

    .line 97
    .line 98
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v4, v0

    .line 102
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 106
    .line 107
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 108
    .line 109
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 110
    .line 111
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 115
    .line 116
    const-string v1, "vng_background"

    .line 117
    .line 118
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v4, v0

    .line 122
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 126
    .line 127
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 128
    .line 129
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 130
    .line 131
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 135
    .line 136
    const-string v1, "vng_ua"

    .line 137
    .line 138
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v4, v0

    .line 142
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 146
    .line 147
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 148
    .line 149
    new-instance v10, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 150
    .line 151
    invoke-direct {v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 155
    .line 156
    const-string v1, "vng_down"

    .line 157
    .line 158
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 v5, 0x4

    .line 162
    const/4 v6, 0x4

    .line 163
    const-wide/16 v7, 0x1

    .line 164
    .line 165
    move-object v4, v0

    .line 166
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 170
    .line 171
    new-instance v0, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 172
    .line 173
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 174
    .line 175
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v11, Lcom/vungle/ads/internal/executor/c;

    .line 179
    .line 180
    const-string v1, "vng_ol"

    .line 181
    .line 182
    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x1

    .line 186
    const/4 v6, 0x1

    .line 187
    const-wide/16 v7, 0xa

    .line 188
    .line 189
    move-object v4, v0

    .line 190
    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    .line 191
    .line 192
    .line 193
    iput-object v0, p0, Lcom/vungle/ads/internal/executor/d;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 194
    .line 195
    return-void
.end method


# virtual methods
.method public getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->API_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloaderExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoggerExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffloadExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUaExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method
