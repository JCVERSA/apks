.class public final Lcom/google/android/exoplayer2/upstream/cache/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/b;


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->a:J

    .line 5
    .line 6
    new-instance p1, Ljava/util/TreeSet;

    .line 7
    .line 8
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/p;

    .line 9
    .line 10
    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/cache/p;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->b:Ljava/util/TreeSet;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/upstream/cache/h;Lcom/google/android/exoplayer2/upstream/cache/h;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/q;->g(Lcom/google/android/exoplayer2/upstream/cache/h;Lcom/google/android/exoplayer2/upstream/cache/h;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static g(Lcom/google/android/exoplayer2/upstream/cache/h;Lcom/google/android/exoplayer2/upstream/cache/h;)I
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->f:J

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->f:J

    .line 4
    .line 5
    sub-long v4, v0, v2

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    cmp-long v4, v4, v6

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Lcom/google/android/exoplayer2/upstream/cache/h;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-gez p0, :cond_1

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    :goto_0
    return p0
.end method

.method private h(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->c:J

    .line 2
    .line 3
    add-long/2addr v0, p2

    .line 4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->a:J

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->b:Ljava/util/TreeSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->b:Ljava/util/TreeSet;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->h(Lcom/google/android/exoplayer2/upstream/cache/h;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->b:Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->c:J

    .line 7
    .line 8
    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/h;->c:J

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->c:J

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/q;->h(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    const-wide/16 p2, -0x1

    .line 2
    .line 3
    cmp-long p2, p5, p2

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/exoplayer2/upstream/cache/q;->h(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/h;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->b:Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->c:J

    .line 7
    .line 8
    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/cache/h;->c:J

    .line 9
    .line 10
    sub-long/2addr v0, p1

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/q;->c:J

    .line 12
    .line 13
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/h;Lcom/google/android/exoplayer2/upstream/cache/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/q;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/h;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/q;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/h;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCacheInitialized()V
    .locals 0

    .line 1
    return-void
.end method
