.class public final Lcom/transsion/player/shorttv/preload/b;
.super Landroidx/media3/exoplayer/offline/b;
.source "source.java"


# instance fields
.field private final d:Landroidx/media3/datasource/cache/a$c;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    const-string v0, "cacheDataSourceFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/b;-><init>(Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/b;->d:Landroidx/media3/datasource/cache/a$c;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/player/shorttv/preload/b;->e:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;
    .locals 3

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->A0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/t$c;

    .line 28
    .line 29
    invoke-direct {v1}, Landroidx/media3/common/t$c;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/b;->d:Landroidx/media3/datasource/cache/a$c;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/b;->e:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;-><init>(Landroidx/media3/common/t;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "Unsupported type: "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/offline/b;->a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string p1, "createDownloader(...)"

    .line 84
    .line 85
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v0
.end method
