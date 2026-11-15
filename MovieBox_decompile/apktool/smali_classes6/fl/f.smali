.class public final Lfl/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfl/f$b;,
        Lfl/f$d;,
        Lfl/f$c;,
        Lfl/f$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;

.field private k:I

.field private l:J

.field final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/Callable;

.field private o:J


# direct methods
.method private constructor <init>(Ljava/io/File;IIJJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    iput-wide v2, v0, Lfl/f;->h:J

    .line 11
    .line 12
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    const/high16 v5, 0x3f400000    # 0.75f

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-direct {v4, v7, v5, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    iput-wide v2, v0, Lfl/f;->l:J

    .line 24
    .line 25
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    .line 27
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    .line 31
    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v15, Lfl/f$b;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v15, v3}, Lfl/f$b;-><init>(Lfl/f$a;)V

    .line 38
    .line 39
    .line 40
    const/4 v10, 0x1

    .line 41
    const-wide/16 v11, 0x3c

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v8, v2

    .line 45
    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lfl/f;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    .line 50
    new-instance v2, Lfl/f$a;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lfl/f$a;-><init>(Lfl/f;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lfl/f;->n:Ljava/util/concurrent/Callable;

    .line 56
    .line 57
    iput-object v1, v0, Lfl/f;->a:Ljava/io/File;

    .line 58
    .line 59
    move/from16 v2, p2

    .line 60
    .line 61
    iput v2, v0, Lfl/f;->e:I

    .line 62
    .line 63
    new-instance v2, Ljava/io/File;

    .line 64
    .line 65
    const-string v3, "journal"

    .line 66
    .line 67
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, v0, Lfl/f;->b:Ljava/io/File;

    .line 71
    .line 72
    new-instance v2, Ljava/io/File;

    .line 73
    .line 74
    const-string v3, "journal.tmp"

    .line 75
    .line 76
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v0, Lfl/f;->c:Ljava/io/File;

    .line 80
    .line 81
    new-instance v2, Ljava/io/File;

    .line 82
    .line 83
    const-string v3, "journal.bkp"

    .line 84
    .line 85
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, v0, Lfl/f;->d:Ljava/io/File;

    .line 89
    .line 90
    move/from16 v1, p3

    .line 91
    .line 92
    iput v1, v0, Lfl/f;->g:I

    .line 93
    .line 94
    move-wide/from16 v1, p4

    .line 95
    .line 96
    iput-wide v1, v0, Lfl/f;->f:J

    .line 97
    .line 98
    move-wide/from16 v1, p6

    .line 99
    .line 100
    iput-wide v1, v0, Lfl/f;->o:J

    .line 101
    .line 102
    return-void
.end method

.method static synthetic S(Lfl/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl/f;->r()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private T()V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lfl/f;->h:J

    .line 2
    .line 3
    iget-wide v2, p0, Lfl/f;->f:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lfl/f;->u(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic W(Lfl/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl/f;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lfl/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lfl/f;->k:I

    .line 2
    .line 3
    return p1
.end method

.method private declared-synchronized f(Ljava/lang/String;J)Lfl/f$c;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfl/f;->k()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lfl/f$d;

    .line 12
    .line 13
    const-wide/16 v1, -0x1

    .line 14
    .line 15
    cmp-long v1, p2, v1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lfl/f$d;->n(Lfl/f$d;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    cmp-long p2, v3, p2

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    monitor-exit p0

    .line 34
    return-object v2

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_1
    new-instance v0, Lfl/f$d;

    .line 38
    .line 39
    invoke-direct {v0, p0, p1, v2}, Lfl/f$d;-><init>(Lfl/f;Ljava/lang/String;Lfl/f$a;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-static {v0}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 49
    .line 50
    .line 51
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-object v2

    .line 56
    :cond_3
    :goto_1
    :try_start_2
    new-instance p2, Lfl/f$c;

    .line 57
    .line 58
    invoke-direct {p2, p0, v0, v2}, Lfl/f$c;-><init>(Lfl/f;Lfl/f$d;Lfl/f$a;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p2}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 65
    .line 66
    const-string v0, "DIRTY"

    .line 67
    .line 68
    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 72
    .line 73
    const/16 v0, 0x20

    .line 74
    .line 75
    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 76
    .line 77
    .line 78
    iget-object p3, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 84
    .line 85
    const/16 p3, 0xa

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-object p2

    .line 97
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    throw p1
.end method

.method public static h(Ljava/io/File;IIJJ)Lfl/f;
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p3, v0

    .line 5
    .line 6
    if-lez v0, :cond_4

    .line 7
    .line 8
    if-lez p2, :cond_3

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "journal.bkp"

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    const-string v2, "journal"

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v1, v2}, Lfl/f;->o(Ljava/io/File;Ljava/io/File;Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    new-instance v10, Lfl/f;

    .line 45
    .line 46
    move-object v1, v10

    .line 47
    move-object v2, p0

    .line 48
    move v3, p1

    .line 49
    move v4, p2

    .line 50
    move-wide v5, p3

    .line 51
    move-wide/from16 v7, p5

    .line 52
    .line 53
    invoke-direct/range {v1 .. v8}, Lfl/f;-><init>(Ljava/io/File;IIJJ)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v10, Lfl/f;->b:Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    :try_start_0
    invoke-direct {v10}, Lfl/f;->w()V

    .line 65
    .line 66
    .line 67
    invoke-direct {v10}, Lfl/f;->t()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-object v10

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "DiskLruCache "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, " is corrupt: "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ", removing"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Lfl/f;->close()V

    .line 112
    .line 113
    .line 114
    iget-object v0, v10, Lfl/f;->a:Ljava/io/File;

    .line 115
    .line 116
    invoke-static {v0}, Lfl/d;->c(Ljava/io/File;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 120
    .line 121
    .line 122
    new-instance v0, Lfl/f;

    .line 123
    .line 124
    move-object v1, v0

    .line 125
    move-object v2, p0

    .line 126
    move v3, p1

    .line 127
    move v4, p2

    .line 128
    move-wide v5, p3

    .line 129
    move-wide/from16 v7, p5

    .line 130
    .line 131
    invoke-direct/range {v1 .. v8}, Lfl/f;-><init>(Ljava/io/File;IIJJ)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v0}, Lfl/f;->y()V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v1, "valueCount <= 0"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v1, "maxSize <= 0"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method static synthetic j(Lfl/f;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "cache is closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private declared-synchronized l(Lfl/f$c;Z)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lfl/f$c;->a(Lfl/f$c;)Lfl/f$d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p1, :cond_a

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-static {v0}, Lfl/f$d;->o(Lfl/f$d;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget v3, p0, Lfl/f;->g:I

    .line 23
    .line 24
    if-ge v2, v3, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Lfl/f$c;->e(Lfl/f$c;)[Z

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aget-boolean v3, v3, v2

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lfl/f$d;->j(I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lfl/f$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lfl/f$c;->c()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "Newly created entry didn\'t create value for index "

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    :goto_1
    iget p1, p0, Lfl/f;->g:I

    .line 82
    .line 83
    if-ge v1, p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lfl/f$d;->j(I)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lfl/f$d;->d(I)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    aget-wide v3, p1, v1

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    invoke-static {v0}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    aput-wide v5, p1, v1

    .line 119
    .line 120
    iget-wide v7, p0, Lfl/f;->h:J

    .line 121
    .line 122
    sub-long/2addr v7, v3

    .line 123
    add-long/2addr v7, v5

    .line 124
    iput-wide v7, p0, Lfl/f;->h:J

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-static {p1}, Lfl/f;->n(Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget p1, p0, Lfl/f;->k:I

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    add-int/2addr p1, v1

    .line 137
    iput p1, p0, Lfl/f;->k:I

    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-static {v0, p1}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lfl/f$d;->o(Lfl/f$d;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    or-int/2addr p1, p2

    .line 148
    const/16 v2, 0xa

    .line 149
    .line 150
    const/16 v3, 0x20

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    invoke-static {v0, v1}, Lfl/f$d;->h(Lfl/f$d;Z)Z

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 158
    .line 159
    const-string v1, "CLEAN"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 165
    .line 166
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 170
    .line 171
    invoke-static {v0}, Lfl/f$d;->m(Lfl/f$d;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 179
    .line 180
    invoke-virtual {v0}, Lfl/f$d;->f()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 188
    .line 189
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 193
    .line 194
    const-string v1, "STAMP_"

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 215
    .line 216
    .line 217
    if-eqz p2, :cond_7

    .line 218
    .line 219
    iget-wide p1, p0, Lfl/f;->l:J

    .line 220
    .line 221
    const-wide/16 v1, 0x1

    .line 222
    .line 223
    add-long/2addr v1, p1

    .line 224
    iput-wide v1, p0, Lfl/f;->l:J

    .line 225
    .line 226
    invoke-static {v0, p1, p2}, Lfl/f$d;->i(Lfl/f$d;J)J

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    iget-object p1, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 231
    .line 232
    invoke-static {v0}, Lfl/f$d;->m(Lfl/f$d;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 240
    .line 241
    const-string p2, "REMOVE"

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 247
    .line 248
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 252
    .line 253
    invoke-static {v0}, Lfl/f$d;->m(Lfl/f$d;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 263
    .line 264
    .line 265
    :cond_7
    :goto_3
    iget-object p1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 268
    .line 269
    .line 270
    iget-wide p1, p0, Lfl/f;->h:J

    .line 271
    .line 272
    iget-wide v0, p0, Lfl/f;->f:J

    .line 273
    .line 274
    cmp-long p1, p1, v0

    .line 275
    .line 276
    if-gtz p1, :cond_8

    .line 277
    .line 278
    invoke-direct {p0}, Lfl/f;->r()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_9

    .line 283
    .line 284
    :cond_8
    iget-object p1, p0, Lfl/f;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 285
    .line 286
    iget-object p2, p0, Lfl/f;->n:Ljava/util/concurrent/Callable;

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .line 290
    .line 291
    :cond_9
    monitor-exit p0

    .line 292
    return-void

    .line 293
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 296
    .line 297
    .line 298
    throw p1

    .line 299
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    throw p1
.end method

.method static synthetic m(Lfl/f;Lfl/f$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfl/f;->l(Lfl/f$c;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static n(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private static o(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lfl/f;->n(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method static synthetic q(Lfl/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl/f;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private r()Z
    .locals 2

    .line 1
    iget v0, p0, Lfl/f;->k:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method static synthetic s(Lfl/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lfl/f;->g:I

    .line 2
    .line 3
    return p0
.end method

.method private t()V
    .locals 8

    .line 1
    iget-object v0, p0, Lfl/f;->c:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Lfl/f;->n(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lfl/f$d;

    .line 27
    .line 28
    invoke-static {v1}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :goto_1
    iget v2, p0, Lfl/f;->g:I

    .line 36
    .line 37
    if-ge v3, v2, :cond_0

    .line 38
    .line 39
    iget-wide v4, p0, Lfl/f;->h:J

    .line 40
    .line 41
    invoke-static {v1}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    aget-wide v6, v2, v3

    .line 46
    .line 47
    add-long/2addr v4, v6

    .line 48
    iput-wide v4, p0, Lfl/f;->h:J

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 55
    .line 56
    .line 57
    :goto_2
    iget v2, p0, Lfl/f;->g:I

    .line 58
    .line 59
    if-ge v3, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lfl/f$d;->d(I)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lfl/f;->n(Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lfl/f$d;->j(I)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lfl/f;->n(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-void
.end method

.method static synthetic v(Lfl/f;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f;->a:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method private w()V
    .locals 9

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    new-instance v1, Lfl/l;

    .line 4
    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    iget-object v3, p0, Lfl/f;->b:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lfl/d;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lfl/l;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const-string v7, "libcore.io.DiskLruCache"

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    const-string v7, "1"

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    iget v7, p0, Lfl/f;->e:I

    .line 54
    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    iget v4, p0, Lfl/f;->g:I

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lfl/l;->h()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {p0, v2}, Lfl/f;->x(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    :try_start_5
    iget-object v2, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sub-int/2addr v0, v2

    .line 105
    iput v0, p0, Lfl/f;->k:I

    .line 106
    .line 107
    invoke-virtual {v1}, Lfl/l;->d()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    invoke-direct {p0}, Lfl/f;->y()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 118
    .line 119
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 120
    .line 121
    new-instance v3, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    iget-object v4, p0, Lfl/f;->b:Ljava/io/File;

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 127
    .line 128
    .line 129
    sget-object v4, Lfl/d;->a:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lfl/f;->i:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    :goto_1
    invoke-static {v1}, Lfl/d;->b(Ljava/io/Closeable;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    .line 149
    .line 150
    const-string v8, "unexpected journal header: ["

    .line 151
    .line 152
    :try_start_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 174
    .line 175
    .line 176
    const-string v0, "]"

    .line 177
    .line 178
    :try_start_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 189
    :goto_2
    invoke-static {v1}, Lfl/d;->b(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method private x(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "unexpected journal line: "

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v1, v3, :cond_9

    .line 11
    .line 12
    add-int/lit8 v4, v1, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v5, 0x6

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-ne v1, v5, :cond_1

    .line 26
    .line 27
    const-string v6, "REMOVE"

    .line 28
    .line 29
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_1
    iget-object v6, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lfl/f$d;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    if-nez v6, :cond_2

    .line 55
    .line 56
    new-instance v6, Lfl/f$d;

    .line 57
    .line 58
    invoke-direct {v6, p0, v4, v7}, Lfl/f$d;-><init>(Lfl/f;Ljava/lang/String;Lfl/f$a;)V

    .line 59
    .line 60
    .line 61
    iget-object v8, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {v8, v4, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 v4, 0x5

    .line 67
    if-eq v0, v3, :cond_5

    .line 68
    .line 69
    if-ne v1, v4, :cond_5

    .line 70
    .line 71
    const-string v8, "CLEAN"

    .line 72
    .line 73
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, " "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v6, v1}, Lfl/f$d;->h(Lfl/f$d;Z)Z

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v7}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 95
    .line 96
    .line 97
    array-length v0, p1

    .line 98
    sub-int/2addr v0, v1

    .line 99
    aget-object v0, p1, v0

    .line 100
    .line 101
    const-string v2, "STAMP_"

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    array-length v0, p1

    .line 110
    sub-int/2addr v0, v1

    .line 111
    new-array v0, v0, [Ljava/lang/String;

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    :goto_0
    array-length v3, p1

    .line 115
    sub-int/2addr v3, v1

    .line 116
    if-ge v2, v3, :cond_3

    .line 117
    .line 118
    aget-object v3, p1, v2

    .line 119
    .line 120
    aput-object v3, v0, v2

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-static {v6, v0}, Lfl/f$d;->g(Lfl/f$d;[Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    array-length v0, p1

    .line 129
    sub-int/2addr v0, v1

    .line 130
    aget-object p1, p1, v0

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    invoke-static {v6, v0, v1}, Lfl/f$d;->b(Lfl/f$d;J)J

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-static {v6}, Lfl/f$d;->a(Lfl/f$d;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    sub-long/2addr v0, v2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    iget-wide v2, p0, Lfl/f;->o:J

    .line 157
    .line 158
    cmp-long p1, v0, v2

    .line 159
    .line 160
    if-lez p1, :cond_7

    .line 161
    .line 162
    new-instance p1, Lfl/f$c;

    .line 163
    .line 164
    invoke-direct {p1, p0, v6, v7}, Lfl/f$c;-><init>(Lfl/f;Lfl/f$d;Lfl/f$a;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v6, p1}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    invoke-static {v6, v0, v1}, Lfl/f$d;->b(Lfl/f$d;J)J

    .line 176
    .line 177
    .line 178
    invoke-static {v6, p1}, Lfl/f$d;->g(Lfl/f$d;[Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    if-ne v0, v3, :cond_6

    .line 183
    .line 184
    if-ne v1, v4, :cond_6

    .line 185
    .line 186
    const-string v4, "DIRTY"

    .line 187
    .line 188
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_6

    .line 193
    .line 194
    new-instance p1, Lfl/f$c;

    .line 195
    .line 196
    invoke-direct {p1, p0, v6, v7}, Lfl/f$c;-><init>(Lfl/f;Lfl/f$d;Lfl/f$a;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v6, p1}, Lfl/f$d;->c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    if-ne v0, v3, :cond_8

    .line 204
    .line 205
    const/4 v0, 0x4

    .line 206
    if-ne v1, v0, :cond_8

    .line 207
    .line 208
    const-string v0, "READ"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    :cond_7
    :goto_1
    return-void

    .line 217
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method

.method private declared-synchronized y()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 14
    .line 15
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 16
    .line 17
    new-instance v2, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    iget-object v3, p0, Lfl/f;->c:Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lfl/d;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "libcore.io.DiskLruCache"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_2
    const-string v1, "\n"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_4
    const-string v1, "1"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    .line 44
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_6
    const-string v1, "\n"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    .line 49
    :try_start_7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lfl/f;->e:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 59
    .line 60
    .line 61
    :try_start_8
    const-string v1, "\n"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 62
    .line 63
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lfl/f;->g:I

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_a
    const-string v1, "\n"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 76
    .line 77
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_c
    const-string v1, "\n"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 81
    .line 82
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lfl/f$d;

    .line 106
    .line 107
    invoke-static {v2}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/16 v4, 0xa

    .line 112
    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_e
    const-string v5, "DIRTY "
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 121
    .line 122
    :try_start_f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lfl/f$d;->m(Lfl/f$d;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_1
    move-exception v1

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 148
    .line 149
    .line 150
    :try_start_10
    const-string v5, "CLEAN "
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 151
    .line 152
    :try_start_11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lfl/f$d;->m(Lfl/f$d;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lfl/f$d;->f()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const/16 v5, 0x20

    .line 170
    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 172
    .line 173
    .line 174
    :try_start_12
    const-string v5, "STAMP_"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 175
    .line 176
    :try_start_13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lfl/f$d;->a(Lfl/f$d;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lfl/f;->b:Ljava/io/File;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    const/4 v1, 0x1

    .line 207
    if-eqz v0, :cond_3

    .line 208
    .line 209
    iget-object v0, p0, Lfl/f;->b:Ljava/io/File;

    .line 210
    .line 211
    iget-object v2, p0, Lfl/f;->d:Ljava/io/File;

    .line 212
    .line 213
    invoke-static {v0, v2, v1}, Lfl/f;->o(Ljava/io/File;Ljava/io/File;Z)V

    .line 214
    .line 215
    .line 216
    :cond_3
    iget-object v0, p0, Lfl/f;->c:Ljava/io/File;

    .line 217
    .line 218
    iget-object v2, p0, Lfl/f;->b:Ljava/io/File;

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    invoke-static {v0, v2, v3}, Lfl/f;->o(Ljava/io/File;Ljava/io/File;Z)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lfl/f;->d:Ljava/io/File;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    .line 228
    .line 229
    new-instance v0, Ljava/io/BufferedWriter;

    .line 230
    .line 231
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 232
    .line 233
    new-instance v3, Ljava/io/FileOutputStream;

    .line 234
    .line 235
    iget-object v4, p0, Lfl/f;->b:Ljava/io/File;

    .line 236
    .line 237
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 238
    .line 239
    .line 240
    sget-object v1, Lfl/d;->a:Ljava/nio/charset/Charset;

    .line 241
    .line 242
    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 246
    .line 247
    .line 248
    iput-object v0, p0, Lfl/f;->i:Ljava/io/Writer;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 249
    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 252
    :goto_2
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 253
    .line 254
    .line 255
    throw v1

    .line 256
    :goto_3
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 257
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lfl/f$d;

    .line 34
    .line 35
    invoke-static {v1}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lfl/f$c;->c()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0}, Lfl/f;->T()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lfl/f;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw v0
.end method

.method public d(Ljava/lang/String;)Lfl/f$c;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, v1}, Lfl/f;->f(Ljava/lang/String;J)Lfl/f$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized p(Ljava/lang/String;)Lfl/f$e;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfl/f;->k()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lfl/f$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v1

    .line 18
    :cond_0
    :try_start_1
    invoke-static {v0}, Lfl/f$d;->o(Lfl/f$d;)Z

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v1

    .line 26
    :cond_1
    :try_start_2
    iget-object v2, v0, Lfl/f$d;->c:[Ljava/io/File;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_3

    .line 31
    .line 32
    aget-object v5, v2, v4

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-object v1

    .line 42
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :try_start_3
    iget v1, p0, Lfl/f;->k:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    iput v1, p0, Lfl/f;->k:I

    .line 52
    .line 53
    iget-object v1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 54
    .line 55
    const-string v2, "READ"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 61
    .line 62
    const/16 v2, 0x20

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 73
    .line 74
    const/16 v2, 0xa

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lfl/f;->r()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Lfl/f;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    .line 87
    iget-object v2, p0, Lfl/f;->n:Ljava/util/concurrent/Callable;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 90
    .line 91
    .line 92
    :cond_4
    new-instance v8, Lfl/f$e;

    .line 93
    .line 94
    invoke-static {v0}, Lfl/f$d;->n(Lfl/f$d;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iget-object v5, v0, Lfl/f$d;->c:[Ljava/io/File;

    .line 99
    .line 100
    invoke-static {v0}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/4 v7, 0x0

    .line 105
    move-object v0, v8

    .line 106
    move-object v1, p0

    .line 107
    move-object v2, p1

    .line 108
    invoke-direct/range {v0 .. v7}, Lfl/f$e;-><init>(Lfl/f;Ljava/lang/String;J[Ljava/io/File;[JLfl/f$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit p0

    .line 112
    return-object v8

    .line 113
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    throw p1
.end method

.method public declared-synchronized u(Ljava/lang/String;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfl/f;->k()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lfl/f$d;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-static {v0}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    :goto_0
    iget v2, p0, Lfl/f;->g:I

    .line 25
    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lfl/f$d;->d(I)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "failed to delete "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    :goto_1
    iget-wide v2, p0, Lfl/f;->h:J

    .line 71
    .line 72
    invoke-static {v0}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    aget-wide v5, v4, v1

    .line 77
    .line 78
    sub-long/2addr v2, v5

    .line 79
    iput-wide v2, p0, Lfl/f;->h:J

    .line 80
    .line 81
    invoke-static {v0}, Lfl/f$d;->l(Lfl/f$d;)[J

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-wide/16 v3, 0x0

    .line 86
    .line 87
    aput-wide v3, v2, v1

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget v0, p0, Lfl/f;->k:I

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    add-int/2addr v0, v1

    .line 96
    iput v0, p0, Lfl/f;->k:I

    .line 97
    .line 98
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 99
    .line 100
    const-string v2, "REMOVE"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 106
    .line 107
    const/16 v2, 0x20

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lfl/f;->i:Ljava/io/Writer;

    .line 118
    .line 119
    const/16 v2, 0xa

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lfl/f;->j:Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lfl/f;->r()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget-object p1, p0, Lfl/f;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    .line 137
    iget-object v0, p0, Lfl/f;->n:Ljava/util/concurrent/Callable;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_4
    monitor-exit p0

    .line 143
    return v1

    .line 144
    :cond_5
    :goto_2
    monitor-exit p0

    .line 145
    return v1

    .line 146
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p1
.end method
