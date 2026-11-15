.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/downloader/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloader$a;,
        Lcom/vungle/ads/internal/downloader/AssetDownloader$b;
    }
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final MINIMUM_SPACE_REQUIRED_MB:I = 0x1400000

.field private static final TAG:Ljava/lang/String; = "AssetDownloader"


# instance fields
.field private final downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private final okHttpClient$delegate:Lkotlin/Lazy;

.field private final pathProvider:Lcom/vungle/ads/internal/util/p;

.field private final transitioning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/p;)V
    .locals 1

    .line 1
    const-string v0, "downloadExecutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/p;

    .line 17
    .line 18
    new-instance p1, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient$delegate:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->download$lambda-0(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getPathProvider$p(Lcom/vungle/ads/internal/downloader/AssetDownloader;)Lcom/vungle/ads/internal/util/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$launchRequest(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkSpaceAvailable(Lcom/vungle/ads/internal/downloader/DownloadRequest;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/p;->getVungleDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "pathProvider.getVungleDir().absolutePath"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/p;->getAvailableBytes(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x1400000

    .line 21
    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/vungle/ads/NoSpaceError;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "Insufficient space "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v2, v0}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method private final decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Content-Encoding"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {p1, v1, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "gzip"

    .line 15
    .line 16
    invoke-static {v5, v1, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lokio/GzipSource;

    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Content-Type"

    .line 34
    .line 35
    invoke-static {p1, v0, v2, v3, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 40
    .line 41
    const-wide/16 v2, -0x1

    .line 42
    .line 43
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, p1, v2, v3, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method private final deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p3, p1}, Lcom/vungle/ads/internal/downloader/a;->onError(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "On success "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "AssetDownloader"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-interface {p3, p1, p2}, Lcom/vungle/ads/internal/downloader/a;->onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private static final download$lambda-0(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

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
    const-string v1, "Failed to execute download request: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/vungle/ads/internal/downloader/a$a;

    .line 32
    .line 33
    new-instance v2, Lcom/vungle/ads/OutOfMemory;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/vungle/ads/internal/downloader/a$a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/a$a$b$a;->getINTERNAL_ERROR()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v3, -0x1

    .line 45
    invoke-direct {v1, v3, v2, v0}, Lcom/vungle/ads/internal/downloader/a$a;-><init>(ILjava/lang/Throwable;I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0, p2, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private final isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    :goto_1
    return p1
.end method

.method private final launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-string v4, "On cancel "

    const-string v5, "download status: "

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launch request in thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3
    const-string v7, "AssetDownloader"

    invoke-virtual {v0, v7, v6}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is cancelled before starting"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v7, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$b;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/a$b;-><init>()V

    .line 8
    sget-object v2, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getCANCELLED()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V

    return-void

    .line 9
    :cond_0
    new-instance v6, Lcom/vungle/ads/internal/downloader/a$b;

    invoke-direct {v6}, Lcom/vungle/ads/internal/downloader/a$b;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/vungle/ads/internal/downloader/a$b;->setTimestampDownloadStart(J)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, -0x1

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {v1, v8}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    :goto_0
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$a;

    .line 15
    new-instance v4, Lcom/vungle/ads/AssetDownloadError;

    .line 16
    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_ASSET_URL:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-direct {v4, v5, v6}, Lcom/vungle/ads/AssetDownloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v4

    .line 20
    sget-object v5, Lcom/vungle/ads/internal/downloader/a$a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/a$a$b$a;->getINTERNAL_ERROR()I

    move-result v5

    .line 21
    invoke-direct {v0, v10, v4, v5}, Lcom/vungle/ads/internal/downloader/a$a;-><init>(ILjava/lang/Throwable;I)V

    .line 22
    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    return-void

    .line 23
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 24
    new-instance v4, Lcom/vungle/ads/internal/downloader/a$a;

    .line 25
    new-instance v5, Lcom/vungle/ads/AssetDownloadError;

    .line 26
    sget-object v6, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->ASSET_WRITE_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {v5, v6, v0}, Lcom/vungle/ads/AssetDownloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    .line 30
    sget-object v5, Lcom/vungle/ads/internal/downloader/a$a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/a$a$b$a;->getFILE_NOT_FOUND_ERROR()I

    move-result v5

    .line 31
    invoke-direct {v4, v10, v0, v5}, Lcom/vungle/ads/internal/downloader/a$a;-><init>(ILjava/lang/Throwable;I)V

    .line 32
    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    return-void

    .line 33
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->checkSpaceAvailable(Lcom/vungle/ads/internal/downloader/DownloadRequest;)Z

    move-result v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v9, :cond_4

    .line 34
    new-instance v0, Lcom/vungle/ads/internal/downloader/a$a;

    .line 35
    new-instance v4, Lcom/vungle/ads/NoSpaceError;

    invoke-direct {v4, v12, v11, v12}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v4

    .line 36
    sget-object v5, Lcom/vungle/ads/internal/downloader/a$a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/a$a$b$a;->getDISK_ERROR()I

    move-result v5

    .line 37
    invoke-direct {v0, v10, v4, v5}, Lcom/vungle/ads/internal/downloader/a$a;-><init>(ILjava/lang/Throwable;I)V

    .line 38
    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    return-void

    .line 39
    :cond_4
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v12

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_24

    .line 40
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-eqz v0, :cond_5

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v4, v12

    move-object v13, v4

    move-object/from16 v16, v14

    move-object v14, v9

    move-object v9, v1

    move-object v1, v13

    goto/16 :goto_2c

    :catch_0
    move-exception v0

    move-object v11, v3

    move v15, v10

    move-object v13, v12

    move-object/from16 v16, v14

    move-object v3, v1

    move-object v10, v2

    move-object v2, v4

    move-object v1, v13

    move-object v4, v1

    goto/16 :goto_25

    .line 43
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v10, v17

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x0

    .line 44
    :goto_3
    :try_start_4
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v12

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v12, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    .line 46
    :try_start_5
    invoke-static {v12}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 47
    :try_start_6
    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 48
    :try_start_7
    invoke-virtual {v13}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-eqz v0, :cond_15

    .line 49
    :try_start_8
    invoke-virtual {v13}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-eqz v0, :cond_7

    .line 50
    :try_start_9
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v16, v15

    .line 51
    :try_start_a
    new-instance v15, Lcom/vungle/ads/w;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v20, v4

    :try_start_b
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CACHED_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v15, v4}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v15, v4, v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_4
    move-object v10, v2

    move-object v11, v3

    move-object/from16 v16, v14

    move-object/from16 v2, v20

    const/4 v4, 0x0

    move-object v14, v9

    move-object v9, v1

    const/4 v1, 0x0

    goto/16 :goto_2c

    :catch_1
    move-exception v0

    :goto_5
    move-object v10, v2

    move-object v11, v3

    move/from16 v15, v16

    :goto_6
    move-object/from16 v2, v20

    const/4 v4, 0x0

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    goto/16 :goto_25

    :catchall_2
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v16, v15

    move-object v10, v2

    move-object v11, v3

    goto :goto_6

    :cond_7
    move-object/from16 v20, v4

    move/from16 v16, v15

    .line 55
    :goto_7
    :try_start_c
    invoke-direct {v1, v13}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v0, :cond_8

    .line 56
    :try_start_d
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 57
    :goto_8
    :try_start_e
    sget-object v15, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    const-string v2, "Start download from bytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v7, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const-wide/16 v1, 0x0

    cmp-long v15, v10, v1

    if-nez v15, :cond_9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 58
    :try_start_11
    invoke-static {v9, v15, v1, v2}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v18
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v2

    :goto_9
    move-object v11, v3

    :goto_a
    move-object/from16 v16, v14

    move-object/from16 v2, v20

    move-object v14, v9

    move-object/from16 v9, p0

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    move-object/from16 v10, p1

    move-object v1, v2

    :goto_b
    move-object v11, v3

    move/from16 v15, v16

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    :goto_c
    move-object/from16 v16, v14

    goto/16 :goto_25

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    :try_start_12
    invoke-static {v9}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v18

    :goto_d
    invoke-static/range {v18 .. v18}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 59
    :try_start_13
    sget-object v18, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual/range {v18 .. v18}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getSTARTED()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v0, :cond_a

    .line 60
    :try_start_14
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v21
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-wide/from16 v2, v21

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_b

    :cond_a
    const-wide/16 v2, 0x0

    :goto_e
    :try_start_15
    invoke-virtual {v6, v2, v3}, Lcom/vungle/ads/internal/downloader/a$b;->setSizeBytes(J)V

    .line 61
    invoke-virtual {v6, v10, v11}, Lcom/vungle/ads/internal/downloader/a$b;->setStartBytes(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :goto_f
    if-eqz v4, :cond_b

    .line 62
    :try_start_16
    invoke-interface {v1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v0

    const-wide/16 v2, 0x800

    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v15, v16

    move-object/from16 v2, v20

    goto :goto_c

    :cond_b
    const-wide/16 v2, -0x1

    .line 63
    :goto_10
    :try_start_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-lez v0, :cond_e

    .line 64
    :try_start_18
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    sget-object v0, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getCANCELLED()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V

    goto :goto_11

    .line 67
    :cond_c
    sget-object v0, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getIN_PROGRESS()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V

    .line 68
    invoke-interface {v1}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    goto :goto_f

    .line 69
    :cond_d
    new-instance v0, Lcom/vungle/ads/AssetWriteError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset save error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 71
    new-instance v0, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;

    const-string v2, "File is not existing"

    invoke-direct {v0, v2}, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 72
    :cond_e
    :goto_11
    :try_start_19
    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 73
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v0

    sget-object v2, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getIN_PROGRESS()I

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-ne v0, v3, :cond_f

    .line 74
    :try_start_1a
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getDONE()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 75
    :cond_f
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_10
    if-eqz v12, :cond_11

    .line 77
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    .line 78
    :cond_11
    sget-object v0, Lcom/vungle/ads/internal/util/g;->INSTANCE:Lcom/vungle/ads/internal/util/g;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v1

    .line 82
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getERROR()I

    move-result v3

    if-ne v1, v3, :cond_12

    :goto_12
    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    goto :goto_13

    .line 83
    :cond_12
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getSTARTED()I

    move-result v3

    if-ne v1, v3, :cond_13

    goto :goto_12

    .line 84
    :goto_13
    invoke-direct {v3, v10, v11, v14}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    move-object/from16 v2, v20

    goto :goto_14

    :cond_13
    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 85
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getCANCELLED()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_14
    move-object/from16 v2, v20

    .line 87
    invoke-direct {v3, v9, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    :goto_14
    move-object/from16 v23, v9

    move-object v9, v3

    move-object v3, v14

    move-object/from16 v14, v23

    goto/16 :goto_2b

    :catchall_6
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v2, v20

    :goto_15
    move-object/from16 v16, v14

    :goto_16
    move-object v14, v9

    move-object v9, v3

    goto/16 :goto_2c

    :catch_7
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v2, v20

    :goto_17
    move/from16 v15, v16

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v10, p1

    move-object v11, v3

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    goto :goto_15

    :catch_8
    move-exception v0

    move-object/from16 v10, p1

    move-object v11, v3

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    goto :goto_17

    :catchall_8
    move-exception v0

    move-object/from16 v10, p1

    :goto_18
    move-object v11, v3

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    :goto_19
    move-object/from16 v16, v14

    const/4 v1, 0x0

    goto :goto_16

    :catch_9
    move-exception v0

    move-object/from16 v10, p1

    move-object v11, v3

    move-object/from16 v2, v20

    :goto_1a
    move-object/from16 v3, p0

    :goto_1b
    move/from16 v15, v16

    const/4 v1, 0x0

    goto/16 :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v10, p1

    :goto_1c
    move-object v11, v3

    move-object/from16 v2, v20

    const/4 v15, 0x0

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object v10, v2

    goto :goto_18

    :catch_b
    move-exception v0

    move-object v10, v2

    goto :goto_1c

    :catchall_a
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v2, v20

    move-object v3, v1

    goto :goto_19

    :catch_c
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v2, v20

    const/4 v15, 0x0

    move-object v3, v1

    goto :goto_1b

    :catchall_b
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v2, v20

    :goto_1d
    move-object v3, v1

    :goto_1e
    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_16

    :catch_d
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v2, v20

    :goto_1f
    const/4 v15, 0x0

    move-object v3, v1

    move/from16 v15, v16

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_c

    :catchall_c
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    goto :goto_1d

    :catch_e
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move/from16 v16, v15

    goto :goto_1f

    :cond_15
    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move/from16 v16, v15

    const/4 v15, 0x0

    move-object v3, v1

    .line 88
    :try_start_1b
    new-instance v0, Lcom/vungle/ads/AssetFailedStatusCodeError;

    .line 89
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Asset download does not success: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-direct {v0, v8, v1, v4}, Lcom/vungle/ads/AssetFailedStatusCodeError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 93
    new-instance v0, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    move/from16 v4, v16

    :try_start_1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_1e

    :catch_f
    move-exception v0

    :goto_20
    move v15, v4

    :goto_21
    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_25

    :catch_10
    move-exception v0

    move/from16 v4, v16

    goto :goto_20

    :catch_11
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move v4, v15

    move-object v3, v1

    goto :goto_21

    :catch_12
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_22
    const/4 v15, -0x1

    goto :goto_25

    :catchall_e
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_23
    const/4 v13, 0x0

    goto/16 :goto_16

    :catch_13
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_24
    const/4 v13, 0x0

    goto :goto_22

    :catchall_f
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_23

    :catch_14
    move-exception v0

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object v3, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_24

    .line 94
    :goto_25
    :try_start_1d
    sget-object v14, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    move-object/from16 v19, v9

    :try_start_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v7, v9}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    instance-of v9, v0, Ljava/net/ProtocolException;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    if-eqz v9, :cond_16

    .line 96
    :try_start_1f
    new-instance v9, Lcom/vungle/ads/AssetRequestError;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    move-object/from16 v20, v2

    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/vungle/ads/AssetRequestError;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    goto :goto_27

    :catchall_10
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v14, v19

    move-object/from16 v2, v20

    goto/16 :goto_2c

    :catchall_11
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v9, p0

    :goto_26
    move-object/from16 v14, v19

    goto/16 :goto_2c

    :cond_16
    move-object/from16 v20, v2

    .line 98
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_17

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_18

    .line 99
    :cond_17
    new-instance v2, Lcom/vungle/ads/AssetFailedStatusCodeError;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v3, v9}, Lcom/vungle/ads/AssetFailedStatusCodeError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 101
    :cond_18
    :goto_27
    sget-object v2, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getERROR()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V

    .line 102
    new-instance v3, Lcom/vungle/ads/internal/downloader/a$a;

    sget-object v9, Lcom/vungle/ads/internal/downloader/a$a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$a$b$a;

    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/a$a$b$a;->getREQUEST_ERROR()I

    move-result v9

    invoke-direct {v3, v15, v0, v9}, Lcom/vungle/ads/internal/downloader/a$a;-><init>(ILjava/lang/Throwable;I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-eqz v13, :cond_19

    .line 103
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    goto :goto_28

    :cond_19
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_1a

    .line 104
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1a
    if-eqz v12, :cond_1b

    .line 105
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    :cond_1b
    sget-object v0, Lcom/vungle/ads/internal/util/g;->INSTANCE:Lcom/vungle/ads/internal/util/g;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v0

    .line 110
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getERROR()I

    move-result v1

    if-ne v0, v1, :cond_1c

    :goto_29
    move-object/from16 v9, p0

    goto :goto_2a

    .line 111
    :cond_1c
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getSTARTED()I

    move-result v1

    if-ne v0, v1, :cond_1d

    goto :goto_29

    .line 112
    :goto_2a
    invoke-direct {v9, v10, v11, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    move-object/from16 v14, v19

    move-object/from16 v2, v20

    goto :goto_2b

    :cond_1d
    move-object/from16 v9, p0

    .line 113
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getCANCELLED()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v14, v19

    goto :goto_2b

    :cond_1e
    move-object/from16 v14, v19

    move-object/from16 v2, v20

    .line 115
    invoke-direct {v9, v14, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    :goto_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v4, v2

    move-object v1, v9

    move-object v2, v10

    move-object v9, v14

    const/4 v0, 0x1

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object v14, v3

    move-object v3, v11

    const/4 v11, 0x1

    goto/16 :goto_1

    :catchall_12
    move-exception v0

    move-object v9, v3

    goto/16 :goto_26

    :catchall_13
    move-exception v0

    goto/16 :goto_16

    :goto_2c
    if-eqz v13, :cond_1f

    .line 116
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    goto :goto_2d

    :cond_1f
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_20

    .line 117
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_20
    if-eqz v12, :cond_21

    .line 118
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    :cond_21
    sget-object v3, Lcom/vungle/ads/internal/util/g;->INSTANCE:Lcom/vungle/ads/internal/util/g;

    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/util/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v3

    .line 123
    sget-object v4, Lcom/vungle/ads/internal/downloader/a$b$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getERROR()I

    move-result v5

    if-eq v3, v5, :cond_23

    .line 124
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getSTARTED()I

    move-result v5

    if-eq v3, v5, :cond_23

    .line 125
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/a$b$b$a;->getCANCELLED()I

    move-result v4

    if-ne v3, v4, :cond_22

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 127
    :cond_22
    invoke-direct {v9, v14, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    goto :goto_2e

    :cond_23
    move-object/from16 v3, v16

    .line 128
    invoke-direct {v9, v10, v11, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;Lcom/vungle/ads/internal/downloader/a$a;)V

    .line 129
    :goto_2e
    throw v0

    :cond_24
    move-object v9, v1

    return-void
.end method


# virtual methods
.method public cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 10
    .line 11
    new-instance v1, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/vungle/ads/internal/downloader/b;

    .line 17
    .line 18
    invoke-direct {v2, p1, p0, p2}, Lcom/vungle/ads/internal/downloader/b;-><init>(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
