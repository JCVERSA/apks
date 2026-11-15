.class public final Lcom/transsion/player/shorttv/preload/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/shorttv/preload/g$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/player/shorttv/preload/g$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/transsion/player/shorttv/preload/g$b;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/shorttv/preload/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/shorttv/preload/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/shorttv/preload/g;->g:Lcom/transsion/player/shorttv/preload/g$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/player/shorttv/preload/g$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/player/shorttv/preload/g$b;-><init>(Lcom/transsion/player/shorttv/preload/g;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->e:Lcom/transsion/player/shorttv/preload/g$b;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-static {p1}, Lin/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/shorttv/preload/g;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->n(Lcom/transsion/player/shorttv/preload/g;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lgn/e;Lcom/transsion/player/shorttv/preload/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->k(Lgn/e;Lcom/transsion/player/shorttv/preload/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/player/shorttv/preload/g;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/player/shorttv/preload/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/player/shorttv/preload/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final i(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lgn/e;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "checkToPause   position:"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "  shortTVItem:"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "VideoPreloadHelper"

    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 53
    .line 54
    invoke-virtual {v0}, Lgn/e;->f()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/transsion/player/shorttv/preload/q;->D(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private final j(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lgn/e;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 23
    .line 24
    new-instance v1, Lcom/transsion/player/shorttv/preload/f;

    .line 25
    .line 26
    invoke-direct {v1, p1, p0}, Lcom/transsion/player/shorttv/preload/f;-><init>(Lgn/e;Lcom/transsion/player/shorttv/preload/g;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private static final k(Lgn/e;Lcom/transsion/player/shorttv/preload/g;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->w(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {p0}, Lgn/e;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final l(ILgn/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p2}, Lgn/e;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/transsion/player/shorttv/preload/a;

    .line 12
    .line 13
    const-string v1, "  shortTVItem:"

    .line 14
    .line 15
    const-string v2, "VideoPreloadHelper"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "createDownloadRequest [from map] position:"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p2}, Lgn/e;->f()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v3, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 51
    .line 52
    invoke-virtual {v3, p2}, Lcom/transsion/player/shorttv/preload/q;->n(Lgn/e;)Lcom/transsion/player/shorttv/preload/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "createDownloadRequest [from new] position:"

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-object v3
.end method

.method private static final n(Lcom/transsion/player/shorttv/preload/g;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "loadNext\uff0c position:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "   size:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "VideoPreloadHelper"

    .line 33
    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, p1, 0x1

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x6

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    :goto_0
    if-ge v1, p1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lgn/e;

    .line 54
    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/transsion/player/shorttv/preload/g;->l(ILgn/e;)Lcom/transsion/player/shorttv/preload/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-wide/32 v3, 0x4b000

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->i(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    cmp-long v3, v3, v5

    .line 77
    .line 78
    const-string v4, "\u975e\u5f53\u524d\u9009\u4e2d  \u4e0b\u8f7d\u5927\u5c0f downloadLength:"

    .line 79
    .line 80
    if-gez v3, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, "  index:"

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    .line 117
    .line 118
    sget-object p0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->a()J

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, " \u5927\u4e8e\u6700\u5c0f\u4e0b\u8f7d\uff0c\u8df3\u8fc7 index:"

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    const-string p0, "\u4e0d\u7528\u5168\u91cf\u4e0b\u8f7d"

    .line 164
    .line 165
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public final f(ILgn/e;)V
    .locals 1

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->m()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final g(Lgn/e;)V
    .locals 1

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->m()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "changeSelect  position:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoPreloadHelper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 24
    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    .line 30
    .line 31
    iput p1, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->i(I)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->j(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 12
    .line 13
    new-instance v2, Lcom/transsion/player/shorttv/preload/e;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lcom/transsion/player/shorttv/preload/e;-><init>(Lcom/transsion/player/shorttv/preload/g;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/player/shorttv/preload/g;->i(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    .line 8
    .line 9
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lin/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->e:Lcom/transsion/player/shorttv/preload/g$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager;->w(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->o()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/transsion/player/shorttv/preload/q;->x(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
