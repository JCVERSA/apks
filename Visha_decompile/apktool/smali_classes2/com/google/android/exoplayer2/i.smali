.class public final Lcom/google/android/exoplayer2/i;
.super Lcom/google/android/exoplayer2/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i$b;,
        Lcom/google/android/exoplayer2/i$d;,
        Lcom/google/android/exoplayer2/i$c;,
        Lcom/google/android/exoplayer2/i$e;
    }
.end annotation


# instance fields
.field public final A:Lcom/google/android/exoplayer2/b;

.field public final B:Lcom/google/android/exoplayer2/y;

.field public final C:Logc;

.field public final D:Lamc;

.field public final E:J

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:Z

.field public K:I

.field public L:Lka9;

.field public M:Lmi9;

.field public N:Z

.field public O:Lcom/google/android/exoplayer2/t$b;

.field public P:Lcom/google/android/exoplayer2/o;

.field public Q:Lcom/google/android/exoplayer2/o;

.field public R:Lcom/google/android/exoplayer2/k;

.field public S:Lcom/google/android/exoplayer2/k;

.field public T:Landroid/media/AudioTrack;

.field public U:Ljava/lang/Object;

.field public V:Landroid/view/Surface;

.field public W:Landroid/view/SurfaceHolder;

.field public X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field public Y:Z

.field public Z:Landroid/view/TextureView;

.field public a0:I

.field public final b:Lsva;

.field public b0:I

.field public final c:Lcom/google/android/exoplayer2/t$b;

.field public c0:I

.field public final d:Lle1;

.field public d0:I

.field public final e:Landroid/content/Context;

.field public e0:Lju1;

.field public final f:Lcom/google/android/exoplayer2/t;

.field public f0:Lju1;

