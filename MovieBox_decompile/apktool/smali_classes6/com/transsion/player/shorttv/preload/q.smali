.class public final Lcom/transsion/player/shorttv/preload/q;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/player/shorttv/preload/q;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Landroid/os/HandlerThread;

.field private static final e:Landroid/os/Handler;

.field private static final f:J

.field private static final g:Lkotlin/jvm/functions/Function0;

.field private static final h:Lcom/transsion/player/shorttv/preload/q$b;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/player/shorttv/preload/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/player/shorttv/preload/h;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/transsion/player/shorttv/preload/h;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->c:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v1, Landroid/os/HandlerThread;

    .line 27
    .line 28
    const-string v2, "VideoPreloadUtil"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->d:Landroid/os/HandlerThread;

    .line 34
    .line 35
    const-wide/16 v2, 0x64

    .line 36
    .line 37
    sput-wide v2, Lcom/transsion/player/shorttv/preload/q;->f:J

    .line 38
    .line 39
    new-instance v2, Lcom/transsion/player/shorttv/preload/i;

    .line 40
    .line 41
    invoke-direct {v2}, Lcom/transsion/player/shorttv/preload/i;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    new-instance v2, Lcom/transsion/player/shorttv/preload/q$b;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/transsion/player/shorttv/preload/q$b;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lcom/transsion/player/shorttv/preload/q;->h:Lcom/transsion/player/shorttv/preload/q$b;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v3, Lcom/transsion/player/shorttv/preload/q$a;

    .line 61
    .line 62
    invoke-direct {v3, v1}, Lcom/transsion/player/shorttv/preload/q$a;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    sput-object v3, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lin/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    .line 76
    .line 77
    .line 78
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

