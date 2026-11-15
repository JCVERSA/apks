.class public final Lcom/vungle/ads/internal/load/i$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/downloader/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/i;->downloadJs$lambda-1(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $advertisement:Lcom/vungle/ads/internal/model/AdPayload;

.field final synthetic $executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field final synthetic $jsPath:Ljava/io/File;

.field final synthetic $mraidJsFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i$b;->$executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/load/i$b;->$advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/load/i$b;->$jsPath:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/load/i$b;->$mraidJsFile:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/ads/internal/load/i$b;->onError$lambda-0(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/ads/internal/load/i$b;->onSuccess$lambda-1(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onError$lambda-0(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 5

    .line 1
    const-string v0, "MraidJsLoader"

    .line 2
    .line 3
    const-string v1, "$downloadRequest"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$jsPath"

    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "download mraid js error: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/a$a;->getServerCode()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_5

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    move-object v4, v3

    .line 42
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, ". Failed to load "

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", reason: "

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/a$a;->getCause()Ljava/lang/Throwable;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object p0, v3

    .line 80
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 88
    .line 89
    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/vungle/ads/MraidJsError;

    .line 93
    .line 94
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 95
    .line 96
    invoke-direct {p1, v2, p0}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :cond_2
    invoke-virtual {p1, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 110
    .line 111
    .line 112
    invoke-static {p3}, Lcom/vungle/ads/internal/util/g;->deleteContents(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    :goto_2
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 116
    .line 117
    invoke-static {p0, v1}, Lcom/vungle/ads/internal/load/i;->access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_3
    :try_start_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 122
    .line 123
    const-string p2, "Failed to delete js assets"

    .line 124
    .line 125
    invoke-virtual {p1, v0, p2, p0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_4
    return-void

    .line 130
    :goto_5
    sget-object p1, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 131
    .line 132
    invoke-static {p1, v1}, Lcom/vungle/ads/internal/load/i;->access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method private static final onSuccess$lambda-1(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 5

    .line 1
    const-string v0, "$file"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$mraidJsFile"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$jsPath"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    cmp-long p0, v1, v3

    .line 31
    .line 32
    if-lez p0, :cond_0

    .line 33
    .line 34
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 35
    .line 36
    const/16 p1, 0xa

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/load/i;->access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance p0, Lcom/vungle/ads/MraidJsError;

    .line 45
    .line 46
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_JS_WRITE_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "Mraid js downloaded but write failure: "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, v1, p1}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 85
    .line 86
    .line 87
    invoke-static {p3}, Lcom/vungle/ads/internal/util/g;->deleteContents(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 91
    .line 92
    invoke-static {p0, v0}, Lcom/vungle/ads/internal/load/i;->access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 97
    .line 98
    const-string p2, "MraidJsLoader"

    .line 99
    .line 100
    const-string p3, "Failed to delete js assets"

    .line 101
    .line 102
    invoke-virtual {p1, p2, p3, p0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    .line 106
    .line 107
    invoke-static {p0, v0}, Lcom/vungle/ads/internal/load/i;->access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .locals 4

    .line 1
    const-string v0, "downloadRequest"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i$b;->$executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i$b;->$advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/vungle/ads/internal/load/i$b;->$jsPath:Ljava/io/File;

    .line 11
    .line 12
    new-instance v3, Lcom/vungle/ads/internal/load/k;

    .line 13
    .line 14
    invoke-direct {v3, p1, p2, v1, v2}, Lcom/vungle/ads/internal/load/k;-><init>(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .locals 4

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadRequest"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/load/i$b;->$executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i$b;->$mraidJsFile:Ljava/io/File;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i$b;->$advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/vungle/ads/internal/load/i$b;->$jsPath:Ljava/io/File;

    .line 18
    .line 19
    new-instance v3, Lcom/vungle/ads/internal/load/j;

    .line 20
    .line 21
    invoke-direct {v3, p1, v0, v1, v2}, Lcom/vungle/ads/internal/load/j;-><init>(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v3}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
