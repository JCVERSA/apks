.class public abstract Lcom/hunantv/media/player/subtitle/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/d$c;,
        Lcom/hunantv/media/player/subtitle/d$d;,
        Lcom/hunantv/media/player/subtitle/d$a;,
        Lcom/hunantv/media/player/subtitle/d$b;
    }
.end annotation


# instance fields
.field protected final a:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/hunantv/media/player/subtitle/d$d;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/hunantv/media/player/subtitle/d$d;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/hunantv/media/player/subtitle/d$b;

.field protected final d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Z

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/hunantv/media/player/b/a;

.field private h:J

.field private i:J

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/hunantv/media/player/subtitle/MediaFormat;

.field private l:J


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->b:Landroidx/collection/LongSparseArray;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->f:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->k:Lcom/hunantv/media/player/subtitle/MediaFormat;

    new-instance p1, Lcom/hunantv/media/player/subtitle/d$b;

    invoke-direct {p1}, Lcom/hunantv/media/player/subtitle/d$b;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->c:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->d()V

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->j:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/subtitle/d$d;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/hunantv/media/player/subtitle/d$d;->a:Lcom/hunantv/media/player/subtitle/d$a;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/d;->c:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-virtual {v3, v1}, Lcom/hunantv/media/player/subtitle/d$b;->b(Lcom/hunantv/media/player/subtitle/d$a;)V

    iget-object v3, v1, Lcom/hunantv/media/player/subtitle/d$a;->e:Lcom/hunantv/media/player/subtitle/d$a;

    iput-object v2, v1, Lcom/hunantv/media/player/subtitle/d$a;->e:Lcom/hunantv/media/player/subtitle/d$a;

    move-object v1, v3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d;->b:Landroidx/collection/LongSparseArray;

    iget-wide v3, v0, Lcom/hunantv/media/player/subtitle/d$d;->e:J

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object v1, v0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v2, v0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v2, v0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    return-void
.end method

.method private declared-synchronized d(J)V
    .locals 0

    .line 2
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/hunantv/media/player/subtitle/d;->i:J
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


