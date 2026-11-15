.class public final Lcom/google/android/exoplayer2/source/x;
.super Lcom/google/android/exoplayer2/source/a;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/x$b;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/w1;

.field private final i:Lcom/google/android/exoplayer2/w1$h;

.field private final j:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final k:Lcom/google/android/exoplayer2/source/r$a;

.field private final l:Lcom/google/android/exoplayer2/drm/u;

.field private final m:Lcom/google/android/exoplayer2/upstream/z;

.field private final n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/w1$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/w1$h;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/w1;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/r$a;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/x;->m:Lcom/google/android/exoplayer2/upstream/z;

    .line 9
    iput p6, p0, Lcom/google/android/exoplayer2/source/x;->n:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;ILcom/google/android/exoplayer2/source/x$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/x;-><init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;I)V

    return-void
.end method

.method private E()V
    .locals 9

    .line 1
    new-instance v8, Lv9/u;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/w1;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v0, v8

    .line 14
    invoke-direct/range {v0 .. v7}, Lv9/u;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/w1;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/exoplayer2/source/x$a;

    .line 22
    .line 23
    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/l3;)V

    .line 24
    .line 25
    .line 26
    move-object v8, v0

    .line 27
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/l3;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->s:Lcom/google/android/exoplayer2/upstream/k0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->prepare()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/os/Looper;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Lg9/u1;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/u;->b(Landroid/os/Looper;Lg9/u1;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->E()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/w1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->s:Lcom/google/android/exoplayer2/upstream/k0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/w;

    .line 16
    .line 17
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/w1$h;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$h;->a:Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/r$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Lg9/u1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/r$a;->a(Lg9/u1;)Lcom/google/android/exoplayer2/source/r;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, v12, Lcom/google/android/exoplayer2/source/x;->m:Lcom/google/android/exoplayer2/upstream/z;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/w1$h;

    .line 44
    .line 45
    iget-object v10, v0, Lcom/google/android/exoplayer2/w1$h;->e:Ljava/lang/String;

    .line 46
    .line 47
    iget v11, v12, Lcom/google/android/exoplayer2/source/x;->n:I

    .line 48
    .line 49
    move-object v0, v13

    .line 50
    move-object v8, p0

    .line 51
    move-object/from16 v9, p2

    .line 52
    .line 53
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/w;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object v13
.end method

.method public i(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w;->S()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method public p(JZZ)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    .line 17
    .line 18
    cmp-long v0, v0, p1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    .line 23
    .line 24
    if-ne v0, p3, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    .line 27
    .line 28
    if-ne v0, p4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    .line 32
    .line 33
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->E()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
