.class public final Landroidx/media3/exoplayer/dash/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/f$b;,
        Landroidx/media3/exoplayer/dash/f$c;,
        Landroidx/media3/exoplayer/dash/f$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/upstream/b;

.field private final b:Landroidx/media3/exoplayer/dash/f$b;

.field private final c:Lv2/b;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/TreeMap;

.field private f:Lz1/c;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lz1/c;Landroidx/media3/exoplayer/dash/f$b;Landroidx/media3/exoplayer/upstream/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f;->f:Lz1/c;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/f;->b:Landroidx/media3/exoplayer/dash/f$b;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/f;->a:Landroidx/media3/exoplayer/upstream/b;

    .line 9
    .line 10
    new-instance p1, Ljava/util/TreeMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/media3/common/util/a1;->B(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f;->d:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance p1, Lv2/b;

    .line 24
    .line 25
    invoke-direct {p1}, Lv2/b;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f;->c:Lv2/b;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/dash/f;)Lv2/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/f;->c:Lv2/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/dash/f;->h(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lv2/a;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/dash/f;->f(Lv2/a;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/dash/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/f;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(J)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private static f(Lv2/a;)J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lv2/a;->e:[B

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/a1;->H([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    return-wide v0
.end method

.method private g(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 16
    .line 17
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    cmp-long v0, v0, p1

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 38
    .line 39
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "urn:mpeg:dash:event:2012"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const-string p0, "1"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "2"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const-string p0, "3"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method private i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->i:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->h:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->b:Landroidx/media3/exoplayer/dash/f$b;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/exoplayer/dash/f$b;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->b:Landroidx/media3/exoplayer/dash/f$b;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/f;->g:J

    .line 4
    .line 5
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/dash/f$b;->a(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->e:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/f;->f:Lz1/c;

    .line 34
    .line 35
    iget-wide v3, v3, Lz1/c;->h:J

    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-gez v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroidx/media3/exoplayer/dash/f$a;

    .line 16
    .line 17
    iget-wide v2, p1, Landroidx/media3/exoplayer/dash/f$a;->a:J

    .line 18
    .line 19
    iget-wide v4, p1, Landroidx/media3/exoplayer/dash/f$a;->b:J

    .line 20
    .line 21
    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/dash/f;->g(JJ)V

    .line 22
    .line 23
    .line 24
    return v1
.end method

.method j(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->f:Lz1/c;

    .line 2
    .line 3
    iget-boolean v1, v0, Lz1/c;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/dash/f;->i:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    iget-wide v0, v0, Lz1/c;->h:J

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/dash/f;->e(J)Ljava/util/Map$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    cmp-long p1, v4, p1

    .line 34
    .line 35
    if-gez p1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/f;->g:J

    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f;->l()V

    .line 50
    .line 51
    .line 52
    move v2, v3

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f;->i()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return v2
.end method

.method public k()Landroidx/media3/exoplayer/dash/f$c;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/f$c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/f;->a:Landroidx/media3/exoplayer/upstream/b;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/dash/f$c;-><init>(Landroidx/media3/exoplayer/dash/f;Landroidx/media3/exoplayer/upstream/b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method m(Lg2/e;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/dash/f;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method n(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->f:Lz1/c;

    .line 2
    .line 3
    iget-boolean v0, v0, Lz1/c;->d:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->i:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f;->i()V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    return v1
.end method

.method public o()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f;->d:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public q(Lz1/c;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/f;->i:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/media3/exoplayer/dash/f;->g:J

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f;->f:Lz1/c;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f;->p()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
