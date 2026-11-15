.class public abstract Landroidx/media3/exoplayer/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/SegmentDownloader$b;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$a;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    }
.end annotation


# instance fields
.field private final a:Lw1/h;

.field private final b:Landroidx/media3/exoplayer/upstream/q$a;

.field private final c:Ljava/util/ArrayList;

.field private final d:Landroidx/media3/datasource/cache/a$c;

.field private final e:Landroidx/media3/datasource/cache/Cache;

.field private final f:Landroidx/media3/datasource/cache/g;

.field private final g:Landroidx/media3/common/PriorityTaskManager;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:J

.field private final j:Ljava/util/ArrayList;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f(Landroid/net/Uri;)Lw1/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->b:Landroidx/media3/exoplayer/upstream/q$a;

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    .line 33
    .line 34
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->e()Landroidx/media3/datasource/cache/Cache;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/media3/datasource/cache/Cache;

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 47
    .line 48
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->f()Landroidx/media3/datasource/cache/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 53
    .line 54
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->g()Landroidx/media3/common/PriorityTaskManager;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {p5, p6}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i:J

    .line 72
    .line 73
    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->b:Landroidx/media3/exoplayer/upstream/q$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method private static d(Lw1/h;Lw1/h;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lw1/h;->a:Landroid/net/Uri;

    .line 2
    .line 3
    iget-object v1, p1, Lw1/h;->a:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lw1/h;->h:J

    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-wide v2, p0, Lw1/h;->g:J

    .line 20
    .line 21
    add-long/2addr v2, v0

    .line 22
    iget-wide v0, p1, Lw1/h;->g:J

    .line 23
    .line 24
    cmp-long v0, v2, v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lw1/h;->i:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p1, Lw1/h;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget v0, p0, Lw1/h;->j:I

    .line 39
    .line 40
    iget v1, p1, Lw1/h;->j:I

    .line 41
    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    iget v0, p0, Lw1/h;->c:I

    .line 45
    .line 46
    iget v1, p1, Lw1/h;->c:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    iget-object p0, p0, Lw1/h;->e:Ljava/util/Map;

    .line 51
    .line 52
    iget-object p1, p1, Lw1/h;->e:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    :goto_0
    return p0
.end method

.method protected static f(Landroid/net/Uri;)Lw1/h;
    .locals 1

    .line 1
    new-instance v0, Lw1/h$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lw1/h$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lw1/h$b;->a()Lw1/h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static i(Ljava/util/List;Landroidx/media3/datasource/cache/g;J)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_4

    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 19
    .line 20
    iget-object v4, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 21
    .line 22
    invoke-interface {p1, v4}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Integer;

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 45
    .line 46
    :goto_1
    if-eqz v6, :cond_3

    .line 47
    .line 48
    iget-wide v7, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    .line 49
    .line 50
    iget-wide v9, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    .line 51
    .line 52
    add-long/2addr v9, p2

    .line 53
    cmp-long v7, v7, v9

    .line 54
    .line 55
    if-gtz v7, :cond_3

    .line 56
    .line 57
    iget-object v7, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 58
    .line 59
    iget-object v8, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 60
    .line 61
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d(Lw1/h;Lw1/h;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_1

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    iget-object v3, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 69
    .line 70
    iget-wide v3, v3, Lw1/h;->h:J

    .line 71
    .line 72
    const-wide/16 v7, -0x1

    .line 73
    .line 74
    cmp-long v9, v3, v7

    .line 75
    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-object v7, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 80
    .line 81
    iget-wide v7, v7, Lw1/h;->h:J

    .line 82
    .line 83
    add-long/2addr v7, v3

    .line 84
    :goto_2
    iget-object v3, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 85
    .line 86
    const-wide/16 v9, 0x0

    .line 87
    .line 88
    invoke-virtual {v3, v9, v10, v7, v8}, Lw1/h;->f(JJ)Lw1/h;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 103
    .line 104
    iget-wide v6, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    .line 105
    .line 106
    invoke-direct {v5, v6, v7, v3}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;-><init>(JLw1/h;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-static {p0, v2, p1}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private k(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/offline/o$a;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 14
    .line 15
    const/16 v4, -0xfa0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->b()Landroidx/media3/datasource/cache/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    .line 31
    .line 32
    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {v7, v8}, Landroidx/media3/exoplayer/offline/q;->copy(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroidx/media3/exoplayer/offline/q;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_b

    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 64
    .line 65
    iget-wide v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i:J

    .line 66
    .line 67
    invoke-static {v0, v7, v8, v9}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i(Ljava/util/List;Landroidx/media3/datasource/cache/g;J)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    sub-int/2addr v7, v6

    .line 79
    const-wide/16 v8, 0x0

    .line 80
    .line 81
    move/from16 v17, v5

    .line 82
    .line 83
    move-wide v12, v8

    .line 84
    move-wide v15, v12

    .line 85
    :goto_1
    if-ltz v7, :cond_6

    .line 86
    .line 87
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 92
    .line 93
    iget-object v8, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 94
    .line 95
    iget-object v9, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 96
    .line 97
    invoke-interface {v9, v8}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iget-wide v10, v8, Lw1/h;->h:J

    .line 102
    .line 103
    const-wide/16 v24, -0x1

    .line 104
    .line 105
    cmp-long v18, v10, v24

    .line 106
    .line 107
    if-nez v18, :cond_2

    .line 108
    .line 109
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 110
    .line 111
    invoke-interface {v5, v9}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v5}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v18

    .line 119
    cmp-long v5, v18, v24

    .line 120
    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    iget-wide v10, v8, Lw1/h;->g:J

    .line 124
    .line 125
    sub-long v10, v18, v10

    .line 126
    .line 127
    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 128
    .line 129
    move/from16 v26, v7

    .line 130
    .line 131
    iget-wide v6, v8, Lw1/h;->g:J

    .line 132
    .line 133
    move-object/from16 v18, v5

    .line 134
    .line 135
    move-object/from16 v19, v9

    .line 136
    .line 137
    move-wide/from16 v20, v6

    .line 138
    .line 139
    move-wide/from16 v22, v10

    .line 140
    .line 141
    invoke-interface/range {v18 .. v23}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    add-long/2addr v15, v5

    .line 146
    cmp-long v7, v10, v24

    .line 147
    .line 148
    if-eqz v7, :cond_4

    .line 149
    .line 150
    cmp-long v5, v10, v5

    .line 151
    .line 152
    if-nez v5, :cond_3

    .line 153
    .line 154
    add-int/lit8 v17, v17, 0x1

    .line 155
    .line 156
    move/from16 v7, v26

    .line 157
    .line 158
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    move/from16 v7, v26

    .line 163
    .line 164
    :goto_2
    cmp-long v5, v12, v24

    .line 165
    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    add-long/2addr v12, v10

    .line 169
    goto :goto_3

    .line 170
    :cond_4
    move/from16 v7, v26

    .line 171
    .line 172
    move-wide/from16 v12, v24

    .line 173
    .line 174
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, -0x1

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    const/4 v6, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_6
    if-eqz p1, :cond_7

    .line 180
    .line 181
    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;

    .line 182
    .line 183
    move-object v10, v5

    .line 184
    move-object/from16 v11, p1

    .line 185
    .line 186
    invoke-direct/range {v10 .. v17}, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;-><init>(Landroidx/media3/exoplayer/offline/o$a;JIJI)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    const/4 v5, 0x0

    .line 191
    :goto_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    :goto_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    .line 195
    .line 196
    if-nez v0, :cond_f

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_f

    .line 203
    .line 204
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 205
    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 222
    .line 223
    iget-object v6, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/a;

    .line 224
    .line 225
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_9
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->b()Landroidx/media3/datasource/cache/a;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const/high16 v0, 0x20000

    .line 235
    .line 236
    new-array v0, v0, [B

    .line 237
    .line 238
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 243
    .line 244
    new-instance v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 245
    .line 246
    invoke-direct {v8, v7, v6, v5, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$b;Landroidx/media3/datasource/cache/a;Landroidx/media3/exoplayer/offline/SegmentDownloader$a;[B)V

    .line 247
    .line 248
    .line 249
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    .line 253
    .line 254
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    const/4 v6, 0x1

    .line 264
    sub-int/2addr v0, v6

    .line 265
    move v6, v0

    .line 266
    :goto_7
    if-ltz v6, :cond_e

    .line 267
    .line 268
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    move-object v7, v0

    .line 275
    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_a

    .line 282
    .line 283
    invoke-virtual {v7}, Landroidx/media3/common/util/RunnableFutureTask;->isDone()Z

    .line 284
    .line 285
    .line 286
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    if-eqz v0, :cond_c

    .line 288
    .line 289
    :cond_a
    :try_start_1
    invoke-virtual {v7}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :catch_0
    move-exception v0

    .line 300
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/Throwable;

    .line 309
    .line 310
    instance-of v9, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    .line 311
    .line 312
    if-eqz v9, :cond_b

    .line 313
    .line 314
    iget-object v0, v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_b
    instance-of v7, v0, Ljava/io/IOException;

    .line 327
    .line 328
    if-nez v7, :cond_d

    .line 329
    .line 330
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    :cond_c
    :goto_8
    add-int/lit8 v6, v6, -0x1

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_d
    check-cast v0, Ljava/io/IOException;

    .line 337
    .line 338
    throw v0

    .line 339
    :cond_e
    invoke-virtual {v8}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .line 341
    .line 342
    goto/16 :goto_5

    .line 343
    .line 344
    :cond_f
    const/4 v5, 0x0

    .line 345
    :goto_9
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-ge v5, v0, :cond_10

    .line 352
    .line 353
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroidx/media3/common/util/RunnableFutureTask;

    .line 360
    .line 361
    const/4 v2, 0x1

    .line 362
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 363
    .line 364
    .line 365
    add-int/lit8 v5, v5, 0x1

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_10
    const/4 v2, 0x1

    .line 369
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    sub-int/2addr v0, v2

    .line 376
    :goto_a
    if-ltz v0, :cond_11

    .line 377
    .line 378
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    .line 385
    .line 386
    invoke-virtual {v2}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 387
    .line 388
    .line 389
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_11
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 396
    .line 397
    if-eqz v0, :cond_12

    .line 398
    .line 399
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 400
    .line 401
    .line 402
    :cond_12
    return-void

    .line 403
    :goto_b
    const/4 v5, 0x0

    .line 404
    :goto_c
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-ge v5, v2, :cond_13

    .line 411
    .line 412
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    .line 419
    .line 420
    const/4 v3, 0x1

    .line 421
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 422
    .line 423
    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_13
    const/4 v3, 0x1

    .line 428
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    sub-int/2addr v2, v3

    .line 435
    :goto_d
    if-ltz v2, :cond_14

    .line 436
    .line 437
    iget-object v3, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    .line 444
    .line 445
    invoke-virtual {v3}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 446
    .line 447
    .line 448
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v2, v2, -0x1

    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_14
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 455
    .line 456
    if-eqz v2, :cond_15

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 459
    .line 460
    .line 461
    :cond_15
    throw v0
.end method

.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method protected final e(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->run()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Throwable;

    .line 21
    .line 22
    instance-of v1, v0, Ljava/io/IOException;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v0, Ljava/io/IOException;

    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    .line 34
    .line 35
    if-nez p2, :cond_5

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    const/16 v0, -0xfa0

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :catchall_0
    move-exception p2

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception p2

    .line 68
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Throwable;

    .line 77
    .line 78
    instance-of v1, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    instance-of v1, v0, Ljava/io/IOException;

    .line 84
    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    invoke-static {p2}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    :try_start_3
    check-cast v0, Ljava/io/IOException;

    .line 98
    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 104
    .line 105
    .line 106
    throw p2

    .line 107
    :cond_5
    new-instance p1, Ljava/lang/InterruptedException;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method protected final g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/a;Lw1/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/media3/exoplayer/offline/q;

    .line 11
    .line 12
    return-object p1
.end method

.method protected abstract h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;
.end method

.method public final remove()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->c()Landroidx/media3/datasource/cache/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 34
    .line 35
    iget-object v4, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 36
    .line 37
    invoke-interface {v3, v4}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_3

    .line 49
    :catch_0
    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    return-void

    .line 72
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    .line 75
    .line 76
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    .line 77
    .line 78
    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method
