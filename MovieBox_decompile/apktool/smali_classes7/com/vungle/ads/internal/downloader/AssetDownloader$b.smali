.class final Lcom/vungle/ads/internal/downloader/AssetDownloader$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloader$b;

.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloader$b;

    .line 7
    .line 8
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


# virtual methods
.method public final createOkHttpClient(Lcom/vungle/ads/internal/util/p;)Lokhttp3/OkHttpClient;
    .locals 8

    .line 1
    const-string v0, "pathProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->client:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/16 v2, 0x3c

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->isCleverCacheEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getCleverCacheDiskSize()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->getCleverCacheDiskPercentage()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/p;->getCleverCacheDir()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, "pathProvider.getCleverCacheDir().absolutePath"

    .line 66
    .line 67
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v4}, Lcom/vungle/ads/internal/util/p;->getAvailableBytes(Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    int-to-long v6, v1

    .line 75
    mul-long/2addr v4, v6

    .line 76
    const/16 v1, 0x64

    .line 77
    .line 78
    int-to-long v6, v1

    .line 79
    div-long/2addr v4, v6

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-wide/16 v3, 0x0

    .line 85
    .line 86
    cmp-long v3, v1, v3

    .line 87
    .line 88
    if-lez v3, :cond_0

    .line 89
    .line 90
    new-instance v3, Lokhttp3/Cache;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/p;->getCleverCacheDir()Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v3, p1, v1, v2}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 104
    .line 105
    const-string v1, "OkHttpClientWrapper"

    .line 106
    .line 107
    const-string v2, "cache disk capacity size <=0, no clever cache active."

    .line 108
    .line 109
    invoke-virtual {p1, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->client:Lokhttp3/OkHttpClient;

    .line 117
    .line 118
    :cond_2
    return-object v0
.end method