# virtual methods
.method public a()V
    .locals 3

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "SubtitleTrack"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->d()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/subtitle/d;->a(Ljava/util/Vector;)V

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    invoke-interface {v2, v0, v1, p0}, Lcom/hunantv/media/player/b/a;->a(JLcom/hunantv/media/player/b/a$a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3

    .line 4
    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh onTimedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/hunantv/media/player/subtitle/d;->a(ZJ)V

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/d;->d(J)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/subtitle/d;->a(Ljava/util/Vector;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->e()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/hunantv/media/player/b/a;)V
    .locals 1

    .line 5
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0, p0}, Lcom/hunantv/media/player/b/a;->b(Lcom/hunantv/media/player/b/a$a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/hunantv/media/player/b/a;->a(Lcom/hunantv/media/player/b/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public abstract a(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(ZJ)V
    .locals 6

    .line 6
    monitor-enter p0

    :try_start_0
    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveCues rebuild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",timeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",mLastUpdateTimeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/d;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->h:J

    cmp-long p1, v0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->d()V

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->c:Lcom/hunantv/media/player/subtitle/d$b;

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->h:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/hunantv/media/player/subtitle/d$b;->a(JJ)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SubtitleTrack"

    const-string v1, "updateActiveCues next"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/hunantv/media/player/subtitle/d$a;

    iget-wide v2, v1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string v0, "SubtitleTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-wide v0, v1, Lcom/hunantv/media/player/subtitle/d$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-wide v2, v1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const-string v0, "SubtitleTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    if-eqz v0, :cond_4

    invoke-virtual {v1, p2, p3}, Lcom/hunantv/media/player/subtitle/d$a;->a(J)V

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    if-eqz v0, :cond_2

    invoke-virtual {v1, p2, p3}, Lcom/hunantv/media/player/subtitle/d$a;->a(J)V

    goto/16 :goto_1

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-gtz p1, :cond_7

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/d;->a(I)V

    goto :goto_2

    :cond_7
    iput-wide p2, p0, Lcom/hunantv/media/player/subtitle/d;->h:J

    const-string p1, "SubtitleTrack"

    const-string p2, "updateActiveCues out"

    invoke-static {p1, p2}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract a([BZJLjava/lang/String;)V
.end method

.method public declared-synchronized a(Lcom/hunantv/media/player/subtitle/d$a;)Z
    .locals 11

    .line 7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->c:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$a;)V

    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/d;->b:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/subtitle/d$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/subtitle/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/media/player/subtitle/d$d;-><init>(Lcom/hunantv/media/player/subtitle/d$1;)V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d;->b:Landroidx/collection/LongSparseArray;

    iget-wide v4, p1, Lcom/hunantv/media/player/subtitle/d$a;->d:J

    invoke-virtual {v1, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v4, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    iput-wide v4, v0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    iget-wide v4, v0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    iget-wide v6, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    iput-wide v6, v0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/hunantv/media/player/subtitle/d$d;->a:Lcom/hunantv/media/player/subtitle/d$a;

    iput-object v1, p1, Lcom/hunantv/media/player/subtitle/d$a;->e:Lcom/hunantv/media/player/subtitle/d$a;

    iput-object p1, v0, Lcom/hunantv/media/player/subtitle/d$d;->a:Lcom/hunantv/media/player/subtitle/d$a;

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0, v4, v1}, Lcom/hunantv/media/player/b/a;->a(ZZ)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :cond_3
    const-wide/16 v5, -0x1

    :goto_1
    :try_start_2
    const-string v0, "SubtitleTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    if-eqz v0, :cond_6

    iget-wide v7, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    cmp-long v7, v7, v5

    if-gtz v7, :cond_6

    iget-wide v7, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    iget-wide v9, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance p1, Lcom/hunantv/media/player/subtitle/d$1;

    invoke-direct {p1, p0, p0, v5, v6}, Lcom/hunantv/media/player/subtitle/d$1;-><init>(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/d;J)V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->j:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->f:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "SubtitleTrack"

    const-string v0, "scheduling update"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "SubtitleTrack"

    const-string v0, "failed to schedule subtitle view update"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/subtitle/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return v1

    :cond_6
    if-eqz v0, :cond_8

    :try_start_3
    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    iget-wide v5, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    cmp-long v0, v0, v5

    if-ltz v0, :cond_8

    iget-wide v0, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    iget-wide v5, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    cmp-long p1, v0, v5

    if-ltz p1, :cond_7

    cmp-long p1, v5, v2

    if-gez p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    monitor-exit p0

    return v4

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final b()Lcom/hunantv/media/player/subtitle/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d;->k:Lcom/hunantv/media/player/subtitle/MediaFormat;

    return-object p0
.end method

.method public b(J)V
    .locals 3

    .line 2
    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/hunantv/media/player/subtitle/d;->a(ZJ)V

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/d;->d(J)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/subtitle/d;->a(Ljava/util/Vector;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->e()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract c()Lcom/hunantv/media/player/subtitle/d$c;
.end method

.method public c(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->b:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/subtitle/d$d;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/subtitle/d$d;->a(Landroidx/collection/LongSparseArray;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized d()V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->c:Lcom/hunantv/media/player/subtitle/d$b;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/subtitle/d$b;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sched @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleTrack"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d;->l:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-interface {v0, v1, v2, p0}, Lcom/hunantv/media/player/b/a;->a(JLcom/hunantv/media/player/b/a$a;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SubtitleTrack"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/hunantv/media/player/subtitle/d$c;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/b/a;->a(Lcom/hunantv/media/player/b/a$a;)V

    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->a:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/d;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SubtitleTrack"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d;->g:Lcom/hunantv/media/player/b/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/b/a;->b(Lcom/hunantv/media/player/b/a$a;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/subtitle/d$c;->setVisible(Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    return-void
.end method

.method public h()I
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method