.method private final A()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->p()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final B()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    .line 3
    .line 4
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    new-instance v2, Lcom/transsion/player/shorttv/preload/k;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final C(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "stopPreload   key:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "VideoPreloadUtil"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lsn/e;->d(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0x2766

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const-class v3, Lcom/transsion/player/exo/DemoDownloadService;

    .line 38
    .line 39
    invoke-static {v0, v3, p0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadService;->z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final F()Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lin/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "next(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    .line 35
    .line 36
    iget v2, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iget-wide v5, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->b()F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v9, "progress 111:  download.requestId:"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, "     bytesDownloaded:"

    .line 69
    .line 70
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "  contentLength:"

    .line 77
    .line 78
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "  percentDownloaded:"

    .line 85
    .line 86
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    sget-object v2, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    iget-object v3, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 95
    .line 96
    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/transsion/player/shorttv/preload/a;

    .line 103
    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    invoke-virtual {v2, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->h(J)V

    .line 111
    .line 112
    .line 113
    iget-wide v3, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->g(J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    const-wide/16 v7, 0x1

    .line 127
    .line 128
    cmp-long v1, v7, v5

    .line 129
    .line 130
    if-gtz v1, :cond_0

    .line 131
    .line 132
    cmp-long v1, v5, v3

    .line 133
    .line 134
    if-gez v1, :cond_0

    .line 135
    .line 136
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "id"

    .line 145
    .line 146
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/transsion/player/shorttv/preload/q;->x(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_1
    sget-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    .line 155
    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 159
    .line 160
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->p()V

    .line 161
    .line 162
    .line 163
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object v0
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->q(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/shorttv/preload/q;->m()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->r(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/player/shorttv/preload/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->v(Lcom/transsion/player/shorttv/preload/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->u(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->C(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/shorttv/preload/q;->F()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic k(Lcom/transsion/player/shorttv/preload/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/player/shorttv/preload/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final o()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    return-object v0
.end method

.method private final p()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    new-instance v2, Lcom/transsion/player/shorttv/preload/n;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/n;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/transsion/player/shorttv/preload/o;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/o;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    sget-wide v3, Lcom/transsion/player/shorttv/preload/q;->f:J

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final q(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final u(Lgn/e;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->n(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final v(Lcom/transsion/player/shorttv/preload/a;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v8, "preloadVideo id:"

    .line 23
    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " downloadLength:"

    .line 31
    .line 32
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "  maxLength:"

    .line 39
    .line 40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " contentLength:"

    .line 47
    .line 48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "VideoPreloadUtil"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide/16 v4, -0x1

    .line 68
    .line 69
    cmp-long v0, v2, v4

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    cmp-long v0, v2, v4

    .line 82
    .line 83
    if-gez v0, :cond_2

    .line 84
    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-class v2, Lcom/transsion/player/exo/DemoDownloadService;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v0, v2, v4, v3, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v2, "checkToStart restart  shortTVItem:"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v0, v2, v4, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->x(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "checkToStart add    shortTVItem:"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_0
    return-void
.end method

.method private static final y(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "removePreload   key:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "VideoPreloadUtil"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lsn/e;->d(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-class v1, Lcom/transsion/player/exo/DemoDownloadService;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v1, p0, v2}, Landroidx/media3/exoplayer/offline/DownloadService;->y(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/player/shorttv/preload/m;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/m;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "?"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lsn/d;->a:Lsn/d$a;

    .line 21
    .line 22
    const-string v1, "?"

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v6, 0x6

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v2, p1

    .line 33
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lsn/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object v0, Lsn/d;->a:Lsn/d$a;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    const-string p1, ""

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0, p1}, Lsn/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    return-object p1
.end method

.method public final n(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "shortTVItem"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lgn/e;->f()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/transsion/player/shorttv/preload/a;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object v3, Lsn/e;->a:Lsn/e;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "createDownloadRequest [from map]  shortTVItem:"

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x0

    .line 43
    const-string v4, "VideoPreloadUtil"

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lin/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->f()Landroidx/media3/exoplayer/offline/f;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgn/e;->f()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/offline/f;->h(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/c;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v3, v2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x0

    .line 80
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgn/e;->f()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    sget-object v4, Lsn/e;->a:Lsn/e;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "createDownloadRequest [from currentDownloads]   shortTVItem:"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v8, 0x4

    .line 110
    const/4 v9, 0x0

    .line 111
    const-string v5, "VideoPreloadUtil"

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    invoke-static/range {v4 .. v9}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lcom/transsion/player/shorttv/preload/a;

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lgn/e;->f()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual/range {p1 .. p1}, Lgn/e;->j()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    iget-object v13, v2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 128
    .line 129
    const-string v0, "request"

    .line 130
    .line 131
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-wide v14, v2, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 137
    .line 138
    .line 139
    move-result-wide v16

    .line 140
    const-wide/32 v18, 0x4b000

    .line 141
    .line 142
    .line 143
    const/16 v20, 0x1

    .line 144
    .line 145
    move-object v10, v1

    .line 146
    invoke-direct/range {v10 .. v20}, Lcom/transsion/player/shorttv/preload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgn/e;->f()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual/range {p1 .. p1}, Lgn/e;->j()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v23

    .line 158
    new-instance v3, Lcom/transsion/player/shorttv/preload/a;

    .line 159
    .line 160
    new-instance v4, Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 161
    .line 162
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-direct {v4, v2, v5}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v5, "build(...)"

    .line 178
    .line 179
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-wide/32 v29, 0x4b000

    .line 183
    .line 184
    .line 185
    const/16 v31, 0x0

    .line 186
    .line 187
    const-wide/16 v25, -0x1

    .line 188
    .line 189
    const-wide/16 v27, 0x0

    .line 190
    .line 191
    move-object/from16 v21, v3

    .line 192
    .line 193
    move-object/from16 v22, v2

    .line 194
    .line 195
    move-object/from16 v24, v4

    .line 196
    .line 197
    invoke-direct/range {v21 .. v31}, Lcom/transsion/player/shorttv/preload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object v5, Lsn/e;->a:Lsn/e;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v2, "createDownloadRequest [from new]  shortTVItem:"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const/4 v9, 0x4

    .line 223
    const/4 v10, 0x0

    .line 224
    const-string v6, "VideoPreloadUtil"

    .line 225
    .line 226
    const/4 v8, 0x0

    .line 227
    invoke-static/range {v5 .. v10}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v3
.end method

.method public final s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;
    .locals 1

    .line 1
    const-string v0, "shortTVDownloadBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/player/shorttv/preload/p;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/p;-><init>(Lcom/transsion/player/shorttv/preload/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final t(Lgn/e;)V
    .locals 1

    .line 1
    const-string v0, "shortTVItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/player/shorttv/preload/j;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/j;-><init>(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final w(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 1

    .line 1
    const-string v0, "shortTVItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/player/shorttv/preload/q;->n(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/player/shorttv/preload/l;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/l;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final z(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
