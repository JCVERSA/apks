.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cache(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9
    .param p3    # Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    return-void
.end method

.method public static cache(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 25
    .param p6    # Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p6

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v10, v11, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    goto :goto_0

    .line 6
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v13

    .line 7
    iget-wide v0, v10, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 8
    iget-wide v2, v10, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v14, -0x1

    cmp-long v4, v2, v14

    if-eqz v4, :cond_1

    :goto_2
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    goto :goto_3

    :cond_1
    invoke-interface {v11, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_9

    if-eqz p7, :cond_3

    .line 9
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    :goto_4
    cmp-long v22, v18, v14

    if-eqz v22, :cond_4

    move-wide/from16 v4, v18

    goto :goto_5

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_5
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v16

    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v20

    if-lez v2, :cond_5

    goto :goto_6

    :cond_5
    neg-long v8, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide v3, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v23, v8

    move/from16 v8, p5

    move-object v9, v12

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;JJLcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[BLcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J

    move-result-wide v0

    cmp-long v0, v0, v23

    if-gez v0, :cond_7

    if-eqz p8, :cond_9

    if-nez v22, :cond_6

    goto :goto_8

    .line 13
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move-wide/from16 v0, v23

    :goto_6
    add-long v16, v16, v0

    if-nez v22, :cond_8

    goto :goto_7

    :cond_8
    move-wide/from16 v20, v0

    :goto_7
    sub-long v18, v18, v20

    goto :goto_3

    :cond_9
    :goto_8
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getCached(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    iget-wide v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 10
    .line 11
    iget-wide v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    .line 12
    .line 13
    const-wide/16 v9, -0x1

    .line 14
    .line 15
    cmp-long v0, v4, v9

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move-object/from16 v0, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v0, p1

    .line 23
    .line 24
    invoke-interface {v0, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    :goto_0
    iput-wide v4, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 29
    .line 30
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    iput-wide v11, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 33
    .line 34
    iput-wide v11, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    .line 35
    .line 36
    move-wide v13, v2

    .line 37
    move-wide v15, v4

    .line 38
    :goto_1
    cmp-long v2, v15, v11

    .line 39
    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    cmp-long v17, v15, v9

    .line 43
    .line 44
    const-wide v18, 0x7fffffffffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    if-eqz v17, :cond_1

    .line 50
    .line 51
    move-wide v6, v15

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    move-wide/from16 v6, v18

    .line 54
    .line 55
    :goto_2
    move-object/from16 v2, p1

    .line 56
    .line 57
    move-object v3, v8

    .line 58
    move-wide v4, v13

    .line 59
    invoke-interface/range {v2 .. v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    cmp-long v4, v2, v11

    .line 64
    .line 65
    if-lez v4, :cond_2

    .line 66
    .line 67
    iget-wide v4, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 68
    .line 69
    add-long/2addr v4, v2

    .line 70
    iput-wide v4, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    neg-long v2, v2

    .line 74
    cmp-long v4, v2, v18

    .line 75
    .line 76
    if-nez v4, :cond_3

    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    :goto_3
    add-long/2addr v13, v2

    .line 80
    if-nez v17, :cond_4

    .line 81
    .line 82
    move-wide v2, v11

    .line 83
    :cond_4
    sub-long/2addr v15, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    return-void
.end method

.method public static getKey(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method private static readAndDiscard(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;JJLcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[BLcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    move-object/from16 v0, p6

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    :goto_0
    if-eqz p7, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p7 .. p8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_6

    .line 19
    .line 20
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 21
    .line 22
    iget-object v6, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 23
    .line 24
    iget-object v7, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->postBody:[B

    .line 25
    .line 26
    iget-wide v8, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    .line 27
    .line 28
    add-long v8, v8, p1

    .line 29
    .line 30
    iget-wide v10, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 31
    .line 32
    sub-long v10, v8, v10

    .line 33
    .line 34
    iget-object v14, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 35
    .line 36
    iget v5, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->flags:I

    .line 37
    .line 38
    or-int/lit8 v15, v5, 0x2

    .line 39
    .line 40
    const-wide/16 v12, -0x1

    .line 41
    .line 42
    move-object v5, v4

    .line 43
    move-wide/from16 v8, p1

    .line 44
    .line 45
    invoke-direct/range {v5 .. v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_0
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-interface {v1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iget-wide v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 53
    .line 54
    const-wide/16 v9, -0x1

    .line 55
    .line 56
    cmp-long v3, v7, v9

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    cmp-long v3, v5, v9

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-wide v7, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 65
    .line 66
    add-long/2addr v7, v5

    .line 67
    iput-wide v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_5

    .line 72
    :cond_1
    :goto_1
    const-wide/16 v5, 0x0

    .line 73
    .line 74
    :goto_2
    cmp-long v3, v5, p3

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    cmp-long v3, p3, v9

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    array-length v3, v0

    .line 89
    int-to-long v7, v3

    .line 90
    sub-long v11, p3, v5

    .line 91
    .line 92
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    long-to-int v3, v7

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    array-length v3, v0

    .line 99
    :goto_3
    const/4 v7, 0x0

    .line 100
    invoke-interface {v1, v0, v7, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v7, -0x1

    .line 105
    if-ne v3, v7, :cond_3

    .line 106
    .line 107
    iget-wide v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 108
    .line 109
    cmp-long v3, v7, v9

    .line 110
    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    iget-wide v7, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 114
    .line 115
    add-long/2addr v7, v5

    .line 116
    iput-wide v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_3
    int-to-long v7, v3

    .line 120
    add-long/2addr v5, v7

    .line 121
    iget-wide v11, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    .line 122
    .line 123
    add-long/2addr v11, v7

    .line 124
    iput-wide v11, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    new-instance v3, Ljava/lang/InterruptedException;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v3
    :try_end_1
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_5
    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 134
    .line 135
    .line 136
    return-wide v5

    .line 137
    :catch_0
    move-object v3, v4

    .line 138
    goto :goto_6

    .line 139
    :cond_6
    :try_start_2
    new-instance v4, Ljava/lang/InterruptedException;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw v4
    :try_end_2
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_5
    invoke-static/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :catch_1
    :goto_6
    invoke-static/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0
.end method

.method public static remove(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;

    .line 20
    .line 21
    :try_start_0
    invoke-interface {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
