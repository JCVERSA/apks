.class public final Lcom/google/android/exoplayer2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/h$a;
.implements Lrva$a;
.implements Lcom/google/android/exoplayer2/q$d;
.implements Lcom/google/android/exoplayer2/g$a;
.implements Lcom/google/android/exoplayer2/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/j$c;,
        Lcom/google/android/exoplayer2/j$b;,
        Lcom/google/android/exoplayer2/j$d;,
        Lcom/google/android/exoplayer2/j$g;,
        Lcom/google/android/exoplayer2/j$h;,
        Lcom/google/android/exoplayer2/j$f;,
        Lcom/google/android/exoplayer2/j$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Lcom/google/android/exoplayer2/j$h;

.field public M:J

.field public N:I

.field public O:Z

.field public P:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public Q:J

.field public R:J

.field public final b:[Lcom/google/android/exoplayer2/w;

.field public final c:Ljava/util/Set;

.field public final d:[Lks8;

.field public final e:Lrva;

.field public final f:Lsva;

.field public final g:Lgn5;

.field public final h:Lo70;

.field public final i:Lxn4;

.field public final j:Landroid/os/HandlerThread;

.field public final k:Landroid/os/Looper;

.field public final l:Lcom/google/android/exoplayer2/a0$d;

.field public final m:Lcom/google/android/exoplayer2/a0$b;

.field public final n:J

.field public final o:Z

.field public final p:Lcom/google/android/exoplayer2/g;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ley0;

.field public final s:Lcom/google/android/exoplayer2/j$f;

.field public final t:Lcom/google/android/exoplayer2/p;

.field public final u:Lcom/google/android/exoplayer2/q;

.field public final v:Lcom/google/android/exoplayer2/m;

.field public final w:J

.field public x:Lka9;

.field public y:Lb88;

.field public z:Lcom/google/android/exoplayer2/j$e;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/w;Lrva;Lsva;Lgn5;Lo70;IZLkb;Lka9;Lcom/google/android/exoplayer2/m;JZLandroid/os/Looper;Ley0;Lcom/google/android/exoplayer2/j$f;Lta8;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/google/android/exoplayer2/j;->s:Lcom/google/android/exoplayer2/j$f;

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    iput-object v2, v0, Lcom/google/android/exoplayer2/j;->e:Lrva;

    move-object v9, p3

    iput-object v9, v0, Lcom/google/android/exoplayer2/j;->f:Lsva;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    iput-object v3, v0, Lcom/google/android/exoplayer2/j;->h:Lo70;

    move/from16 v11, p6

    iput v11, v0, Lcom/google/android/exoplayer2/j;->F:I

    move/from16 v11, p7

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/j;->G:Z

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/google/android/exoplayer2/j;->x:Lka9;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    iput-wide v5, v0, Lcom/google/android/exoplayer2/j;->w:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/j;->Q:J

    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/j;->B:Z

    iput-object v7, v0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/j;->R:J

    invoke-interface/range {p4 .. p4}, Lgn5;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/j;->n:J

    invoke-interface/range {p4 .. p4}, Lgn5;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/j;->o:Z

    invoke-static {p3}, Lb88;->j(Lsva;)Lb88;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    new-instance v6, Lcom/google/android/exoplayer2/j$e;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/j$e;-><init>(Lb88;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    array-length v5, v1

    new-array v5, v5, [Lks8;

    iput-object v5, v0, Lcom/google/android/exoplayer2/j;->d:[Lks8;

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/w;->d(ILta8;)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/j;->d:[Lks8;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/w;->getCapabilities()Lks8;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/g;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/g;-><init>(Lcom/google/android/exoplayer2/g$a;Ley0;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Sets;->i()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->c:Ljava/util/Set;

    new-instance v1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    new-instance v1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p2, p0, v3}, Lrva;->b(Lrva$a;Lo70;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/j;->O:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/exoplayer2/p;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/p;-><init>(Lkb;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    new-instance v2, Lcom/google/android/exoplayer2/q;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/q;-><init>(Lcom/google/android/exoplayer2/q$d;Lkb;Landroid/os/Handler;Lta8;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->k:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Ley0;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    return-void
.end method

.method public static K(ZLcom/google/android/exoplayer2/source/i$b;JLcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    iget-object p0, p1, Lxk6;->a:Ljava/lang/Object;

    iget-object p2, p4, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lxk6;->b()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Lxk6;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Lxk6;->b:I

    iget p3, p1, Lxk6;->c:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/a0$b;->k(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Lxk6;->b:I

    iget p1, p1, Lxk6;->c:I

    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/a0$b;->k(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    move v0, p2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p4}, Lxk6;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Lxk6;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method

.method public static M(Lcom/google/android/exoplayer2/w;)Z
    .locals 0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/w;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static O(Lb88;Lcom/google/android/exoplayer2/a0$b;)Z
    .locals 2

    iget-object v0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p0, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a0$b;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/j;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->P()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->Q(Lcom/google/android/exoplayer2/u;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j;->I:Z

    return p1
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/j;)Lxn4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    return-object p0
.end method

.method public static p0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/a0$d;->q:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/a0$b;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/j$d;->b(IJLjava/lang/Object;)V

    return-void
.end method

.method public static q0(Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;IZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lblb;->t0(J)J

    move-result-wide v1

    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/j$h;

    iget-object v4, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/u;->h()Lcom/google/android/exoplayer2/a0;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/u;->d()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/j$h;-><init>(Lcom/google/android/exoplayer2/a0;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->t0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$h;ZIZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/j$d;->b(IJLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/j;->p0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)V

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/u;->f()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/j;->p0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)V

    return v12

    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/j$d;->c:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/a0$b;->g:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/a0$d;->p:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-wide v1, v0, Lcom/google/android/exoplayer2/j$d;->d:J

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v3

    add-long v5, v1, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/a0$b;->d:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/j$d;->b(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method public static s0(Lcom/google/android/exoplayer2/a0;Lb88;Lcom/google/android/exoplayer2/j$h;Lcom/google/android/exoplayer2/p;IZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/j$g;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/j$g;

    invoke-static {}, Lb88;->k()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/j$g;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJZZZ)V

    return-object v0

    :cond_0
    iget-object v14, v8, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v12, v14, Lxk6;->a:Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/j;->O(Lb88;Lcom/google/android/exoplayer2/a0$b;)Z

    move-result v13

    iget-object v0, v8, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, v8, Lb88;->r:J

    :goto_0
    move-wide v15, v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-wide v0, v8, Lb88;->c:J

    goto :goto_0

    :goto_2
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    move v14, v6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/j;->t0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$h;ZIZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    move/from16 v2, v19

    move v3, v2

    move/from16 v4, v20

    goto :goto_5

    :cond_3
    iget-wide v1, v9, Lcom/google/android/exoplayer2/j$h;->c:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    move-wide v0, v15

    move/from16 v2, v19

    goto :goto_3

    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v6, v14

    move/from16 v2, v20

    :goto_3
    iget v3, v8, Lb88;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move/from16 v3, v20

    goto :goto_4

    :cond_5
    move/from16 v3, v19

    :goto_4
    move/from16 v4, v19

    :goto_5
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    :goto_6
    move-object/from16 v6, v21

    goto/16 :goto_a

    :cond_6
    move-object/from16 v21, v14

    move v14, v6

    iget-object v0, v8, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result v0

    :goto_7
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    iget-object v5, v8, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/j;->u0(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result v0

    move/from16 v4, v20

    goto :goto_8

    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    move/from16 v4, v19

    :goto_8
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v29, v27

    goto :goto_6

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_c

    iget-object v0, v8, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    move-object/from16 v6, v21

    iget-object v1, v6, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v0, v8, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget v1, v11, Lcom/google/android/exoplayer2/a0$b;->d:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$d;->p:I

    iget-object v1, v8, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v2, v6, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v0

    add-long v4, v15, v0

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_9

    :cond_b
    move-wide v0, v15

    :goto_9
    move v3, v14

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v20

    goto :goto_a

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move v3, v14

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_a
    if-eq v3, v14, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_b

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/p;->B(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v2

    iget v3, v2, Lxk6;->e:I

    if-eq v3, v14, :cond_f

    iget v4, v6, Lxk6;->e:I

    if-eq v4, v14, :cond_e

    if-lt v3, v4, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v3, v19

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v3, v20

    :goto_d
    iget-object v4, v6, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v6}, Lxk6;->b()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lxk6;->b()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v20, v19

    :goto_e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/j;->K(ZLcom/google/android/exoplayer2/source/i$b;JLcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    :cond_12
    invoke-virtual {v2}, Lxk6;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2, v3}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, v8, Lb88;->r:J

    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    goto :goto_10

    :cond_14
    iget-object v0, v2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget v0, v2, Lxk6;->c:I

    iget v1, v2, Lxk6;->b:I

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/a0$b;->j()J

    move-result-wide v0

    goto :goto_f

    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_f

    :goto_10
    new-instance v0, Lcom/google/android/exoplayer2/j$g;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/j$g;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJZZZ)V

    return-object v0
.end method

.method public static t(Lqi3;)[Lcom/google/android/exoplayer2/k;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lhva;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/k;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lhva;->getFormat(I)Lcom/google/android/exoplayer2/k;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static t0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$h;ZIZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Landroid/util/Pair;
    .locals 12

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Lcom/google/android/exoplayer2/j$h;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplayer2/j$h;->b:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/j$h;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/a0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/a0$b;->g:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/exoplayer2/a0$b;->d:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/a0$d;->p:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-wide v4, v0, Lcom/google/android/exoplayer2/j$h;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/j;->u0(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static u0(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/a0;->m()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/a0;->h(ILcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0$d;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/a0;->q(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/a0;->q(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final A(Lcom/google/android/exoplayer2/source/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p;->v(Lcom/google/android/exoplayer2/source/h;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/p;->y(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->R()V

    return-void
.end method

.method public final A0(Lcom/google/android/exoplayer2/source/i$b;JZZ)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->b1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->D:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget p5, p5, Lb88;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j;->S0(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lwk6;->f:Lyk6;

    iget-object v3, v3, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, v3}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lwk6;->j()Lwk6;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2, p2, p3}, Lwk6;->z(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length p4, p1

    move p5, v0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/w;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->b()Lwk6;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    const-wide p4, 0xe8d4a51000L

    invoke-virtual {v2, p4, p5}, Lwk6;->x(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    iget-boolean p1, v2, Lwk6;->d:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lwk6;->f:Lyk6;

    invoke-virtual {p1, p2, p3}, Lyk6;->b(J)Lyk6;

    move-result-object p1

    iput-object p1, v2, Lwk6;->f:Lyk6;

    goto :goto_4

    :cond_8
    iget-boolean p1, v2, Lwk6;->e:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide p2

    iget-object p1, v2, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/j;->n:J

    sub-long p4, p2, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/j;->o:Z

    invoke-interface {p1, p4, p5, v2}, Lcom/google/android/exoplayer2/source/h;->discardBuffer(JZ)V

    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/j;->o0(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->R()V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->f()V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/j;->o0(J)V

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->C(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    invoke-interface {p0, v1}, Lxn4;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final B(Ljava/io/IOException;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lwk6;->f:Lyk6;

    iget-object p2, p2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lxk6;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Lcom/google/android/exoplayer2/j;->a1(ZZ)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p2, p1}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    return-void
.end method

.method public final B0(Lcom/google/android/exoplayer2/u;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->C0(Lcom/google/android/exoplayer2/u;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/j$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/j$d;-><init>(Lcom/google/android/exoplayer2/u;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/j$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/j$d;-><init>(Lcom/google/android/exoplayer2/u;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v3, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget v4, p0, Lcom/google/android/exoplayer2/j;->F:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/j;->G:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    move-object v1, v0

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->q0(Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;IZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/u;->k(Z)V

    :goto_0
    return-void
.end method

.method public final C(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lwk6;->f:Lyk6;

    iget-object v1, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v2, Lb88;->k:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v2, v1}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v3, v1}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lb88;->r:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lwk6;->i()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lb88;->p:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->y()J

    move-result-wide v3

    iput-wide v3, v1, Lb88;->q:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lwk6;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lwk6;->n()Leva;

    move-result-object p1

    invoke-virtual {v0}, Lwk6;->o()Lsva;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->d1(Leva;Lsva;)V

    :cond_4
    return-void
.end method

.method public final C0(Lcom/google/android/exoplayer2/u;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->c()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->k:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->j(Lcom/google/android/exoplayer2/u;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget p1, p1, Lb88;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    invoke-interface {p0, v1}, Lxn4;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0xf

    invoke-interface {p0, v0, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final D(Lcom/google/android/exoplayer2/a0;Z)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v3, v11, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    iget-object v4, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget v5, v11, Lcom/google/android/exoplayer2/j;->F:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/j;->G:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v8, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/j;->s0(Lcom/google/android/exoplayer2/a0;Lb88;Lcom/google/android/exoplayer2/j$h;Lcom/google/android/exoplayer2/p;IZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/j$g;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/exoplayer2/j$g;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v9, v7, Lcom/google/android/exoplayer2/j$g;->c:J

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/j$g;->d:Z

    iget-wide v13, v7, Lcom/google/android/exoplayer2/j$g;->b:J

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v1, v8}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v1, v1, Lb88;->r:J

    cmp-long v1, v13, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v15

    :goto_1
    const/4 v6, 0x0

    const/16 v17, 0x3

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/j$g;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v1, v1, Lb88;->e:I

    if-eq v1, v15, :cond_2

    invoke-virtual {v11, v4}, Lcom/google/android/exoplayer2/j;->S0(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    goto/16 :goto_8

    :cond_2
    :goto_2
    invoke-virtual {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/j;->m0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v16, :cond_4

    :try_start_1
    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-wide v3, v11, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->v()J

    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    move v15, v5

    move-wide/from16 v5, v21

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/p;->F(Lcom/google/android/exoplayer2/a0;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/j;->x0(Z)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move v15, v5

    const/16 v20, 0x4

    goto :goto_3

    :catchall_3
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    goto :goto_3

    :cond_4
    move/from16 v20, v4

    move v15, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_6

    iget-object v2, v1, Lwk6;->f:Lyk6;

    iget-object v2, v2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v2, v8}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v3, v1, Lwk6;->f:Lyk6;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/p;->r(Lcom/google/android/exoplayer2/a0;Lyk6;)Lyk6;

    move-result-object v2

    iput-object v2, v1, Lwk6;->f:Lyk6;

    invoke-virtual {v1}, Lwk6;->A()V

    :cond_5
    invoke-virtual {v1}, Lwk6;->j()Lwk6;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/j;->z0(Lcom/google/android/exoplayer2/source/i$b;JZ)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v13, v0

    :cond_7
    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v5, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/j$g;->f:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_6

    :cond_8
    move-wide/from16 v6, v18

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->g1(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)V

    if-nez v16, :cond_9

    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v0, v0, Lb88;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, v1, Lxk6;->a:Ljava/lang/Object;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/a0$b;->g:Z

    if-nez v0, :cond_a

    const/16 v23, 0x1

    goto :goto_7

    :cond_a
    move/from16 v23, v15

    :goto_7
    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v5, v0, Lb88;->d:J

    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v17, v20

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->n0()V

    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v11, v12, v0}, Lcom/google/android/exoplayer2/j;->r0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)V

    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0, v12}, Lb88;->i(Lcom/google/android/exoplayer2/a0;)Lb88;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    iput-object v6, v11, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    :cond_d
    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/j;->C(Z)V

    return-void

    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v5, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/j$g;->f:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->g1(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)V

    if-nez v16, :cond_f

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v1, v1, Lb88;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_12

    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/a0$b;->g:Z

    if-nez v1, :cond_10

    const/16 v23, 0x1

    goto :goto_9

    :cond_10
    const/16 v23, 0x0

    :goto_9
    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v5, v1, Lb88;->d:J

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    move/from16 v17, v20

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->n0()V

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v11, v12, v1}, Lcom/google/android/exoplayer2/j;->r0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v1, v12}, Lb88;->i(Lcom/google/android/exoplayer2/a0;)Lb88;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v15, v11, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/j;->C(Z)V

    throw v0
.end method

.method public final D0(Lcom/google/android/exoplayer2/u;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->c()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/u;->k(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ley0;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;

    move-result-object v0

    new-instance v1, Lni3;

    invoke-direct {v1, p0, p1}, Lni3;-><init>(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/u;)V

    invoke-interface {v0, v1}, Lxn4;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final E(Lcom/google/android/exoplayer2/source/h;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p;->v(Lcom/google/android/exoplayer2/source/h;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/s;->b:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p1, v0, v1}, Lwk6;->p(FLcom/google/android/exoplayer2/a0;)V

    invoke-virtual {p1}, Lwk6;->n()Leva;

    move-result-object v0

    invoke-virtual {p1}, Lwk6;->o()Lsva;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->d1(Leva;Lsva;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p1, Lwk6;->f:Lyk6;

    iget-wide v0, v0, Lyk6;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->o0(J)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p1, p1, Lwk6;->f:Lyk6;

    iget-wide v7, p1, Lyk6;->b:J

    iget-wide v5, v0, Lb88;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->R()V

    return-void
.end method

.method public final E0(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/j;->F0(Lcom/google/android/exoplayer2/w;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final F(Lcom/google/android/exoplayer2/s;FZZ)V
    .locals 2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p3, p1}, Lb88;->f(Lcom/google/android/exoplayer2/s;)Lb88;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/s;->b:F

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/j;->h1(F)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length p3, p0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object v0, p0, p4

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/google/android/exoplayer2/s;->b:F

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/w;->setPlaybackSpeed(FF)V

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final F0(Lcom/google/android/exoplayer2/w;J)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->setCurrentStreamFinal()V

    instance-of p0, p1, Llha;

    if-eqz p0, :cond_0

    check-cast p1, Llha;

    invoke-virtual {p1, p2, p3}, Llha;->F(J)V

    :cond_0
    return-void
.end method

.method public final G(Lcom/google/android/exoplayer2/s;Z)V
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/s;->b:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/j;->F(Lcom/google/android/exoplayer2/s;FZZ)V

    return-void
.end method

.method public final G0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->H:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j;->H:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/w;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v4, p4

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/j;->O:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v2, v2, Lb88;->r:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, v2}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/j;->O:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n0()V

    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v3, v2, Lb88;->h:Leva;

    iget-object v6, v2, Lb88;->i:Lsva;

    iget-object v2, v2, Lb88;->j:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/q;->s()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v3, Leva;->e:Leva;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lwk6;->n()Leva;

    move-result-object v3

    :goto_2
    if-nez v2, :cond_3

    iget-object v6, v0, Lcom/google/android/exoplayer2/j;->f:Lsva;

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lwk6;->o()Lsva;

    move-result-object v6

    :goto_3
    iget-object v7, v6, Lsva;->c:[Lqi3;

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/j;->r([Lqi3;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v2, :cond_4

    iget-object v8, v2, Lwk6;->f:Lyk6;

    iget-wide v9, v8, Lyk6;->c:J

    cmp-long v9, v9, v4

    if-eqz v9, :cond_4

    invoke-virtual {v8, v4, v5}, Lyk6;->a(J)Lyk6;

    move-result-object v8

    iput-object v8, v2, Lwk6;->f:Lyk6;

    :cond_4
    move-object v10, v3

    move-object v11, v6

    move-object v12, v7

    goto :goto_4

    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v7, v7, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, v7}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v2, Leva;->e:Leva;

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->f:Lsva;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    goto :goto_4

    :cond_6
    move-object v12, v2

    move-object v10, v3

    move-object v11, v6

    :goto_4
    if-eqz p8, :cond_7

    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j$e;->e(I)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->y()J

    move-result-wide v8

    move-object v0, v2

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Lb88;->c(Lcom/google/android/exoplayer2/source/i$b;JJJJLeva;Lsva;Ljava/util/List;)Lb88;

    move-result-object v0

    return-object v0
.end method

.method public final H0(Lcom/google/android/exoplayer2/j$b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->a(Lcom/google/android/exoplayer2/j$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/j$h;

    new-instance v1, Lzb8;

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->b(Lcom/google/android/exoplayer2/j$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->c(Lcom/google/android/exoplayer2/j$b;)Lmi9;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lzb8;-><init>(Ljava/util/Collection;Lmi9;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->a(Lcom/google/android/exoplayer2/j$b;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->d(Lcom/google/android/exoplayer2/j$b;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/j$h;-><init>(Lcom/google/android/exoplayer2/a0;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->b(Lcom/google/android/exoplayer2/j$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->c(Lcom/google/android/exoplayer2/j$b;)Lmi9;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/q;->B(Ljava/util/List;Lmi9;)Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->D(Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public final I(Lcom/google/android/exoplayer2/w;Lwk6;)Z
    .locals 2

    invoke-virtual {p2}, Lwk6;->j()Lwk6;

    move-result-object p0

    iget-object p2, p2, Lwk6;->f:Lyk6;

    iget-boolean p2, p2, Lyk6;->f:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lwk6;->d:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Llha;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/a;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {p0}, Lwk6;->m()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public I0(Ljava/util/List;IJLmi9;)V
    .locals 8

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    new-instance v7, Lcom/google/android/exoplayer2/j$b;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/j$b;-><init>(Ljava/util/List;Lmi9;IJLcom/google/android/exoplayer2/j$a;)V

    const/16 p1, 0x11

    invoke-interface {p0, p1, v7}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public final J()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    iget-boolean v1, v0, Lwk6;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    iget-object v4, v0, Lwk6;->c:[Lh19;

    aget-object v4, v4, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/j;->I(Lcom/google/android/exoplayer2/w;Lwk6;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final J0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->J:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j;->J:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean p1, p1, Lb88;->o:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lxn4;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final K0(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j;->B:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n0()V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/j;->C:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->x0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->C(Z)V

    :cond_0
    return-void
.end method

.method public final L()Z
    .locals 5

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lwk6;->k()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public L0(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2}, Lxn4;->obtainMessage(III)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public final M0(ZIZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/j$e;->c(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p3, p1, p2}, Lb88;->d(ZI)Lb88;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/j;->D:Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->b0(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->b1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->f1()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget p1, p1, Lb88;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->Y0()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    invoke-interface {p0, p3}, Lxn4;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    invoke-interface {p0, p3}, Lxn4;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final N()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    iget-object v1, v0, Lwk6;->f:Lyk6;

    iget-wide v1, v1, Lyk6;->e:J

    iget-boolean v0, v0, Lwk6;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v3, v0, Lb88;->r:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final N0(Lcom/google/android/exoplayer2/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/s;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->G(Lcom/google/android/exoplayer2/s;Z)V

    return-void
.end method

.method public final O0(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/exoplayer2/j;->F:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/p;->G(Lcom/google/android/exoplayer2/a0;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->x0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->C(Z)V

    return-void
.end method

.method public final synthetic P()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/j;->A:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final P0(Lka9;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->x:Lka9;

    return-void
.end method

.method public final synthetic Q(Lcom/google/android/exoplayer2/u;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->j(Lcom/google/android/exoplayer2/u;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    invoke-static {p1, v0, p0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final Q0(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j;->G:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/p;->H(Lcom/google/android/exoplayer2/a0;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->x0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->C(Z)V

    return-void
.end method

.method public final R()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->U0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v1, v2}, Lwk6;->d(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->c1()V

    return-void
.end method

.method public final R0(Lmi9;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/q;->C(Lmi9;)Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->D(Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->d(Lb88;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/j$e;->a(Lcom/google/android/exoplayer2/j$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->s:Lcom/google/android/exoplayer2/j$f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/j$f;->a(Lcom/google/android/exoplayer2/j$e;)V

    new-instance v0, Lcom/google/android/exoplayer2/j$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j$e;-><init>(Lb88;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    :cond_0
    return-void
.end method

.method public final S0(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v1, v0, Lb88;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/j;->R:J

    :cond_0
    invoke-virtual {v0, p1}, Lb88;->g(I)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_1
    return-void
.end method

.method public final T(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->O:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->O:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/j;->N:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/j$d;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_5

    iget v4, v3, Lcom/google/android/exoplayer2/j$d;->c:I

    if-gt v4, v0, :cond_3

    if-ne v4, v0, :cond_5

    iget-wide v3, v3, Lcom/google/android/exoplayer2/j$d;->d:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_5

    :cond_3
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/j$d;

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/j$d;

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    if-eqz v4, :cond_8

    iget v4, v3, Lcom/google/android/exoplayer2/j$d;->c:I

    if-lt v4, v0, :cond_7

    if-ne v4, v0, :cond_8

    iget-wide v4, v3, Lcom/google/android/exoplayer2/j$d;->d:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/j$d;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    iget-object v4, v3, Lcom/google/android/exoplayer2/j$d;->e:Ljava/lang/Object;

    if-eqz v4, :cond_e

    iget v4, v3, Lcom/google/android/exoplayer2/j$d;->c:I

    if-ne v4, v0, :cond_e

    iget-wide v4, v3, Lcom/google/android/exoplayer2/j$d;->d:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_e

    cmp-long v4, v4, p3

    if-gtz v4, :cond_e

    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j;->C0(Lcom/google/android/exoplayer2/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/u;->b()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v3, v3, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/j$d;

    goto :goto_3

    :cond_b
    move-object v3, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object p2, v3, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/u;->b()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v3, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    throw p1

    :cond_e
    iput v1, p0, Lcom/google/android/exoplayer2/j;->N:I

    :cond_f
    :goto_6
    return-void
.end method

.method public final T0()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->C:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0}, Lwk6;->m()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    iget-boolean p0, v0, Lwk6;->g:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final U()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/p;->y(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p;->o(JLb88;)Lyk6;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->d:[Lks8;

    iget-object v6, p0, Lcom/google/android/exoplayer2/j;->e:Lrva;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    invoke-interface {v1}, Lgn5;->getAllocator()Lcb;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    iget-object v10, p0, Lcom/google/android/exoplayer2/j;->f:Lsva;

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/p;->g([Lks8;Lrva;Lcb;Lcom/google/android/exoplayer2/q;Lyk6;Lsva;)Lwk6;

    move-result-object v1

    iget-object v2, v1, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    iget-wide v3, v0, Lyk6;->b:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/h;->g(Lcom/google/android/exoplayer2/source/h$a;J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-wide v0, v0, Lyk6;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->o0(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->C(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->E:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->L()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->E:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->c1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->R()V

    :goto_0
    return-void
.end method

.method public final U0()Z
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    invoke-virtual {v0}, Lwk6;->k()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/j;->z(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v1, v2}, Lwk6;->y(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v1, v2}, Lwk6;->y(J)J

    move-result-wide v1

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-wide v3, v0, Lyk6;->b:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p0

    iget v8, p0, Lcom/google/android/exoplayer2/s;->b:F

    invoke-interface/range {v3 .. v8}, Lgn5;->shouldContinueLoading(JJF)Z

    move-result p0

    return p0
.end method

.method public final V()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->T0()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->S()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->b()Lwk6;

    move-result-object v1

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk6;

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, v1, Lwk6;->f:Lyk6;

    iget-object v3, v3, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v3, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget v4, v2, Lxk6;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lwk6;->f:Lyk6;

    iget-object v4, v4, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget v6, v4, Lxk6;->b:I

    if-ne v6, v5, :cond_1

    iget v2, v2, Lxk6;->e:I

    iget v4, v4, Lxk6;->e:I

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v1, v1, Lwk6;->f:Lyk6;

    iget-object v5, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v10, v1, Lyk6;->b:J

    iget-wide v8, v1, Lyk6;->c:J

    xor-int/lit8 v12, v2, 0x1

    const/4 v13, 0x0

    move-object v4, p0

    move-wide v6, v10

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n0()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->f1()V

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final V0()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v0, p0, Lb88;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lb88;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final W()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/j;->C:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->J()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v1

    iget-boolean v1, v1, Lwk6;->d:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v1

    invoke-virtual {v1}, Lwk6;->m()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lwk6;->o()Lsva;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/p;->c()Lwk6;

    move-result-object v5

    invoke-virtual {v5}, Lwk6;->o()Lsva;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v11, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v7, v5, Lwk6;->f:Lyk6;

    iget-object v10, v7, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-object v12, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    move-object v9, v11

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/exoplayer2/j;->g1(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)V

    iget-boolean v0, v5, Lwk6;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->readDiscontinuity()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lwk6;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->E0(J)V

    return-void

    :cond_4
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    invoke-virtual {v1, v0}, Lsva;->c(I)Z

    move-result v3

    invoke-virtual {v6, v0}, Lsva;->c(I)Z

    move-result v4

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w;->isCurrentStreamFinal()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->d:[Lks8;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lks8;->getTrackType()I

    move-result v3

    const/4 v7, -0x2

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    iget-object v7, v1, Lsva;->b:[Lls8;

    aget-object v7, v7, v0

    iget-object v8, v6, Lsva;->b:[Lls8;

    aget-object v8, v8, v0

    if-eqz v4, :cond_6

    invoke-virtual {v8, v7}, Lls8;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v3, v3, v0

    invoke-virtual {v5}, Lwk6;->m()J

    move-result-wide v7

    invoke-virtual {p0, v3, v7, v8}, Lcom/google/android/exoplayer2/j;->F0(Lcom/google/android/exoplayer2/w;J)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_2
    iget-object v1, v0, Lwk6;->f:Lyk6;

    iget-boolean v1, v1, Lyk6;->i:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/j;->C:Z

    if-eqz v1, :cond_d

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v5, v1

    if-ge v2, v5, :cond_d

    aget-object v1, v1, v2

    iget-object v5, v0, Lwk6;->c:[Lh19;

    aget-object v5, v5, v2

    if-eqz v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v6

    if-ne v6, v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lwk6;->f:Lyk6;

    iget-wide v5, v5, Lyk6;->e:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lwk6;->l()J

    move-result-wide v5

    iget-object v7, v0, Lwk6;->f:Lyk6;

    iget-wide v7, v7, Lyk6;->e:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v3

    :goto_4
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/j;->F0(Lcom/google/android/exoplayer2/w;J)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public final W0(Z)Z
    .locals 12

    iget v0, p0, Lcom/google/android/exoplayer2/j;->K:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->N()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v1, p1, Lb88;->g:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    iget-object v1, v1, Lwk6;->f:Lyk6;

    iget-object v1, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/j;->X0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/m;->getTargetLiveOffsetUs()J

    move-result-wide v3

    :goto_0
    move-wide v10, v3

    goto :goto_1

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object p1

    invoke-virtual {p1}, Lwk6;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lwk6;->f:Lyk6;

    iget-boolean v1, v1, Lyk6;->i:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iget-object v3, p1, Lwk6;->f:Lyk6;

    iget-object v3, v3, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lwk6;->d:Z

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->y()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p1

    iget v8, p1, Lcom/google/android/exoplayer2/s;->b:F

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/j;->D:Z

    invoke-interface/range {v5 .. v11}, Lgn5;->shouldStartPlayback(JFZJ)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lwk6;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->k0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final X0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z
    .locals 4

    invoke-virtual {p2}, Lxk6;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/a0$d;->j:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lcom/google/android/exoplayer2/a0$d;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->i()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->D(Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public final Y0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->D:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g;->f()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/w;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Z(Lcom/google/android/exoplayer2/j$c;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public Z0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lxn4;->obtainMessage(I)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/u;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p1

    invoke-interface {p1}, Lxn4$a;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/u;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a0()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lwk6;->o()Lsva;

    move-result-object v0

    iget-object v0, v0, Lsva;->c:[Lqi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lqi3;->onDiscontinuity()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lwk6;->j()Lwk6;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a1(ZZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/j;->H:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/google/android/exoplayer2/j;->m0(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    invoke-interface {p1}, Lgn5;->onStopped()V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->S0(I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/source/q;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->d0(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public final b0(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lwk6;->o()Lsva;

    move-result-object v0

    iget-object v0, v0, Lsva;->c:[Lqi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lqi3;->onPlayWhenReadyChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lwk6;->j()Lwk6;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b1()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->g()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j;->p(Lcom/google/android/exoplayer2/w;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c0()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lwk6;->o()Lsva;

    move-result-object v0

    iget-object v0, v0, Lsva;->c:[Lqi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lqi3;->onRebuffer()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lwk6;->j()Lwk6;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/j;->E:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v2, v1, Lb88;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lb88;->a(Z)Lb88;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_2
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/source/h;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public d0(Lcom/google/android/exoplayer2/source/h;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public final d1(Leva;Lsva;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    iget-object p2, p2, Lsva;->c:[Lqi3;

    invoke-interface {v0, p0, p1, p2}, Lgn5;->a([Lcom/google/android/exoplayer2/w;Leva;[Lqi3;)V

    return-void
.end method

.method public e0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lxn4;->obtainMessage(I)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public final e1()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->U()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->W()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->X()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->V()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/j;->m0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    invoke-interface {v0}, Lgn5;->onPrepared()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->S0(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->h:Lo70;

    invoke-interface {v2}, Lo70;->getTransferListener()Lu5b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/q;->v(Lu5b;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    invoke-interface {p0, v1}, Lxn4;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final f1()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lwk6;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/h;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer2/j;->o0(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v0, v0, Lb88;->r:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v4, v0, Lb88;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/g;->h(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v1, v2}, Lwk6;->y(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v2, v2, Lb88;->r:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/j;->T(JJ)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iput-wide v0, v2, Lb88;->r:J

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0}, Lwk6;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lb88;->p:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->y()J

    move-result-wide v1

    iput-wide v1, v0, Lb88;->q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v1, v0, Lb88;->l:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lb88;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/j;->X0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->n:Lcom/google/android/exoplayer2/s;

    iget v0, v0, Lcom/google/android/exoplayer2/s;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->s()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->y()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/m;->getAdjustedPlaybackSpeed(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/s;->b:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v2, v2, Lb88;->n:Lcom/google/android/exoplayer2/s;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/s;->e(F)Lcom/google/android/exoplayer2/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/s;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->n:Lcom/google/android/exoplayer2/s;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/s;->b:F

    invoke-virtual {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/j;->F(Lcom/google/android/exoplayer2/s;FZZ)V

    :cond_5
    return-void
.end method

.method public declared-synchronized g0()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lxn4;->sendEmptyMessage(I)Z

    new-instance v0, Lmi3;

    invoke-direct {v0, p0}, Lmi3;-><init>(Lcom/google/android/exoplayer2/j;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->w:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/j;->i1(Lw6a;J)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g1(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/j;->X0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lxk6;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/s;->e:Lcom/google/android/exoplayer2/s;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object p1, p1, Lb88;->n:Lcom/google/android/exoplayer2/s;

    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/s;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/s;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Lxk6;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/a0$d;->l:Lcom/google/android/exoplayer2/n$g;

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/n$g;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/n$g;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    iget-object p3, p0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/j;->u(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/m;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p4, Lxk6;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object p4, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/m;->setTargetLiveOffsetOverrideUs(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final h(Lcom/google/android/exoplayer2/j$b;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->q()I

    move-result p2

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->b(Lcom/google/android/exoplayer2/j$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/j$b;->c(Lcom/google/android/exoplayer2/j$b;)Lmi9;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/q;->f(ILjava/util/List;Lmi9;)Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/j;->D(Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public final h0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/j;->m0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->g:Lgn5;

    invoke-interface {v0}, Lgn5;->onReleased()V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j;->S0(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/j;->A:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h1(F)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lwk6;->o()Lsva;

    move-result-object v0

    iget-object v0, v0, Lsva;->c:[Lqi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lqi3;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lwk6;->j()Lwk6;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->i()V

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    goto/16 :goto_8

    :catch_4
    move-exception p1

    goto/16 :goto_9

    :catch_5
    move-exception p1

    goto/16 :goto_c

    :catch_6
    move-exception p1

    goto/16 :goto_d

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->J0(Z)V

    goto/16 :goto_e

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->K0(Z)V

    goto/16 :goto_e

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->Y()V

    goto/16 :goto_e

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmi9;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->R0(Lmi9;)V

    goto/16 :goto_e

    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmi9;

    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/j;->i0(IILmi9;)V

    goto/16 :goto_e

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->Z(Lcom/google/android/exoplayer2/j$c;)V

    goto/16 :goto_e

    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/j$b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1}, Lcom/google/android/exoplayer2/j;->h(Lcom/google/android/exoplayer2/j$b;I)V

    goto/16 :goto_e

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/j$b;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->H0(Lcom/google/android/exoplayer2/j$b;)V

    goto/16 :goto_e

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/s;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/j;->G(Lcom/google/android/exoplayer2/s;Z)V

    goto/16 :goto_e

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/u;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->D0(Lcom/google/android/exoplayer2/u;)V

    goto/16 :goto_e

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/u;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->B0(Lcom/google/android/exoplayer2/u;)V

    goto/16 :goto_e

    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5, p1}, Lcom/google/android/exoplayer2/j;->G0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_e

    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->Q0(Z)V

    goto/16 :goto_e

    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->O0(I)V

    goto/16 :goto_e

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->l0()V

    goto/16 :goto_e

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->A(Lcom/google/android/exoplayer2/source/h;)V

    goto/16 :goto_e

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->E(Lcom/google/android/exoplayer2/source/h;)V

    goto/16 :goto_e

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->h0()V

    return v4

    :pswitch_13
    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/j;->a1(ZZ)V

    goto/16 :goto_e

    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lka9;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->P0(Lka9;)V

    goto/16 :goto_e

    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/s;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->N0(Lcom/google/android/exoplayer2/s;)V

    goto/16 :goto_e

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/j$h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->y0(Lcom/google/android/exoplayer2/j$h;)V

    goto/16 :goto_e

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->l()V

    goto/16 :goto_e

    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/j;->M0(ZIZI)V

    goto/16 :goto_e

    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->f0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :goto_5
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/j;->a1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0, p1}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    goto/16 :goto_e

    :goto_6
    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->B(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_7
    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->B(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_8
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->B(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_9
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v0, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    :goto_a
    move v2, v0

    goto :goto_b

    :cond_7
    const/16 v0, 0xbbb

    goto :goto_a

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    goto :goto_a

    :cond_9
    const/16 v0, 0xbbc

    goto :goto_a

    :cond_a
    :goto_b
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/j;->B(Ljava/io/IOException;I)V

    goto :goto_e

    :goto_c
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/j;->B(Ljava/io/IOException;I)V

    goto :goto_e

    :goto_d
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v2, Lwk6;->f:Lyk6;

    iget-object v2, v2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lxk6;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    invoke-static {v1, v0, p1}, Lop5;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lxn4;->a(Lxn4$a;)Z

    goto :goto_e

    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :cond_d
    invoke-static {v1, v0, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/j;->a1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    invoke-virtual {v0, p1}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->S()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->x0(Z)V

    return-void
.end method

.method public final i0(IILmi9;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/q;->z(IILmi9;)Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/j;->D(Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public final declared-synchronized i1(Lw6a;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {v0}, Ley0;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {v3}, Ley0;->onThreadBlocked()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {p2}, Ley0;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final j(Lcom/google/android/exoplayer2/u;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->g()Lcom/google/android/exoplayer2/u$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/u$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/u;->k(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/u;->k(Z)V

    throw v0
.end method

.method public j0(IILmi9;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0x14

    invoke-interface {p0, v0, p1, p2, p3}, Lxn4;->obtainMessage(IIILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public final k(Lcom/google/android/exoplayer2/w;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/w;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/j;->p(Lcom/google/android/exoplayer2/w;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->disable()V

    iget p1, p0, Lcom/google/android/exoplayer2/j;->K:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/j;->K:I

    return-void
.end method

.method public final k0()Z
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    invoke-virtual {v0}, Lwk6;->o()Lsva;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    aget-object v8, v5, v3

    invoke-static {v8}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v5

    iget-object v6, v0, Lwk6;->c:[Lh19;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v3}, Lsva;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/w;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lsva;->c:[Lqi3;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/j;->t(Lqi3;)[Lcom/google/android/exoplayer2/k;

    move-result-object v9

    iget-object v5, v0, Lwk6;->c:[Lh19;

    aget-object v10, v5, v3

    invoke-virtual {v0}, Lwk6;->m()J

    move-result-wide v11

    invoke-virtual {v0}, Lwk6;->l()J

    move-result-wide v13

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/w;->c([Lcom/google/android/exoplayer2/k;Lh19;JJ)V

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/w;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/w;)V

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public final l()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {v1}, Ley0;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lxn4;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->e1()V

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v3, v3, Lb88;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/j;->v0(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    invoke-static {v9}, Lsua;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->f1()V

    iget-boolean v9, v3, Lwk6;->d:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v10

    iget-object v9, v3, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    iget-object v15, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v7, v15, Lb88;->r:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/j;->n:J

    sub-long/2addr v7, v10

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/j;->o:Z

    invoke-interface {v9, v7, v8, v10}, Lcom/google/android/exoplayer2/source/h;->discardBuffer(JZ)V

    move v8, v5

    move v9, v8

    move v7, v12

    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/w;->render(JJ)V

    if-eqz v8, :cond_3

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v12

    :goto_1
    iget-object v4, v3, Lwk6;->c:[Lh19;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    if-nez v4, :cond_5

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v12

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->isReady()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v12

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move v9, v12

    :goto_6
    if-nez v4, :cond_9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/w;->maybeThrowStreamError()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    iget-object v4, v3, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/h;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_b
    iget-object v4, v3, Lwk6;->f:Lyk6;

    iget-wide v4, v4, Lyk6;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_d

    iget-boolean v7, v3, Lwk6;->d:Z

    if-eqz v7, :cond_d

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v7, v7, Lb88;->r:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    move v4, v12

    :goto_8
    if-eqz v4, :cond_e

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/j;->C:Z

    if-eqz v5, :cond_e

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/j;->C:Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v5, v5, Lb88;->m:I

    const/4 v7, 0x5

    invoke-virtual {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/j;->M0(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    iget-object v4, v3, Lwk6;->f:Lyk6;

    iget-boolean v4, v4, Lyk6;->i:Z

    if-eqz v4, :cond_f

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j;->S0(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->b1()V

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v4, v4, Lb88;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/j;->W0(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j;->S0(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->Y0()V

    goto :goto_9

    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v4, v4, Lb88;->e:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/google/android/exoplayer2/j;->K:I

    if-nez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->N()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/j;->D:Z

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j;->S0(I)V

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/j;->D:Z

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->c0()V

    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->v:Lcom/google/android/exoplayer2/m;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/m;->notifyRebuffer()V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->b1()V

    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v4, v4, Lb88;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_19

    move v4, v12

    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v7

    iget-object v8, v3, Lwk6;->c:[Lh19;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/w;->maybeThrowStreamError()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v4, v3, Lb88;->g:Z

    if-nez v4, :cond_19

    iget-wide v3, v3, Lb88;->q:J

    const-wide/32 v7, 0x7a120

    cmp-long v3, v3, v7

    if-gez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->L()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-wide v3, v0, Lcom/google/android/exoplayer2/j;->R:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {v3}, Ley0;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/j;->R:J

    goto :goto_b

    :cond_17
    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->r:Ley0;

    invoke-interface {v3}, Ley0;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/j;->R:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v3, v3, v7

    if-gez v3, :cond_18

    goto :goto_b

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iput-wide v13, v0, Lcom/google/android/exoplayer2/j;->R:J

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v3, v3, Lb88;->e:I

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x1

    goto :goto_c

    :cond_1a
    move v3, v12

    :goto_c
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/j;->J:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/j;->I:Z

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    const/4 v15, 0x1

    goto :goto_d

    :cond_1b
    move v15, v12

    :goto_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v7, v4, Lb88;->o:Z

    if-eq v7, v15, :cond_1c

    invoke-virtual {v4, v15}, Lb88;->h(Z)Lb88;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_1c
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/j;->I:Z

    if-nez v15, :cond_21

    iget-object v4, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v4, v4, Lb88;->e:I

    if-ne v4, v6, :cond_1d

    goto :goto_10

    :cond_1d
    if-nez v3, :cond_1e

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1f

    :cond_1e
    const-wide/16 v3, 0xa

    goto :goto_e

    :cond_1f
    if-ne v4, v5, :cond_20

    iget v3, v0, Lcom/google/android/exoplayer2/j;->K:I

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/j;->v0(JJ)V

    goto :goto_f

    :goto_e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/j;->v0(JJ)V

    :cond_20
    :goto_f
    invoke-static {}, Lsua;->c()V

    :cond_21
    :goto_10
    return-void
.end method

.method public final l0()V
    .locals 19

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/s;->b:F

    iget-object v1, v10, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v4, v1, Lwk6;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v4, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v1, v0, v4}, Lwk6;->v(FLcom/google/android/exoplayer2/a0;)Lsva;

    move-result-object v13

    invoke-virtual {v1}, Lwk6;->o()Lsva;

    move-result-object v4

    invoke-virtual {v13, v4}, Lsva;->a(Lsva;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_7

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v6

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    move-result v16

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v0, v0

    new-array v7, v0, [Z

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v14, v0, Lb88;->r:J

    move-object v12, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lwk6;->b(Lsva;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v1, v0, Lb88;->e:I

    if-eq v1, v8, :cond_1

    iget-wide v0, v0, Lb88;->r:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v9

    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v4, v0, Lb88;->c:J

    iget-wide v2, v0, Lb88;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    if-eqz v14, :cond_2

    invoke-virtual {v10, v12, v13}, Lcom/google/android/exoplayer2/j;->o0(J)V

    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v2

    aput-boolean v2, v0, v9

    iget-object v3, v11, Lwk6;->c:[Lh19;

    aget-object v3, v3, v9

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v2

    if-eq v3, v2, :cond_3

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/w;)V

    goto :goto_3

    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    iget-wide v2, v10, Lcom/google/android/exoplayer2/j;->M:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/w;->resetPosition(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/j;->o([Z)V

    :cond_6
    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    iget-boolean v0, v1, Lwk6;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lwk6;->f:Lyk6;

    iget-wide v2, v0, Lyk6;->b:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v1, v4, v5}, Lwk6;->y(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v2, v3, v4}, Lwk6;->a(Lsva;JZ)J

    goto :goto_4

    :goto_5
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/j;->C(Z)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v0, v0, Lb88;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->R()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->f1()V

    iget-object v0, v10, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lxn4;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    move v4, v9

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {v1}, Lwk6;->j()Lwk6;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-void
.end method

.method public final m(IZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    invoke-virtual {v2}, Lwk6;->o()Lsva;

    move-result-object v3

    iget-object v6, v3, Lsva;->b:[Lls8;

    aget-object v6, v6, p1

    iget-object v3, v3, Lsva;->c:[Lqi3;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/google/android/exoplayer2/j;->t(Lqi3;)[Lcom/google/android/exoplayer2/k;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/j;->V0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v3, v3, Lb88;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/j;->K:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/j;->K:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/j;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lwk6;->c:[Lh19;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v2}, Lwk6;->m()J

    move-result-wide v12

    invoke-virtual {v2}, Lwk6;->l()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/w;->e(Lls8;[Lcom/google/android/exoplayer2/k;Lh19;JZZJJ)V

    new-instance v2, Lcom/google/android/exoplayer2/j$a;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/j$a;-><init>(Lcom/google/android/exoplayer2/j;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/u$b;->handleMessage(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/w;)V

    if-eqz v14, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w;->start()V

    :cond_4
    return-void
.end method

.method public final m0(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lxn4;->removeMessages(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/exoplayer2/j;->P:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/j;->D:Z

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g;->g()V

    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Lcom/google/android/exoplayer2/j;->M:J

    iget-object v4, v1, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/w;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, v1, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/j;->c:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/w;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput v3, v1, Lcom/google/android/exoplayer2/j;->K:I

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v5, v0, Lb88;->r:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v7, v1, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/j;->O(Lb88;Lcom/google/android/exoplayer2/a0$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v7, v0, Lb88;->r:J

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v7, v0, Lb88;->c:J

    :goto_5
    if-eqz p2, :cond_5

    iput-object v2, v1, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j;->w(Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v4, v0}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_6
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_7

    :cond_5
    move v0, v3

    goto :goto_6

    :goto_7
    iget-object v4, v1, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p;->f()V

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/j;->E:Z

    new-instance v3, Lb88;

    iget-object v4, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v5, v4, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget v11, v4, Lb88;->e:I

    if-eqz p4, :cond_6

    :goto_8
    move-object v12, v2

    goto :goto_9

    :cond_6
    iget-object v2, v4, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    goto :goto_8

    :goto_9
    if-eqz v0, :cond_7

    sget-object v2, Leva;->e:Leva;

    :goto_a
    move-object v14, v2

    goto :goto_b

    :cond_7
    iget-object v2, v4, Lb88;->h:Leva;

    goto :goto_a

    :goto_b
    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/google/android/exoplayer2/j;->f:Lsva;

    :goto_c
    move-object v15, v2

    goto :goto_d

    :cond_8
    iget-object v2, v4, Lb88;->i:Lsva;

    goto :goto_c

    :goto_d
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_e
    move-object/from16 v16, v0

    goto :goto_f

    :cond_9
    iget-object v0, v4, Lb88;->j:Ljava/util/List;

    goto :goto_e

    :goto_f
    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-boolean v2, v0, Lb88;->l:Z

    move/from16 v18, v2

    iget v2, v0, Lb88;->m:I

    move/from16 v19, v2

    iget-object v0, v0, Lb88;->n:Lcom/google/android/exoplayer2/s;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/4 v13, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v27}, Lb88;-><init>(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLeva;Lsva;Ljava/util/List;Lcom/google/android/exoplayer2/source/i$b;ZILcom/google/android/exoplayer2/s;JJJZ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/j;->y:Lb88;

    if-eqz p3, :cond_a

    iget-object v0, v1, Lcom/google/android/exoplayer2/j;->u:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->x()V

    :cond_a
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j;->o([Z)V

    return-void
.end method

.method public final n0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-boolean v0, v0, Lyk6;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->C:Z

    return-void
.end method

.method public final o([Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    invoke-virtual {v0}, Lwk6;->o()Lsva;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lsva;->c(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->c:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/w;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lsva;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-boolean v3, p1, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/j;->m(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    iput-boolean p0, v0, Lwk6;->g:Z

    return-void
.end method

.method public final o0(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lwk6;->z(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->M:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->p:Lcom/google/android/exoplayer2/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/g;->d(J)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/w;->resetPosition(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j;->a0()V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0x10

    invoke-interface {p0, v0, p1}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Lxn4;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lxn4;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final p(Lcom/google/android/exoplayer2/w;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/w;->stop()V

    :cond_0
    return-void
.end method

.method public q(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->Q:J

    return-void
.end method

.method public final r([Lqi3;)Lcom/google/common/collect/ImmutableList;
    .locals 6

    new-instance p0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lhva;->getFormat(I)Lcom/google/android/exoplayer2/k;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v5, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final r0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/j$d;

    iget v5, p0, Lcom/google/android/exoplayer2/j;->F:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/j;->G:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/j;->q0(Lcom/google/android/exoplayer2/j$d;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;IZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/j$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j$d;->b:Lcom/google/android/exoplayer2/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/u;->k(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->q:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final s()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v2, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    iget-wide v3, v0, Lb88;->r:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/j;->u(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/a0$d;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/a0$d;->j:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->d()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/a0$d;->g:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lblb;->t0(J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final v()J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lwk6;->l()J

    move-result-wide v1

    iget-boolean v3, v0, Lwk6;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/j;->M(Lcom/google/android/exoplayer2/w;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/w;->getStream()Lh19;

    move-result-object v4

    iget-object v5, v0, Lwk6;->c:[Lh19;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->b:[Lcom/google/android/exoplayer2/w;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/w;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final v0(JJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    const/4 v0, 0x2

    add-long/2addr p1, p3

    invoke-interface {p0, v0, p1, p2}, Lxn4;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final w(Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lb88;->k()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->G:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v5, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/p;->B(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lxk6;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget p1, v3, Lxk6;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    iget v4, v3, Lxk6;->b:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$b;->j()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public w0(Lcom/google/android/exoplayer2/a0;IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->i:Lxn4;

    new-instance v0, Lcom/google/android/exoplayer2/j$h;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/j$h;-><init>(Lcom/google/android/exoplayer2/a0;IJ)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0}, Lxn4;->obtainMessage(ILjava/lang/Object;)Lxn4$a;

    move-result-object p0

    invoke-interface {p0}, Lxn4$a;->sendToTarget()V

    return-void
.end method

.method public x()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/j;->k:Landroid/os/Looper;

    return-object p0
.end method

.method public final x0(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-object v0, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v3, v1, Lb88;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/j;->A0(Lcom/google/android/exoplayer2/source/i$b;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v1, v1, Lb88;->r:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v5, v1, Lb88;->c:J

    iget-wide v7, v1, Lb88;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    :cond_0
    return-void
.end method

.method public final y()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v0, v0, Lb88;->p:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/j;->z(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y0(Lcom/google/android/exoplayer2/j$h;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->z:Lcom/google/android/exoplayer2/j$e;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget v4, v11, Lcom/google/android/exoplayer2/j;->F:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/j;->G:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/j;->l:Lcom/google/android/exoplayer2/a0$d;

    iget-object v7, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->t0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/j$h;ZIZLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v7, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v7, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/j;->w(Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v7, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v7, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v16, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v16

    goto/16 :goto_4

    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v9, v0, Lcom/google/android/exoplayer2/j$h;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    :goto_1
    iget-object v14, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    iget-object v15, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v15, v15, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/p;->B(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v7

    invoke-virtual {v7}, Lxk6;->b()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v4, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v5, v7, Lxk6;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v4, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    iget v5, v7, Lxk6;->b:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v4

    iget v5, v7, Lxk6;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v11, Lcom/google/android/exoplayer2/j;->m:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a0$b;->j()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    move-object v9, v7

    move v10, v8

    goto :goto_4

    :cond_3
    iget-wide v14, v0, Lcom/google/android/exoplayer2/j$h;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    move-wide/from16 v16, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v7, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v0, v11, Lcom/google/android/exoplayer2/j;->L:Lcom/google/android/exoplayer2/j$h;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide v7, v4

    goto/16 :goto_a

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v1, v1, Lb88;->e:I

    if-eq v1, v8, :cond_6

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/j;->S0(I)V

    :cond_6
    invoke-virtual {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/j;->m0(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v1, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v9, v1}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v11, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v7, v1, Lwk6;->d:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    iget-object v2, v11, Lcom/google/android/exoplayer2/j;->x:Lka9;

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/h;->c(JLka9;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    :goto_6
    invoke-static {v1, v2}, Lblb;->P0(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-wide v6, v3, Lb88;->r:J

    invoke-static {v6, v7}, Lblb;->P0(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v6, v3, Lb88;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_9
    iget-wide v7, v3, Lb88;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    return-void

    :cond_a
    move-wide v1, v4

    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget v3, v3, Lb88;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/j;->z0(Lcom/google/android/exoplayer2/source/i$b;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    iget-object v4, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v5, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/j;->g1(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    return-void

    :catchall_1
    move-exception v0

    move v10, v8

    move-wide v7, v14

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/j;->H(Lcom/google/android/exoplayer2/source/i$b;JJJZI)Lb88;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/j;->y:Lb88;

    throw v0
.end method

.method public final z(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->j()Lwk6;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/j;->M:J

    invoke-virtual {v0, v3, v4}, Lwk6;->y(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final z0(Lcom/google/android/exoplayer2/source/i$b;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p;->p()Lwk6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j;->t:Lcom/google/android/exoplayer2/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p;->q()Lwk6;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/j;->A0(Lcom/google/android/exoplayer2/source/i$b;JZZ)J

    move-result-wide p0

    return-wide p0
.end method
