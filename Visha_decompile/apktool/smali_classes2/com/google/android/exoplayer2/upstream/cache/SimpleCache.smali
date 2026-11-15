.class public final Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field public static final l:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/google/android/exoplayer2/upstream/cache/b;

.field public final c:Lfq0;

.field public final d:Lop0;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:J

.field public j:Z

.field public k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->l:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lbt1;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lbt1;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lbt1;[BZZ)V
    .locals 7

    .line 2
    new-instance v6, Lfq0;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lfq0;-><init>(Lbt1;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    .line 3
    new-instance p4, Lop0;

    invoke-direct {p4, p3}, Lop0;-><init>(Lbt1;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lfq0;Lop0;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lfq0;Lop0;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->n(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->e:Ljava/util/HashMap;

    .line 12
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->f:Ljava/util/Random;

    .line 13
    invoke-interface {p2}, Lcom/google/android/exoplayer2/upstream/cache/b;->requiresCacheSpanTouches()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g:Z

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h:J

    .line 15
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 16
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 18
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k()V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    return-object p0
.end method

.method public static h(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    invoke-static {v0, p0}, Lop5;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/io/File;)J
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".uid"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m([Ljava/io/File;)J
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->r(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed UID file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleCache"

    invoke-static {v4, v3}, Lop5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static declared-synchronized n(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->l:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static r(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a(Lyp0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->s(Lyp0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Lyp0;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq0;

    iget-wide v1, p1, Lyp0;->c:J

    invoke-virtual {v0, v1, v2}, Leq0;->l(J)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v0, v0, Leq0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfq0;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lzg1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v0, p1, p2}, Lfq0;->e(Ljava/lang/String;Lzg1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {p1}, Lfq0;->s()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-static {p1, p2, p3, v0}, Lwl9;->g(Ljava/io/File;JLfq0;)Lwl9;

    move-result-object p2

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwl9;

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v0, p2, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object p3

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leq0;

    iget-wide v3, p2, Lyp0;->c:J

    iget-wide v5, p2, Lyp0;->d:J

    invoke-virtual {p3, v3, v4, v5, v6}, Leq0;->g(JJ)Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p3}, Leq0;->c()Lp02;

    move-result-object p3

    invoke-static {p3}, Lyg1;->b(Lyg1;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_3

    iget-wide v5, p2, Lyp0;->c:J

    iget-wide v7, p2, Lyp0;->d:J

    add-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-gtz p3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lzi;->g(Z)V

    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    iget-wide v2, p2, Lyp0;->d:J

    iget-wide v4, p2, Lyp0;->g:J

    invoke-virtual/range {v0 .. v5}, Lop0;->h(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->f(Lwl9;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {p1}, Lfq0;->s()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    :try_start_7
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final f(Lwl9;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfq0;->m(Ljava/lang/String;)Leq0;

    move-result-object v0

    invoke-virtual {v0, p1}, Leq0;->a(Lwl9;)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->i:J

    iget-wide v2, p1, Lyp0;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->i:J

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->o(Lwl9;)V

    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getContentMetadata(Ljava/lang/String;)Lyg1;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v0, p1}, Lfq0;->j(Ljava/lang/String;)Lyg1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/String;JJ)Lwl9;
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v0, p1}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lwl9;->h(Ljava/lang/String;JJ)Lwl9;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3, p4, p5}, Leq0;->d(JJ)Lwl9;

    move-result-object p1

    iget-boolean v1, p1, Lyp0;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lyp0;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p1, Lyp0;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->t()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list cache directory files: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lop5;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->m([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->i(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create cache UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h:J

    invoke-virtual {v2, v3, v4}, Lfq0;->n(J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h:J

    invoke-virtual {v2, v4, v5}, Lop0;->e(J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    invoke-virtual {v2}, Lop0;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->l(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lop0;->g(Ljava/util/Set;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->l(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v0}, Lfq0;->r()V

    :try_start_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {p0}, Lfq0;->s()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    const-string v0, "Storing index file failed"

    invoke-static {v1, v0, p0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize cache indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->k:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void
.end method

.method public final l(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9

    if-eqz p3, :cond_8

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v8, v0, v2, p4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->l(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v2}, Lfq0;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnp0;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-wide v3, v2, Lnp0;->a:J

    iget-wide v5, v2, Lnp0;->b:J

    goto :goto_2

    :cond_4
    const-wide/16 v2, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move-wide v3, v2

    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lwl9;->f(Ljava/io/File;JJLfq0;)Lwl9;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->f(Lwl9;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_4
    if-nez p2, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method public final o(Lwl9;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;)V

    return-void
.end method

.method public final p(Lyp0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;)V

    return-void
.end method

.method public final q(Lwl9;Lyp0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;Lyp0;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lyp0;Lyp0;)V

    return-void
.end method

.method public final s(Lyp0;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v1, p1, Lyp0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Leq0;->j(Lyp0;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->i:J

    iget-wide v3, p1, Lyp0;->d:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->i:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lyp0;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    invoke-virtual {v2, v1}, Lop0;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove file index entry for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleCache"

    invoke-static {v2, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    iget-object v0, v0, Leq0;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lfq0;->p(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->p(Lyp0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v0, p1}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2, p3, p4, p5}, Leq0;->g(JJ)Z

    move-result v1

    invoke-static {v1}, Lzi;->g(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->t()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->b:Lcom/google/android/exoplayer2/upstream/cache/b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/b;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->a:Ljava/io/File;

    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->f:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->h(Ljava/io/File;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v3, v0, Leq0;->a:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lwl9;->j(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;JJ)Lyp0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g()V

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lyp0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;JJ)Lyp0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g()V

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->j(Ljava/lang/String;JJ)Lwl9;

    move-result-object p4

    iget-boolean p5, p4, Lyp0;->e:Z

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->u(Ljava/lang/String;Lwl9;)Lwl9;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {p5, p1}, Lfq0;->m(Ljava/lang/String;)Leq0;

    move-result-object p1

    iget-wide v0, p4, Lyp0;->d:J

    invoke-virtual {p1, p2, p3, v0, v1}, Leq0;->i(JJ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p4

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final t()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v1}, Lfq0;->h()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leq0;

    invoke-virtual {v2}, Leq0;->e()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyp0;

    iget-object v4, v3, Lyp0;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Lyp0;->d:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyp0;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->s(Lyp0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final u(Ljava/lang/String;Lwl9;)Lwl9;
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->g:Z

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p2, Lyp0;->f:Ljava/io/File;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p2, Lyp0;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->d:Lop0;

    if-eqz v1, :cond_1

    move-wide v5, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lop0;->h(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SimpleCache"

    const-string v1, "Failed to update index with new touch timestamp."

    invoke-static {v0, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->c:Lfq0;

    invoke-virtual {v1, p1}, Lfq0;->g(Ljava/lang/String;)Leq0;

    move-result-object p1

    invoke-virtual {p1, p2, v7, v8, v0}, Leq0;->k(Lwl9;JZ)Lwl9;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->q(Lwl9;Lyp0;)V

    return-object p1
.end method
