.class public final Lcom/vungle/ads/internal/load/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/load/i$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/load/i;

.field public static final MRAID_AVAILABLE:I = 0xd

.field public static final MRAID_DOWNLOADED:I = 0xa

.field public static final MRAID_DOWNLOAD_FAILED:I = 0xc

.field public static final MRAID_INVALID_ENDPOINT:I = 0xb

.field private static final TAG:Ljava/lang/String; = "MraidJsLoader"

.field private static final isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/vungle/ads/internal/load/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/load/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/load/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
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

.method public static synthetic a(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/load/i;->downloadJs$lambda-1(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic downloadJs$default(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p4

    .line 9
    :goto_0
    and-int/lit8 p4, p6, 0x10

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/load/i;->downloadJs(Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final downloadJs$lambda-1(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 10

    .line 1
    const-string v0, "$pathProvider"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$downloader"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$executor"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "MraidJsLoader"

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_0
    sget-object v1, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    :goto_0
    sget-object p0, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 39
    .line 40
    const-string p1, "mraid js is downloading, waiting for the previous request."

    .line 41
    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    sget-object p0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidEndpoint()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidJsVersion()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p2, p0}, Lcom/vungle/ads/internal/util/p;->getJsAssetDir(Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v3, Ljava/io/File;

    .line 71
    .line 72
    const-string v4, "mraid.min.js"

    .line 73
    .line 74
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    sget-object p0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 84
    .line 85
    const-string p1, "mraid js already downloaded"

    .line 86
    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 91
    .line 92
    const/16 p1, 0xd

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/p;->getJsDir()Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/vungle/ads/internal/util/g;->deleteContents(Ljava/io/File;)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Lcom/vungle/ads/internal/model/AdAsset;

    .line 106
    .line 107
    const-string v5, "mraid.min.js"

    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, "/mraid.min.js"

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-string v1, "mraidJsFile.absolutePath"

    .line 131
    .line 132
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v8, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    .line 136
    .line 137
    const/4 v9, 0x1

    .line 138
    move-object v4, p2

    .line 139
    invoke-direct/range {v4 .. v9}, Lcom/vungle/ads/internal/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdAsset$FileType;Z)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 143
    .line 144
    sget-object v4, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGH:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 145
    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :cond_4
    invoke-direct {v1, v4, p2, v2}, Lcom/vungle/ads/internal/downloader/DownloadRequest;-><init>(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Lcom/vungle/ads/internal/model/AdAsset;Lcom/vungle/ads/internal/util/n;)V

    .line 153
    .line 154
    .line 155
    new-instance p2, Lcom/vungle/ads/internal/load/i$b;

    .line 156
    .line 157
    invoke-direct {p2, p4, p1, p0, v3}, Lcom/vungle/ads/internal/load/i$b;-><init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;Ljava/io/File;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p3, v1, p2}, Lcom/vungle/ads/internal/downloader/Downloader;->download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    :goto_1
    new-instance p0, Lcom/vungle/ads/MraidJsError;

    .line 165
    .line 166
    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 167
    .line 168
    const-string p3, "Mraid endpoint is empty"

    .line 169
    .line 170
    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :cond_6
    invoke-virtual {p0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 184
    .line 185
    .line 186
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 187
    .line 188
    const/16 p1, 0xb

    .line 189
    .line 190
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :goto_2
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 195
    .line 196
    const-string p2, "Failed to download mraid js"

    .line 197
    .line 198
    invoke-virtual {p1, v0, p2, p0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .line 200
    .line 201
    :goto_3
    return-void
.end method

.method private final notifyListeners(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/vungle/ads/internal/load/i$a;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/vungle/ads/internal/load/i$a;->onDownloadResult(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final downloadJs(Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 7

    .line 1
    const-string v0, "pathProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloader"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "executor"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/vungle/ads/internal/load/h;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p4

    .line 20
    move-object v3, p5

    .line 21
    move-object v4, p1

    .line 22
    move-object v5, p2

    .line 23
    move-object v6, p3

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/load/h;-><init>(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