.field public final g:[Lcom/google/android/exoplayer2/w;

.field public g0:I

.field public final h:Lrva;

.field public h0:Lcom/google/android/exoplayer2/audio/a;

.field public final i:Lxn4;

.field public i0:F

.field public final j:Lcom/google/android/exoplayer2/j$f;

.field public j0:Z

.field public final k:Lcom/google/android/exoplayer2/j;

.field public k0:Lqm1;

.field public final l:Lom5;

.field public l0:Z

.field public final m:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public m0:Z

.field public final n:Lcom/google/android/exoplayer2/a0$b;

.field public n0:Z

.field public final o:Ljava/util/List;

.field public o0:Z

.field public final p:Z

.field public p0:Lcom/google/android/exoplayer2/h;

.field public final q:Lcom/google/android/exoplayer2/source/i$a;

.field public q0:Lf7c;

.field public final r:Lkb;

.field public r0:Lcom/google/android/exoplayer2/o;

.field public final s:Landroid/os/Looper;

.field public s0:Lb88;

.field public final t:Lo70;

.field public t0:I

.field public final u:J

.field public u0:I

.field public final v:J

.field public v0:J

.field public final w:Ley0;

.field public final x:Lcom/google/android/exoplayer2/i$c;

.field public final y:Lcom/google/android/exoplayer2/i$d;

.field public final z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    invoke-static {v0}, Lpi3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$b;Lcom/google/android/exoplayer2/t;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/c;-><init>()V

    new-instance v7, Lle1;

    invoke-direct {v7}, Lle1;-><init>()V

    iput-object v7, v1, Lcom/google/android/exoplayer2/i;->d:Lle1;

    :try_start_0
    const-string v8, "ExoPlayerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ExoPlayerLib/2.18.1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lblb;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lop5;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/i;->e:Landroid/content/Context;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->i:Lo74;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->b:Ley0;

    invoke-interface {v9, v10}, Lo74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkb;

    iput-object v9, v1, Lcom/google/android/exoplayer2/i;->r:Lkb;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->k:Lcom/google/android/exoplayer2/audio/a;

    iput-object v10, v1, Lcom/google/android/exoplayer2/i;->h0:Lcom/google/android/exoplayer2/audio/a;

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->p:I

    iput v10, v1, Lcom/google/android/exoplayer2/i;->a0:I

    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->q:I

    iput v10, v1, Lcom/google/android/exoplayer2/i;->b0:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->o:Z

    iput-boolean v10, v1, Lcom/google/android/exoplayer2/i;->j0:Z

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->x:J

    iput-wide v10, v1, Lcom/google/android/exoplayer2/i;->E:J

    new-instance v11, Lcom/google/android/exoplayer2/i$c;

    const/4 v10, 0x0

    invoke-direct {v11, v1, v10}, Lcom/google/android/exoplayer2/i$c;-><init>(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/i$a;)V

    iput-object v11, v1, Lcom/google/android/exoplayer2/i;->x:Lcom/google/android/exoplayer2/i$c;

    new-instance v15, Lcom/google/android/exoplayer2/i$d;

    invoke-direct {v15, v10}, Lcom/google/android/exoplayer2/i$d;-><init>(Lcom/google/android/exoplayer2/i$a;)V

    iput-object v15, v1, Lcom/google/android/exoplayer2/i;->y:Lcom/google/android/exoplayer2/i$d;

    new-instance v14, Landroid/os/Handler;

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->j:Landroid/os/Looper;

    invoke-direct {v14, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->d:Lw6a;

    invoke-interface {v12}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lms8;

    move-object v13, v14

    move-object v3, v14

    move-object v14, v11

    move-object/from16 v28, v15

    move-object v15, v11

    move-object/from16 v16, v11

    move-object/from16 v17, v11

    invoke-interface/range {v12 .. v17}, Lms8;->a(Landroid/os/Handler;Lc6c;Lcom/google/android/exoplayer2/audio/b;Lkha;Lfo6;)[Lcom/google/android/exoplayer2/w;

    move-result-object v12

    iput-object v12, v1, Lcom/google/android/exoplayer2/i;->g:[Lcom/google/android/exoplayer2/w;

    array-length v13, v12

    const/4 v15, 0x0

    if-lez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v15

    :goto_0
    invoke-static {v13}, Lzi;->g(Z)V

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->f:Lw6a;

    invoke-interface {v13}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lrva;

    iput-object v14, v1, Lcom/google/android/exoplayer2/i;->h:Lrva;

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->e:Lw6a;

    invoke-interface {v13}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/i$a;

    iput-object v13, v1, Lcom/google/android/exoplayer2/i;->q:Lcom/google/android/exoplayer2/source/i$a;

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->h:Lw6a;

    invoke-interface {v13}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo70;

    iput-object v13, v1, Lcom/google/android/exoplayer2/i;->t:Lo70;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->r:Z

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/i;->p:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->s:Lka9;

    iput-object v4, v1, Lcom/google/android/exoplayer2/i;->L:Lka9;

    move-object/from16 v29, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->t:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/i;->u:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->u:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/i;->v:J

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->y:Z

    iput-boolean v2, v1, Lcom/google/android/exoplayer2/i;->N:Z

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->j:Landroid/os/Looper;

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->s:Landroid/os/Looper;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->b:Ley0;

    iput-object v3, v1, Lcom/google/android/exoplayer2/i;->w:Ley0;

    if-nez p2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    iput-object v4, v1, Lcom/google/android/exoplayer2/i;->f:Lcom/google/android/exoplayer2/t;

    new-instance v5, Lom5;

    new-instance v6, Lph3;

    invoke-direct {v6, v1}, Lph3;-><init>(Lcom/google/android/exoplayer2/i;)V

    invoke-direct {v5, v2, v3, v6}, Lom5;-><init>(Landroid/os/Looper;Ley0;Lom5$b;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v5, v1, Lcom/google/android/exoplayer2/i;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    new-instance v5, Lmi9$a;

    invoke-direct {v5, v15}, Lmi9$a;-><init>(I)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    new-instance v5, Lsva;

    array-length v6, v12

    new-array v6, v6, [Lls8;

    array-length v15, v12

    new-array v15, v15, [Lqi3;

    move-object/from16 v18, v11

    sget-object v11, Lcom/google/android/exoplayer2/b0;->c:Lcom/google/android/exoplayer2/b0;

    invoke-direct {v5, v6, v15, v11, v10}, Lsva;-><init>([Lls8;[Lqi3;Lcom/google/android/exoplayer2/b0;Ljava/lang/Object;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/i;->b:Lsva;

    new-instance v6, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    new-instance v6, Lcom/google/android/exoplayer2/t$b$a;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/t$b$a;-><init>()V

    const/16 v11, 0x15

    new-array v15, v11, [I

    fill-array-data v15, :array_0

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/t$b$a;->c([I)Lcom/google/android/exoplayer2/t$b$a;

    move-result-object v6

    invoke-virtual {v14}, Lrva;->d()Z

    move-result v11

    const/16 v15, 0x1d

    invoke-virtual {v6, v15, v11}, Lcom/google/android/exoplayer2/t$b$a;->d(IZ)Lcom/google/android/exoplayer2/t$b$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/t$b$a;->e()Lcom/google/android/exoplayer2/t$b;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/i;->c:Lcom/google/android/exoplayer2/t$b;

    new-instance v11, Lcom/google/android/exoplayer2/t$b$a;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/t$b$a;-><init>()V

    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/t$b$a;->b(Lcom/google/android/exoplayer2/t$b;)Lcom/google/android/exoplayer2/t$b$a;

    move-result-object v6

    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/t$b$a;->a(I)Lcom/google/android/exoplayer2/t$b$a;

    move-result-object v6

    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/t$b$a;->a(I)Lcom/google/android/exoplayer2/t$b$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/t$b$a;->e()Lcom/google/android/exoplayer2/t$b;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/i;->O:Lcom/google/android/exoplayer2/t$b;

    invoke-interface {v3, v2, v10}, Ley0;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/i;->i:Lxn4;

    new-instance v6, Lqh3;

    invoke-direct {v6, v1}, Lqh3;-><init>(Lcom/google/android/exoplayer2/i;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/i;->j:Lcom/google/android/exoplayer2/j$f;

    invoke-static {v5}, Lb88;->j(Lsva;)Lb88;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-interface {v9, v4, v2}, Lkb;->h(Lcom/google/android/exoplayer2/t;Landroid/os/Looper;)V

    sget v4, Lblb;->a:I

    const/16 v10, 0x1f

    if-ge v4, v10, :cond_2

    new-instance v10, Lta8;

    invoke-direct {v10}, Lta8;-><init>()V

    :goto_2
    move-object/from16 v27, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->z:Z

    invoke-static {v8, v1, v10}, Lcom/google/android/exoplayer2/i$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/i;Z)Lta8;

    move-result-object v10

    goto :goto_2

    :goto_3
    new-instance v10, Lcom/google/android/exoplayer2/j;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->g:Lw6a;

    invoke-interface {v11}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lgn5;

    iget v11, v1, Lcom/google/android/exoplayer2/i;->F:I

    move-object/from16 v30, v7

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/i;->G:Z

    move-object/from16 v31, v8

    iget-object v8, v1, Lcom/google/android/exoplayer2/i;->L:Lka9;

    move/from16 v32, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->v:Lcom/google/android/exoplayer2/m;

    move-object/from16 v33, v2

    move-object/from16 v25, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$b;->w:J

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/i;->N:Z

    move-object/from16 v35, v10

    const/16 v34, 0x0

    move-object/from16 v10, v35

    move-object/from16 v36, v18

    move/from16 v18, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 p2, v13

    move-object v13, v5

    move-object v5, v14

    move-object/from16 v14, v16

    move-object/from16 v37, v5

    const/4 v5, 0x0

    move-object/from16 v15, p2

    move/from16 v16, v18

    move/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-wide/from16 v21, v2

    move/from16 v23, v0

    move-object/from16 v24, v33

    move-object/from16 v26, v6

    invoke-direct/range {v10 .. v27}, Lcom/google/android/exoplayer2/j;-><init>([Lcom/google/android/exoplayer2/w;Lrva;Lsva;Lgn5;Lo70;IZLkb;Lka9;Lcom/google/android/exoplayer2/m;JZLandroid/os/Looper;Ley0;Lcom/google/android/exoplayer2/j$f;Lta8;)V

    move-object/from16 v0, v35

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/google/android/exoplayer2/i;->i0:F

    iput v5, v1, Lcom/google/android/exoplayer2/i;->F:I

    sget-object v2, Lcom/google/android/exoplayer2/o;->H:Lcom/google/android/exoplayer2/o;

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->Q:Lcom/google/android/exoplayer2/o;

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/exoplayer2/i;->t0:I

    move/from16 v2, v32

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/i;->y0(I)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/i;->g0:I

    goto :goto_4

    :cond_3
    invoke-static/range {v31 .. v31}, Lblb;->C(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/i;->g0:I

    :goto_4
    sget-object v2, Lqm1;->c:Lqm1;

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->k0:Lqm1;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/exoplayer2/i;->l0:Z

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/i;->d(Lcom/google/android/exoplayer2/t$d;)V

    new-instance v2, Landroid/os/Handler;

    move-object/from16 v3, v33

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v13, p2

    invoke-interface {v13, v2, v9}, Lo70;->e(Landroid/os/Handler;Lo70$a;)V

    move-object/from16 v2, v36

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/i;->g0(Lcom/google/android/exoplayer2/ExoPlayer$a;)V

    move-object/from16 v3, p1

    iget-wide v6, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->c:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/j;->q(J)V

    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    move-object/from16 v6, v29

    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$a;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->n:Z

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    new-instance v0, Lcom/google/android/exoplayer2/b;

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->l:Z

    if-eqz v4, :cond_5

    iget-object v10, v1, Lcom/google/android/exoplayer2/i;->h0:Lcom/google/android/exoplayer2/audio/a;

    goto :goto_5

    :cond_5
    move-object/from16 v10, v34

    :goto_5
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/b;->m(Lcom/google/android/exoplayer2/audio/a;)V

    new-instance v0, Lcom/google/android/exoplayer2/y;

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/y;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/y$b;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->B:Lcom/google/android/exoplayer2/y;

    iget-object v2, v1, Lcom/google/android/exoplayer2/i;->h0:Lcom/google/android/exoplayer2/audio/a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/a;->d:I

    invoke-static {v2}, Lblb;->Z(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/y;->h(I)V

    new-instance v2, Logc;

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Logc;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->C:Logc;

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->m:I

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    move v15, v5

    :goto_6
    invoke-virtual {v2, v15}, Logc;->a(Z)V

    new-instance v2, Lamc;

    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lamc;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/i;->D:Lamc;

    iget v3, v3, Lcom/google/android/exoplayer2/ExoPlayer$b;->m:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    move v15, v5

    :goto_7
    invoke-virtual {v2, v15}, Lamc;->a(Z)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->j0(Lcom/google/android/exoplayer2/y;)Lcom/google/android/exoplayer2/h;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->p0:Lcom/google/android/exoplayer2/h;

    sget-object v0, Lf7c;->f:Lf7c;

    iput-object v0, v1, Lcom/google/android/exoplayer2/i;->q0:Lf7c;

    iget-object v0, v1, Lcom/google/android/exoplayer2/i;->h0:Lcom/google/android/exoplayer2/audio/a;

    move-object/from16 v13, v37

    invoke-virtual {v13, v0}, Lrva;->h(Lcom/google/android/exoplayer2/audio/a;)V

    iget v0, v1, Lcom/google/android/exoplayer2/i;->g0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/i;->g0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/i;->h0:Lcom/google/android/exoplayer2/audio/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/i;->a0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/exoplayer2/i;->b0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/i;->j0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    const/4 v0, 0x7

    move-object/from16 v2, v28

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    const/4 v0, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v30 .. v30}, Lle1;->f()Z

    return-void

    :goto_8
    iget-object v1, v1, Lcom/google/android/exoplayer2/i;->d:Lle1;

    invoke-virtual {v1}, Lle1;->f()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public static synthetic A(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->T0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic A0(IILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/t$d;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic B(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->O0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic C(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->P0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic D(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->S:Lcom/google/android/exoplayer2/k;

    return-object p1
.end method

.method public static synthetic E(Lcom/google/android/exoplayer2/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i;->j0:Z

    return p0
.end method

.method public static synthetic E0(Lcom/google/android/exoplayer2/t$d;)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/t$d;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic F(Lcom/google/android/exoplayer2/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i;->j0:Z

    return p1
.end method

.method public static synthetic F0(FLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onVolumeChanged(F)V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/i;Lqm1;)Lqm1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->k0:Lqm1;

    return-object p1
.end method

.method public static synthetic H(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    return-object p0
.end method

.method public static synthetic H0(Lb88;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/t$d;->onTimelineChanged(Lcom/google/android/exoplayer2/a0;I)V

    return-void
.end method

.method public static synthetic I(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    return-object p1
.end method

.method public static synthetic I0(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/t$d;->onPositionDiscontinuity(I)V

    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/t$d;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V

    return-void
.end method

.method public static synthetic J(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->i0()Lcom/google/android/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lcom/google/android/exoplayer2/n;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/t$d;->onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V

    return-void
.end method

.method public static synthetic K(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    return-object p0
.end method

.method public static synthetic K0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic L(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    return-object p1
.end method

.method public static synthetic L0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic M(Lcom/google/android/exoplayer2/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i;->Y:Z

    return p0
.end method

.method public static synthetic M0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lb88;->i:Lsva;

    iget-object p0, p0, Lsva;->d:Lcom/google/android/exoplayer2/b0;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onTracksChanged(Lcom/google/android/exoplayer2/b0;)V

    return-void
.end method

.method public static synthetic N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->i1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic N0(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public static synthetic O(Lcom/google/android/exoplayer2/i;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->X0(II)V

    return-void
.end method

.method public static synthetic O0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 1

    iget-boolean v0, p0, Lb88;->g:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/t$d;->onLoadingChanged(Z)V

    iget-boolean p0, p0, Lb88;->g:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public static synthetic P(Lcom/google/android/exoplayer2/i;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->h1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic P0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 1

    iget-boolean v0, p0, Lb88;->l:Z

    iget p0, p0, Lb88;->e:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/t$d;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public static synthetic Q(Lcom/google/android/exoplayer2/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->d1()V

    return-void
.end method

.method public static synthetic Q0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget p0, p0, Lb88;->e:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public static synthetic R(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->t0(ZI)I

    move-result p0

    return p0
.end method

.method public static synthetic R0(Lb88;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-boolean p0, p0, Lb88;->l:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public static synthetic S(Lcom/google/android/exoplayer2/i;ZII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/i;->m1(ZII)V

    return-void
.end method

.method public static synthetic S0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget p0, p0, Lb88;->m:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public static synthetic T(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/y;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->B:Lcom/google/android/exoplayer2/y;

    return-object p0
.end method

.method public static synthetic T0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->z0(Lb88;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public static synthetic U(Lcom/google/android/exoplayer2/y;)Lcom/google/android/exoplayer2/h;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->j0(Lcom/google/android/exoplayer2/y;)Lcom/google/android/exoplayer2/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U0(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lb88;->n:Lcom/google/android/exoplayer2/s;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public static synthetic V(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->p0:Lcom/google/android/exoplayer2/h;

    return-object p0
.end method

.method public static synthetic W(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/h;)Lcom/google/android/exoplayer2/h;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->p0:Lcom/google/android/exoplayer2/h;

    return-object p1
.end method

.method public static synthetic X(Lcom/google/android/exoplayer2/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->p1()V

    return-void
.end method

.method public static synthetic Y(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->e0:Lju1;

    return-object p1
.end method

.method public static synthetic Z(Lcom/google/android/exoplayer2/i;)Lkb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->r:Lkb;

    return-object p0
.end method

.method public static synthetic a0(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->R:Lcom/google/android/exoplayer2/k;

    return-object p1
.end method

.method public static synthetic b0(Lcom/google/android/exoplayer2/i;Lf7c;)Lf7c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->q0:Lf7c;

    return-object p1
.end method

.method public static synthetic c0(Lcom/google/android/exoplayer2/i;)Lom5;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    return-object p0
.end method

.method public static synthetic d0(Lcom/google/android/exoplayer2/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->U:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic e0(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->f0:Lju1;

    return-object p1
.end method

.method public static synthetic i(IILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->A0(IILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->N0(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static j0(Lcom/google/android/exoplayer2/y;)Lcom/google/android/exoplayer2/h;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->c()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/h;-><init>(III)V

    return-object v0
.end method

.method public static synthetic k(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->K0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic l(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->L0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic m(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->M0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic n(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->G0(Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic o(Lb88;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->R0(Lb88;ILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic p(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/j$e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->D0(Lcom/google/android/exoplayer2/j$e;)V

    return-void
.end method

.method public static synthetic q(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->Q0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic r(Lb88;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->H0(Lb88;ILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic s(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->S0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic t(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/i;->I0(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static t0(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public static synthetic u(FLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->F0(FLcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic v(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/t$d;Lzx3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->B0(Lcom/google/android/exoplayer2/t$d;Lzx3;)V

    return-void
.end method

.method public static synthetic w(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/j$e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->C0(Lcom/google/android/exoplayer2/j$e;)V

    return-void
.end method

.method public static w0(Lb88;)J
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iget-object v2, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v3, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v3, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-wide v2, p0, Lb88;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object p0, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget v1, v1, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$d;->f()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v0

    iget-wide v2, p0, Lb88;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static synthetic x(Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->E0(Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic y(Lcom/google/android/exoplayer2/n;ILcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->J0(Lcom/google/android/exoplayer2/n;ILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic z(Lb88;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->U0(Lb88;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static z0(Lb88;)Z
    .locals 2

    iget v0, p0, Lb88;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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


# virtual methods
.method public final synthetic B0(Lcom/google/android/exoplayer2/t$d;Lzx3;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->f:Lcom/google/android/exoplayer2/t;

    new-instance v0, Lcom/google/android/exoplayer2/t$c;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/t$c;-><init>(Lzx3;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/t$d;->onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V

    return-void
.end method

.method public final synthetic C0(Lcom/google/android/exoplayer2/j$e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->x0(Lcom/google/android/exoplayer2/j$e;)V

    return-void
.end method

.method public final synthetic D0(Lcom/google/android/exoplayer2/j$e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->i:Lxn4;

    new-instance v1, Lth3;

    invoke-direct {v1, p0, p1}, Lth3;-><init>(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/j$e;)V

    invoke-interface {v0, v1}, Lxn4;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic G0(Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->O:Lcom/google/android/exoplayer2/t$b;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method public final V0(Lb88;Lcom/google/android/exoplayer2/a0;Landroid/util/Pair;)Lb88;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Lzi;->a(Z)V

    move-object/from16 v3, p1

    iget-object v5, v3, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual/range {p1 .. p2}, Lb88;->i(Lcom/google/android/exoplayer2/a0;)Lb88;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lb88;->k()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/i;->v0:J

    invoke-static {v2, v3}, Lblb;->t0(J)J

    move-result-wide v12

    sget-object v16, Leva;->e:Leva;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i;->b:Lsva;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    const-wide/16 v14, 0x0

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v0

    invoke-virtual/range {v6 .. v18}, Lb88;->c(Lcom/google/android/exoplayer2/source/i$b;JJJJLeva;Lsva;Ljava/util/List;)Lb88;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object v0

    iget-wide v1, v0, Lb88;->r:J

    iput-wide v1, v0, Lb88;->p:J

    return-object v0

    :cond_2
    iget-object v3, v6, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v3, Lxk6;->a:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v8, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object v14, v8

    goto :goto_3

    :cond_3
    iget-object v8, v6, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    goto :goto_2

    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/i;->getContentPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Lblb;->t0(J)J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-eqz v7, :cond_5

    cmp-long v2, v12, v8

    if-gez v2, :cond_6

    :cond_5
    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_5

    :cond_6
    if-nez v2, :cond_9

    iget-object v2, v6, Lb88;->k:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v3, v14, Lxk6;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/a0$b;->d:I

    if-eq v2, v3, :cond_e

    :cond_7
    iget-object v2, v14, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v14}, Lxk6;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    iget v1, v14, Lxk6;->b:I

    iget v2, v14, Lxk6;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a0$b;->e(II)J

    move-result-wide v0

    goto :goto_4

    :cond_8
    iget-object v0, v0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/a0$b;->e:J

    :goto_4
    iget-wide v8, v6, Lb88;->r:J

    iget-wide v10, v6, Lb88;->r:J

    iget-wide v12, v6, Lb88;->d:J

    iget-wide v2, v6, Lb88;->r:J

    sub-long v2, v0, v2

    iget-object v4, v6, Lb88;->h:Leva;

    iget-object v5, v6, Lb88;->i:Lsva;

    iget-object v15, v6, Lb88;->j:Ljava/util/List;

    move-object v7, v14

    move-wide/from16 p0, v0

    move-object v0, v14

    move-object v1, v15

    move-wide v14, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    invoke-virtual/range {v6 .. v18}, Lb88;->c(Lcom/google/android/exoplayer2/source/i$b;JJJJLeva;Lsva;Ljava/util/List;)Lb88;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object v6

    move-wide/from16 v0, p0

    iput-wide v0, v6, Lb88;->p:J

    goto/16 :goto_c

    :cond_9
    move-object v0, v14

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lzi;->g(Z)V

    iget-wide v1, v6, Lb88;->q:J

    sub-long v3, v12, v8

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-wide v1, v6, Lb88;->p:J

    iget-object v3, v6, Lb88;->k:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v4, v6, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v3, v4}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-long v1, v12, v14

    :cond_a
    iget-object v3, v6, Lb88;->h:Leva;

    iget-object v4, v6, Lb88;->i:Lsva;

    iget-object v5, v6, Lb88;->j:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v6 .. v18}, Lb88;->c(Lcom/google/android/exoplayer2/source/i$b;JJJJLeva;Lsva;Ljava/util/List;)Lb88;

    move-result-object v6

    iput-wide v1, v6, Lb88;->p:J

    goto :goto_c

    :goto_5
    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Lzi;->g(Z)V

    if-nez v7, :cond_b

    sget-object v2, Leva;->e:Leva;

    :goto_6
    move-object/from16 v16, v2

    goto :goto_7

    :cond_b
    iget-object v2, v6, Lb88;->h:Leva;

    goto :goto_6

    :goto_7
    if-nez v7, :cond_c

    iget-object v1, v1, Lcom/google/android/exoplayer2/i;->b:Lsva;

    :goto_8
    move-object/from16 v17, v1

    goto :goto_9

    :cond_c
    iget-object v1, v6, Lb88;->i:Lsva;

    goto :goto_8

    :goto_9
    if-nez v7, :cond_d

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_a
    move-object/from16 v18, v1

    goto :goto_b

    :cond_d
    iget-object v1, v6, Lb88;->j:Ljava/util/List;

    goto :goto_a

    :goto_b
    const-wide/16 v14, 0x0

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-wide v1, v12

    invoke-virtual/range {v6 .. v18}, Lb88;->c(Lcom/google/android/exoplayer2/source/i$b;JJJJLeva;Lsva;Ljava/util/List;)Lb88;

    move-result-object v3

    invoke-virtual {v3, v0}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object v6

    iput-wide v1, v6, Lb88;->p:J

    :cond_e
    :goto_c
    return-object v6
.end method

.method public final W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/exoplayer2/i;->t0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->v0:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/i;->u0:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/i;->G:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/a0$d;->e()J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {p3, p4}, Lblb;->t0(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final X0(II)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/i;->c0:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/i;->d0:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/i;->c0:I

    iput p2, p0, Lcom/google/android/exoplayer2/i;->d0:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v0, Lrh3;

    invoke-direct {v0, p1, p2}, Lrh3;-><init>(II)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    :cond_1
    return-void
.end method

.method public final Y0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)J
    .locals 1

    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide p0

    add-long/2addr p3, p0

    return-wide p3
.end method

.method public final Z0(II)Lb88;
    .locals 6

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lzi;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/i;->H:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/i;->H:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->a1(II)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->k0()Lcom/google/android/exoplayer2/a0;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/i;->s0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v5, v4, v2}, Lcom/google/android/exoplayer2/i;->V0(Lb88;Lcom/google/android/exoplayer2/a0;Landroid/util/Pair;)Lb88;

    move-result-object v2

    iget v4, v2, Lb88;->e:I

    if-eq v4, v0, :cond_1

    const/4 v0, 0x4

    if-eq v4, v0, :cond_1

    if-ge p1, p2, :cond_1

    if-ne p2, v3, :cond_1

    iget-object v3, v2, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v3

    if-lt v1, v3, :cond_1

    invoke-virtual {v2, v0}, Lb88;->g(I)Lb88;

    move-result-object v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/exoplayer2/j;->j0(IILmi9;)V

    return-object v2
.end method

.method public a(Lcom/google/android/exoplayer2/source/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->e1(Ljava/util/List;)V

    return-void
.end method

.method public final a1(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    invoke-interface {v0, p1, p2}, Lmi9;->cloneAndRemove(II)Lmi9;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    invoke-virtual {p0, p1}, Lom5;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final b1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->y:Lcom/google/android/exoplayer2/i$d;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->m0(Lcom/google/android/exoplayer2/u$b;)Lcom/google/android/exoplayer2/u;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/u;->n(I)Lcom/google/android/exoplayer2/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/u;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->l()Lcom/google/android/exoplayer2/u;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->x:Lcom/google/android/exoplayer2/i$c;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/i;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->Z:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->x:Lcom/google/android/exoplayer2/i$c;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->Z:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/i;->Z:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->W:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->x:Lcom/google/android/exoplayer2/i$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/i;->W:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final c1(IILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->g:[Lcom/google/android/exoplayer2/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/i;->m0(Lcom/google/android/exoplayer2/u$b;)Lcom/google/android/exoplayer2/u;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/u;->n(I)Lcom/google/android/exoplayer2/u;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/u;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/u;->l()Lcom/google/android/exoplayer2/u;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->b1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->i1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/i;->X0(II)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    invoke-virtual {p0, p1}, Lom5;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d1()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/i;->i0:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b;->g()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/i;->c1(IILjava/lang/Object;)V

    return-void
.end method

.method public e1(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/i;->f1(Ljava/util/List;Z)V

    return-void
.end method

.method public f0(Lnb;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->r:Lkb;

    invoke-interface {p0, p1}, Lkb;->r(Lnb;)V

    return-void
.end method

.method public f1(Ljava/util/List;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i;->g1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public g0(Lcom/google/android/exoplayer2/ExoPlayer$a;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g1(Ljava/util/List;IJZ)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->r0()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentPosition()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/i;->H:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/i;->H:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/google/android/exoplayer2/i;->a1(II)V

    :cond_0
    move-object v5, p1

    invoke-virtual {p0, v7, p1}, Lcom/google/android/exoplayer2/i;->h0(ILjava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->k0()Lcom/google/android/exoplayer2/a0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v8

    if-ge v1, v8, :cond_2

    :cond_1
    move-wide/from16 v10, p3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    move-wide/from16 v10, p3

    invoke-direct {v0, v5, v1, v10, v11}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/a0;IJ)V

    throw v0

    :goto_0
    const/4 v8, -0x1

    if-eqz p5, :cond_3

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/i;->G:Z

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/a0;->e(Z)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v2

    goto :goto_1

    :cond_3
    if-ne v1, v8, :cond_4

    move v1, v2

    move-wide v10, v3

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-virtual {p0, v5, v1, v10, v11}, Lcom/google/android/exoplayer2/i;->W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/i;->V0(Lb88;Lcom/google/android/exoplayer2/a0;Landroid/util/Pair;)Lb88;

    move-result-object v2

    iget v3, v2, Lb88;->e:I

    if-eq v1, v8, :cond_7

    if-eq v3, v6, :cond_7

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v3

    if-lt v1, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    :cond_7
    :goto_3
    invoke-virtual {v2, v3}, Lb88;->g(I)Lb88;

    move-result-object v2

    iget-object v8, v0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-static {v10, v11}, Lblb;->t0(J)J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    move v10, v1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer2/j;->I0(Ljava/util/List;IJLmi9;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, v1, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, v2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v3, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-nez v1, :cond_8

    move v5, v6

    goto :goto_4

    :cond_8
    move v5, v7

    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/i;->q0(Lb88;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x4

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    return-void
.end method

.method public getContentPosition()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Lxk6;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-wide v1, v0, Lb88;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$d;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0$b;->p()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-wide v2, p0, Lb88;->c:J

    invoke-static {v2, v3}, Lblb;->P0(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget p0, p0, Lxk6;->b:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget p0, p0, Lxk6;->c:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->r0()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/i;->u0:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object p0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p0, p0, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->q0(Lb88;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lblb;->P0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/a0;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    return-object p0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/b0;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->i:Lsva;

    iget-object p0, p0, Lsva;->d:Lcom/google/android/exoplayer2/b0;

    return-object p0
.end method

.method public getDuration()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v2, v1, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    iget v0, v1, Lxk6;->b:I

    iget v1, v1, Lxk6;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/a0$b;->e(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lblb;->P0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-boolean p0, p0, Lb88;->l:Z

    return p0
.end method

.method public getPlaybackState()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget p0, p0, Lb88;->e:I

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget p0, p0, Lb88;->m:I

    return p0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object p0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatMode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget p0, p0, Lcom/google/android/exoplayer2/i;->F:I

    return p0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i;->G:Z

    return p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-wide v0, p0, Lb88;->q:J

    invoke-static {v0, v1}, Lblb;->P0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoSize()Lf7c;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->q0:Lf7c;

    return-object p0
.end method

.method public getVolume()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget p0, p0, Lcom/google/android/exoplayer2/i;->i0:F

    return p0
.end method

.method public final h0(ILjava/util/List;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/exoplayer2/q$c;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/i;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/i;->p:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/q$c;-><init>(Lcom/google/android/exoplayer2/source/i;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplayer2/i$e;

    iget-object v6, v2, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/i$e;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, p1, v1}, Lmi9;->cloneAndInsert(II)Lmi9;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    return-object v0
.end method

.method public final h1(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->i1(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->V:Landroid/view/Surface;

    return-void
.end method

.method public final i0()Lcom/google/android/exoplayer2/o;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/a0$d;->d:Lcom/google/android/exoplayer2/n;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o;->b()Lcom/google/android/exoplayer2/o$b;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/o$b;->H(Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o$b;->F()Lcom/google/android/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method public final i1(Ljava/lang/Object;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->g:[Lcom/google/android/exoplayer2/w;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/google/android/exoplayer2/w;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/i;->m0(Lcom/google/android/exoplayer2/u$b;)Lcom/google/android/exoplayer2/u;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/u;->n(I)Lcom/google/android/exoplayer2/u;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/u;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/u;->l()Lcom/google/android/exoplayer2/u;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->U:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/u;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i;->E:J

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/u;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    move v5, v3

    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->U:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->V:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->V:Landroid/view/Surface;

    goto :goto_2

    :cond_3
    move v5, v3

    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->U:Ljava/lang/Object;

    if-eqz v5, :cond_5

    new-instance p1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/google/android/exoplayer2/i;->k1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method public isPlayingAd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0}, Lxk6;->b()Z

    move-result p0

    return p0
.end method

.method public j1(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b;->p(ZI)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/i;->k1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    sget-object p1, Lqm1;->c:Lqm1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->k0:Lqm1;

    return-void
.end method

.method public final k0()Lcom/google/android/exoplayer2/a0;
    .locals 2

    new-instance v0, Lzb8;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->M:Lmi9;

    invoke-direct {v0, v1, p0}, Lzb8;-><init>(Ljava/util/Collection;Lmi9;)V

    return-object v0
.end method

.method public final k1(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/i;->Z0(II)Lb88;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p1, v1}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object p1

    iget-wide v1, p1, Lb88;->r:J

    iput-wide v1, p1, Lb88;->p:J

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lb88;->q:J

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lb88;->g(I)Lb88;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object p1

    :cond_1
    move-object v3, p1

    iget p1, p0, Lcom/google/android/exoplayer2/i;->H:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/i;->H:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j;->Z0()V

    iget-object p1, v3, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p1, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p1

    if-nez p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/i;->q0(Lb88;)J

    move-result-wide v9

    const/4 v11, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    return-void
.end method

.method public final l0(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->q:Lcom/google/android/exoplayer2/source/i$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/n;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/i$a;->b(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/i;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final l1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->O:Lcom/google/android/exoplayer2/t$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->f:Lcom/google/android/exoplayer2/t;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->c:Lcom/google/android/exoplayer2/t$b;

    invoke-static {v1, v2}, Lblb;->E(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$b;)Lcom/google/android/exoplayer2/t$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/i;->O:Lcom/google/android/exoplayer2/t$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/t$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Luh3;

    invoke-direct {v1, p0}, Luh3;-><init>(Lcom/google/android/exoplayer2/i;)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, v1}, Lom5;->i(ILom5$a;)V

    :cond_0
    return-void
.end method

.method public final m0(Lcom/google/android/exoplayer2/u$b;)Lcom/google/android/exoplayer2/u;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->r0()I

    move-result v0

    new-instance v8, Lcom/google/android/exoplayer2/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v4, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/i;->w:Ley0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j;->x()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/u;-><init>(Lcom/google/android/exoplayer2/u$a;Lcom/google/android/exoplayer2/u$b;Lcom/google/android/exoplayer2/a0;ILey0;Landroid/os/Looper;)V

    return-object v8
.end method

.method public final m1(ZII)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    if-eq p2, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-boolean v5, v1, Lb88;->l:Z

    if-ne v5, v4, :cond_2

    iget v5, v1, Lb88;->m:I

    if-ne v5, v2, :cond_2

    return-void

    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer2/i;->H:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/i;->H:I

    invoke-virtual {v1, v4, v2}, Lb88;->d(ZI)Lb88;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/j;->L0(ZI)V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    return-void
.end method

.method public final n0(Lb88;Lb88;ZIZ)Landroid/util/Pair;
    .locals 6

    iget-object v0, p2, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v1, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    iget-object v2, p2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    iget-object v2, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v5, p0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, p0, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    :goto_0
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    iget-object p0, p2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide p2, p0, Lxk6;->d:J

    iget-object p0, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide p0, p0, Lxk6;->d:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_6

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final n1(Lb88;IIZZIJI)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    iget-object v9, v6, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iput-object v7, v6, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, v9, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v1, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i;->n0(Lb88;Lb88;ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v6, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v4, v7, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v4, v4, Lxk6;->a:Ljava/lang/Object;

    iget-object v5, v6, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v4, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v5, v6, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/a0$d;->d:Lcom/google/android/exoplayer2/n;

    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/o;->H:Lcom/google/android/exoplayer2/o;

    iput-object v4, v6, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    :cond_1
    if-nez v1, :cond_2

    iget-object v4, v9, Lb88;->j:Ljava/util/List;

    iget-object v5, v7, Lb88;->j:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v2, v6, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o;->b()Lcom/google/android/exoplayer2/o$b;

    move-result-object v2

    iget-object v4, v7, Lb88;->j:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o$b;->J(Ljava/util/List;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o$b;->F()Lcom/google/android/exoplayer2/o;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/i;->r0:Lcom/google/android/exoplayer2/o;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/i;->i0()Lcom/google/android/exoplayer2/o;

    move-result-object v2

    :cond_3
    iget-object v4, v6, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-object v2, v6, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    iget-boolean v2, v9, Lb88;->l:Z

    iget-boolean v5, v7, Lb88;->l:Z

    const/4 v11, 0x0

    if-eq v2, v5, :cond_4

    move v2, v10

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_0
    iget v5, v9, Lb88;->e:I

    iget v12, v7, Lb88;->e:I

    if-eq v5, v12, :cond_5

    move v5, v10

    goto :goto_1

    :cond_5
    move v5, v11

    :goto_1
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/i;->p1()V

    :cond_7
    iget-boolean v12, v9, Lb88;->g:Z

    iget-boolean v13, v7, Lb88;->g:Z

    if-eq v12, v13, :cond_8

    move v12, v10

    goto :goto_2

    :cond_8
    move v12, v11

    :goto_2
    if-eqz v12, :cond_9

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/i;->o1(Z)V

    :cond_9
    iget-object v13, v9, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v14, v7, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/a0;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v14, Lvh3;

    move/from16 v15, p2

    invoke-direct {v14, v7, v15}, Lvh3;-><init>(Lb88;I)V

    invoke-virtual {v13, v11, v14}, Lom5;->i(ILom5$a;)V

    :cond_a
    if-eqz p5, :cond_b

    move/from16 v11, p9

    invoke-virtual {v6, v8, v9, v11}, Lcom/google/android/exoplayer2/i;->v0(ILb88;I)Lcom/google/android/exoplayer2/t$e;

    move-result-object v11

    move-wide/from16 v13, p7

    invoke-virtual {v6, v13, v14}, Lcom/google/android/exoplayer2/i;->u0(J)Lcom/google/android/exoplayer2/t$e;

    move-result-object v13

    iget-object v14, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v15, Lbi3;

    invoke-direct {v15, v8, v11, v13}, Lbi3;-><init>(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;)V

    const/16 v8, 0xb

    invoke-virtual {v14, v8, v15}, Lom5;->i(ILom5$a;)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v8, Lci3;

    invoke-direct {v8, v3, v0}, Lci3;-><init>(Lcom/google/android/exoplayer2/n;I)V

    invoke-virtual {v1, v10, v8}, Lom5;->i(ILom5$a;)V

    :cond_c
    iget-object v0, v9, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v1, v7, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Lih3;

    invoke-direct {v1, v7}, Lih3;-><init>(Lb88;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lom5;->i(ILom5$a;)V

    iget-object v0, v7, Lb88;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Ljh3;

    invoke-direct {v1, v7}, Ljh3;-><init>(Lb88;)V

    invoke-virtual {v0, v3, v1}, Lom5;->i(ILom5$a;)V

    :cond_d
    iget-object v0, v9, Lb88;->i:Lsva;

    iget-object v1, v7, Lb88;->i:Lsva;

    if-eq v0, v1, :cond_e

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->h:Lrva;

    iget-object v1, v1, Lsva;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrva;->e(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Lkh3;

    invoke-direct {v1, v7}, Lkh3;-><init>(Lb88;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lom5;->i(ILom5$a;)V

    :cond_e
    if-nez v4, :cond_f

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->P:Lcom/google/android/exoplayer2/o;

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v3, Llh3;

    invoke-direct {v3, v0}, Llh3;-><init>(Lcom/google/android/exoplayer2/o;)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v3}, Lom5;->i(ILom5$a;)V

    :cond_f
    if-eqz v12, :cond_10

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Lmh3;

    invoke-direct {v1, v7}, Lmh3;-><init>(Lb88;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lom5;->i(ILom5$a;)V

    :cond_10
    const/4 v0, -0x1

    if-nez v5, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v3, Lnh3;

    invoke-direct {v3, v7}, Lnh3;-><init>(Lb88;)V

    invoke-virtual {v1, v0, v3}, Lom5;->i(ILom5$a;)V

    :cond_12
    if-eqz v5, :cond_13

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v3, Loh3;

    invoke-direct {v3, v7}, Loh3;-><init>(Lb88;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lom5;->i(ILom5$a;)V

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v2, Lwh3;

    move/from16 v3, p3

    invoke-direct {v2, v7, v3}, Lwh3;-><init>(Lb88;I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lom5;->i(ILom5$a;)V

    :cond_14
    iget v1, v9, Lb88;->m:I

    iget v2, v7, Lb88;->m:I

    if-eq v1, v2, :cond_15

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v2, Lxh3;

    invoke-direct {v2, v7}, Lxh3;-><init>(Lb88;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lom5;->i(ILom5$a;)V

    :cond_15
    invoke-static {v9}, Lcom/google/android/exoplayer2/i;->z0(Lb88;)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/i;->z0(Lb88;)Z

    move-result v2

    if-eq v1, v2, :cond_16

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v2, Lyh3;

    invoke-direct {v2, v7}, Lyh3;-><init>(Lb88;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lom5;->i(ILom5$a;)V

    :cond_16
    iget-object v1, v9, Lb88;->n:Lcom/google/android/exoplayer2/s;

    iget-object v2, v7, Lb88;->n:Lcom/google/android/exoplayer2/s;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v2, Lzh3;

    invoke-direct {v2, v7}, Lzh3;-><init>(Lb88;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lom5;->i(ILom5$a;)V

    :cond_17
    if-eqz p4, :cond_18

    iget-object v1, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v2, Lai3;

    invoke-direct {v2}, Lai3;-><init>()V

    invoke-virtual {v1, v0, v2}, Lom5;->i(ILom5$a;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/i;->l1()V

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->l:Lom5;

    invoke-virtual {v0}, Lom5;->f()V

    iget-boolean v0, v9, Lb88;->o:Z

    iget-boolean v1, v7, Lb88;->o:Z

    if-eq v0, v1, :cond_19

    iget-object v0, v6, Lcom/google/android/exoplayer2/i;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$a;

    iget-boolean v2, v7, Lb88;->o:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$a;->g(Z)V

    goto :goto_3

    :cond_19
    return-void
.end method

.method public o0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-boolean p0, p0, Lb88;->o:Z

    return p0
.end method

.method public final o1(Z)V
    .locals 0

    return-void
.end method

.method public p0()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s:Landroid/os/Looper;

    return-object p0
.end method

.method public final p1()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->o0()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->C:Logc;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Logc;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->D:Lamc;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlayWhenReady()Z

    move-result p0

    invoke-virtual {v0, p0}, Lamc;->b(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->C:Logc;

    invoke-virtual {v0, v2}, Logc;->b(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->D:Lamc;

    invoke-virtual {p0, v2}, Lamc;->b(Z)V

    :goto_2
    return-void
.end method

.method public prepare()V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/b;->p(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->t0(ZI)I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/i;->m1(ZII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget v1, v0, Lb88;->e:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb88;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lb88;

    move-result-object v0

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {v0, v2}, Lb88;->g(I)Lb88;

    move-result-object v5

    iget v0, p0, Lcom/google/android/exoplayer2/i;->H:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/i;->H:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->e0()V

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    return-void
.end method

.method public final q0(Lb88;)J
    .locals 4

    iget-object v0, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/i;->v0:J

    invoke-static {p0, p1}, Lblb;->t0(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object v0, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p1, Lb88;->r:J

    return-wide p0

    :cond_1
    iget-object v0, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v1, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v2, p1, Lb88;->r:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/i;->Y0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final q1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->d:Lle1;

    invoke-virtual {v0}, Lle1;->c()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->p0()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->p0()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lblb;->z(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i;->l0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i;->m0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lop5;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i;->m0:Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final r0()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/i;->t0:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v0, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, v0, Lxk6;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/a0$b;->d:I

    return p0
.end method

.method public release()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.18.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lblb;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lpi3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lop5;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    sget v0, Lblb;->a:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->B:Lcom/google/android/exoplayer2/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y;->g()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->C:Logc;

    invoke-virtual {v0, v1}, Logc;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->D:Lamc;

    invoke-virtual {v0, v1}, Lamc;->b(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b;->i()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v1, Lhh3;

    invoke-direct {v1}, Lhh3;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lom5;->l(ILom5$a;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    invoke-virtual {v0}, Lom5;->j()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->i:Lxn4;

    invoke-interface {v0, v2}, Lxn4;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->t:Lo70;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i;->r:Lkb;

    invoke-interface {v0, v1}, Lo70;->d(Lo70$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb88;->g(I)Lb88;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v3, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0, v3}, Lb88;->b(Lcom/google/android/exoplayer2/source/i$b;)Lb88;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-wide v3, v0, Lb88;->r:J

    iput-wide v3, v0, Lb88;->p:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lb88;->q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->r:Lkb;

    invoke-interface {v0}, Lkb;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->h:Lrva;

    invoke-virtual {v0}, Lrva;->f()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->b1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->V:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/i;->V:Landroid/view/Surface;

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i;->n0:Z

    if-nez v0, :cond_3

    sget-object v0, Lqm1;->c:Lqm1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->k0:Lqm1;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/i;->o0:Z

    return-void

    :cond_3
    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v2
.end method

.method public final s0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getContentPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v7, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v10

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/a0;->n(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    iget v8, p0, Lcom/google/android/exoplayer2/i;->F:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/i;->G:Z

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/j;->u0(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object p1, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    iget p1, p1, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0$d;->e()J

    move-result-wide v0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/i;->W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/i;->W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->r0()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    :cond_6
    invoke-virtual {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/i;->W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public seekTo(IJ)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/i;->r:Lkb;

    invoke-interface {v4}, Lkb;->notifySeekStarted()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v4, v4, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    if-ltz p1, :cond_3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v5

    if-ge p1, v5, :cond_3

    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/i;->H:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/i;->H:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->isPlayingAd()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/j$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/j$e;-><init>(Lb88;)V

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/j$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->j:Lcom/google/android/exoplayer2/j$f;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/j$f;->a(Lcom/google/android/exoplayer2/j$e;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlaybackState()I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v5, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-virtual {v5, v6}, Lb88;->g(I)Lb88;

    move-result-object v5

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/i;->W0(Lcom/google/android/exoplayer2/a0;IJ)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/google/android/exoplayer2/i;->V0(Lb88;Lcom/google/android/exoplayer2/a0;Landroid/util/Pair;)Lb88;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/i;->k:Lcom/google/android/exoplayer2/j;

    invoke-static {p2, p3}, Lblb;->t0(J)J

    move-result-wide v2

    invoke-virtual {v6, v4, p1, v2, v3}, Lcom/google/android/exoplayer2/j;->w0(Lcom/google/android/exoplayer2/a0;IJ)V

    const/4 v6, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/i;->q0(Lb88;)J

    move-result-wide v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, v5

    move v5, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/a0;IJ)V

    throw v0
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i;->l0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/i;->f1(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->A:Lcom/google/android/exoplayer2/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/b;->p(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/i;->t0(ZI)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/i;->m1(ZII)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->clearVideoSurface()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->b1()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i;->Z:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->x:Lcom/google/android/exoplayer2/i$c;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/i;->i1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/exoplayer2/i;->X0(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->h1(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/i;->X0(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lblb;->o(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/i;->i0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/i;->i0:F

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->d1()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->l:Lom5;

    new-instance v0, Lsh3;

    invoke-direct {v0, p1}, Lsh3;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->q1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i;->j1(Z)V

    return-void
.end method

.method public final u0(J)Lcom/google/android/exoplayer2/t$e;
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i;->getCurrentMediaItemIndex()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v1, v0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, v1, Lxk6;->a:Ljava/lang/Object;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->n:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v0, v0, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v3, v3, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    iget-object v4, v4, Lcom/google/android/exoplayer2/a0$d;->d:Lcom/google/android/exoplayer2/n;

    move v5, v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v3, v0

    move-object v4, v3

    move v5, v1

    move-object v1, v4

    :goto_0
    invoke-static {p1, p2}, Lblb;->P0(J)J

    move-result-wide v6

    new-instance p1, Lcom/google/android/exoplayer2/t$e;

    iget-object p2, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p2, p2, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p2}, Lxk6;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-static {p2}, Lcom/google/android/exoplayer2/i;->w0(Lb88;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lblb;->P0(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object p0, p0, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget v10, p0, Lxk6;->b:I

    iget v11, p0, Lxk6;->c:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/t$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method public final v0(ILb88;I)Lcom/google/android/exoplayer2/t$e;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iget-object v3, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v3, Lxk6;->a:Ljava/lang/Object;

    iget-object v5, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget v5, v2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v6, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v8, v0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/a0$d;

    iget-object v8, v8, Lcom/google/android/exoplayer2/a0$d;->d:Lcom/google/android/exoplayer2/n;

    move-object v9, v3

    move v10, v6

    move-object v6, v7

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v7, p3

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move v10, v4

    :goto_0
    if-nez p1, :cond_3

    iget-object v3, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget v3, v0, Lxk6;->b:I

    iget v0, v0, Lxk6;->c:I

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/a0$b;->e(II)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/i;->w0(Lb88;)J

    move-result-wide v4

    goto :goto_2

    :cond_1
    iget-object v3, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget v3, v3, Lxk6;->e:I

    if-eq v3, v4, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->w0(Lb88;)J

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    goto :goto_2

    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplayer2/a0$b;->f:J

    iget-wide v11, v2, Lcom/google/android/exoplayer2/a0$b;->e:J

    add-long v2, v3, v11

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lb88;->r:J

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/i;->w0(Lb88;)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/a0$b;->f:J

    iget-wide v4, v1, Lb88;->r:J

    add-long/2addr v2, v4

    goto :goto_1

    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/t$e;

    invoke-static {v2, v3}, Lblb;->P0(J)J

    move-result-wide v11

    invoke-static {v4, v5}, Lblb;->P0(J)J

    move-result-wide v13

    iget-object v1, v1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget v15, v1, Lxk6;->b:I

    iget v1, v1, Lxk6;->c:I

    move-object v5, v0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/t$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;IJJII)V

    return-object v0
.end method

.method public final x0(Lcom/google/android/exoplayer2/j$e;)V
    .locals 12

    iget v2, p0, Lcom/google/android/exoplayer2/i;->H:I

    iget v3, p1, Lcom/google/android/exoplayer2/j$e;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/i;->H:I

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/j$e;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/google/android/exoplayer2/j$e;->e:I

    iput v3, p0, Lcom/google/android/exoplayer2/i;->I:I

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/i;->J:Z

    :cond_0
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/j$e;->f:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/google/android/exoplayer2/j$e;->g:I

    iput v3, p0, Lcom/google/android/exoplayer2/i;->K:I

    :cond_1
    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-object v2, v2, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v3, v3, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer2/i;->t0:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/i;->v0:J

    iput v5, p0, Lcom/google/android/exoplayer2/i;->u0:I

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v2

    check-cast v3, Lzb8;

    invoke-virtual {v3}, Lzb8;->K()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    invoke-static {v6}, Lzi;->g(Z)V

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/google/android/exoplayer2/i;->o:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/i$e;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/a0;

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/i$e;->a(Lcom/google/android/exoplayer2/i$e;Lcom/google/android/exoplayer2/a0;)Lcom/google/android/exoplayer2/a0;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/i;->J:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-object v3, v3, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v8, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-object v8, v8, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v3, v8}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-wide v8, v3, Lb88;->d:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/i;->s0:Lb88;

    iget-wide v10, v3, Lb88;->r:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :cond_6
    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-object v3, v3, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-object v6, v3, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v7, v3, Lb88;->d:J

    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/google/android/exoplayer2/i;->Y0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;J)J

    move-result-wide v2

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v2, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget-wide v2, v2, Lb88;->d:J

    :goto_4
    move-wide v7, v2

    :goto_5
    move v6, v4

    goto :goto_6

    :cond_9
    move-wide v7, v6

    goto :goto_5

    :cond_a
    move-wide v7, v6

    move v6, v5

    :goto_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/i;->J:Z

    iget-object v1, p1, Lcom/google/android/exoplayer2/j$e;->b:Lb88;

    iget v3, p0, Lcom/google/android/exoplayer2/i;->K:I

    iget v9, p0, Lcom/google/android/exoplayer2/i;->I:I

    const/4 v10, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v6

    move v6, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/i;->n1(Lb88;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final y0(I)I
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/i;->T:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p0

    return p0
.end method
