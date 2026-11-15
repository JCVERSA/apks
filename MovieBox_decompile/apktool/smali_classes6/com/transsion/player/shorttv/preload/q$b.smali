.class public final Lcom/transsion/player/shorttv/preload/q$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/shorttv/preload/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0

    .line 1
    const-string p2, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "VideoPreloadUtil"

    .line 7
    .line 8
    const-string p2, "onWaitingForRequirementsChanged:"

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;)V
    .locals 1

    .line 1
    const-string v0, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "download"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "VideoPreloadUtil"

    .line 12
    .line 13
    const-string p2, "onDownloadRemoved:"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0

    .line 1
    const-string p2, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "VideoPreloadUtil"

    .line 7
    .line 8
    const-string p2, "onDownloadsPausedChanged:"

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 1

    .line 1
    const-string v0, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "VideoPreloadUtil"

    .line 7
    .line 8
    const-string v0, "onIdle:"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/transsion/player/shorttv/preload/q;->l(Lcom/transsion/player/shorttv/preload/q;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0

    .line 1
    const-string p3, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "requirements"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "VideoPreloadUtil"

    .line 12
    .line 13
    const-string p2, "onRequirementsStateChanged:"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public f(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V
    .locals 6

    .line 1
    const-string p3, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "download"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p2, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->b()F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "onDownloadChanged:  download.requestId:"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, "     bytesDownloaded:"

    .line 39
    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "  contentLength:"

    .line 47
    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "  percentDownloaded:"

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p3, "VideoPreloadUtil"

    .line 67
    .line 68
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/transsion/player/shorttv/preload/q;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p3, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 76
    .line 77
    iget-object p3, p3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/transsion/player/shorttv/preload/a;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/transsion/player/shorttv/preload/a;->h(J)V

    .line 92
    .line 93
    .line 94
    iget-wide v0, p2, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/transsion/player/shorttv/preload/a;->g(J)V

    .line 97
    .line 98
    .line 99
    iget p2, p2, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 100
    .line 101
    const/4 p3, 0x2

    .line 102
    const-string v0, "id"

    .line 103
    .line 104
    if-ne p2, p3, :cond_0

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 107
    .line 108
    .line 109
    move-result-wide p2

    .line 110
    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    const-wide/16 v3, 0x1

    .line 115
    .line 116
    cmp-long v3, v3, v1

    .line 117
    .line 118
    if-gtz v3, :cond_2

    .line 119
    .line 120
    cmp-long p2, v1, p2

    .line 121
    .line 122
    if-gez p2, :cond_2

    .line 123
    .line 124
    sget-object p2, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Lcom/transsion/player/shorttv/preload/q;->D(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    const/4 p3, 0x1

    .line 140
    if-eq p2, p3, :cond_1

    .line 141
    .line 142
    const/4 p3, 0x3

    .line 143
    if-ne p2, p3, :cond_2

    .line 144
    .line 145
    :cond_1
    sget-object p2, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Lcom/transsion/player/shorttv/preload/q;->x(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/transsion/player/shorttv/preload/q;->k(Lcom/transsion/player/shorttv/preload/q;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 1

    .line 1
    const-string v0, "downloadManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
