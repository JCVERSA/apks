.class public final Ll6j;
.super Lr6i;
.source "SourceFile"

# interfaces
.implements Lo3j;


# static fields
.field public static final synthetic X:I


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Lkaj;

.field public E:Ll3j;

.field public F:Luye;

.field public G:Lipe;

.field public H:Ljava/lang/Object;

.field public I:Landroid/view/Surface;

.field public J:I

.field public K:Ls5h;

.field public L:Lhvg;

.field public M:F

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Lipe;

.field public S:Lo9j;

.field public T:I

.field public U:J

.field public final V:Lt4j;

.field public W:Lbpj;

.field public final b:Larj;

.field public final c:Luye;

.field public final d:Loeg;

.field public final e:Landroid/content/Context;

.field public final f:Ll1f;

.field public final g:[Lx9j;

.field public final h:[Lx9j;

.field public final i:Lzqj;

.field public final j:Lolg;

.field public final k:Lcom/google/android/gms/internal/ads/vb;

.field public final l:Lxqg;

.field public final m:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final n:Ly2f;

.field public final o:Ljava/util/List;

.field public final p:Z

.field public final q:Lqaj;

.field public final r:Landroid/os/Looper;

.field public final s:Lmrj;

.field public final t:Ltbg;

.field public final u:La6j;

.field public final v:Lc6j;

.field public final w:Loaj;

.field public final x:Lpaj;

.field public final y:J

.field public final z:Ltag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lsme;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lj3j;Ll1f;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/16 v3, 0x14

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p0}, Lr6i;-><init>()V

    new-instance v9, Loeg;

    sget-object v10, Ltbg;->a:Ltbg;

    invoke-direct {v9, v10}, Loeg;-><init>(Ltbg;)V

    iput-object v9, v1, Ll6j;->d:Loeg;

    :try_start_0
    const-string v9, "ExoPlayerImpl"

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lkfh;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Init "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " [AndroidXMedia3/1.6.0] ["

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lj3j;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, v1, Ll6j;->e:Landroid/content/Context;

    iget-object v9, v0, Lj3j;->h:Lm2i;

    iget-object v10, v0, Lj3j;->b:Ltbg;

    invoke-interface {v9, v10}, Lm2i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lqaj;

    iput-object v9, v1, Ll6j;->q:Lqaj;

    iget v9, v0, Lj3j;->j:I

    iput v9, v1, Ll6j;->Q:I

    iget-object v9, v0, Lj3j;->k:Lhvg;

    iput-object v9, v1, Ll6j;->L:Lhvg;

    iget v9, v0, Lj3j;->l:I

    iput v9, v1, Ll6j;->J:I

    const/4 v9, 0x0

    iput-boolean v9, v1, Ll6j;->N:Z

    iget-wide v10, v0, Lj3j;->p:J

    iput-wide v10, v1, Ll6j;->y:J

    new-instance v10, La6j;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, La6j;-><init>(Ll6j;Lf6j;)V

    iput-object v10, v1, Ll6j;->u:La6j;

    new-instance v12, Lc6j;

    invoke-direct {v12, v11}, Lc6j;-><init>(Lf6j;)V

    iput-object v12, v1, Ll6j;->v:Lc6j;

    new-instance v13, Landroid/os/Handler;

    iget-object v12, v0, Lj3j;->i:Landroid/os/Looper;

    invoke-direct {v13, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v12, v0, Lj3j;->c:Lk3i;

    check-cast v12, Lv2j;

    iget-object v12, v12, Lv2j;->b:Lpif;

    iget-object v12, v12, Lpif;->a:Lrif;

    move-object v14, v10

    move-object v15, v10

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lrif;->c0(Lrif;Landroid/os/Handler;Ll7e;Ldhj;Lppj;Ltlj;)[Lx9j;

    move-result-object v10

    iput-object v10, v1, Ll6j;->g:[Lx9j;

    array-length v10, v10

    new-array v10, v7, [Lx9j;

    iput-object v10, v1, Ll6j;->h:[Lx9j;

    move v10, v9

    :goto_0
    iget-object v12, v1, Ll6j;->h:[Lx9j;

    array-length v13, v12

    if-ge v10, v7, :cond_0

    iget-object v13, v1, Ll6j;->g:[Lx9j;

    aget-object v13, v13, v10

    aput-object v11, v12, v10

    add-int/2addr v10, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v10, v0, Lj3j;->e:Lk3i;

    invoke-interface {v10}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzqj;

    iput-object v10, v1, Ll6j;->i:Lzqj;

    iget-object v12, v0, Lj3j;->d:Lk3i;

    check-cast v12, Ly2j;

    iget-object v12, v12, Ly2j;->b:Landroid/content/Context;

    invoke-static {v12}, Lj3j;->a(Landroid/content/Context;)Lanj;

    iget-object v12, v0, Lj3j;->g:Lk3i;

    check-cast v12, Ld3j;

    iget-object v12, v12, Ld3j;->b:Landroid/content/Context;

    invoke-static {v12}, Lqrj;->c(Landroid/content/Context;)Lqrj;

    move-result-object v15

    iput-object v15, v1, Ll6j;->s:Lmrj;

    iget-boolean v12, v0, Lj3j;->m:Z

    iput-boolean v12, v1, Ll6j;->p:Z

    iget-object v12, v0, Lj3j;->n:Lkaj;

    iput-object v12, v1, Ll6j;->D:Lkaj;

    iget-object v14, v0, Lj3j;->i:Landroid/os/Looper;

    iput-object v14, v1, Ll6j;->r:Landroid/os/Looper;

    iget-object v13, v0, Lj3j;->b:Ltbg;

    iput-object v13, v1, Ll6j;->t:Ltbg;

    iput-object v2, v1, Ll6j;->f:Ll1f;

    new-instance v12, Lxqg;

    new-instance v5, Lp4j;

    invoke-direct {v5, v1}, Lp4j;-><init>(Ll6j;)V

    invoke-direct {v12, v14, v13, v5}, Lxqg;-><init>(Landroid/os/Looper;Ltbg;Lyog;)V

    iput-object v12, v1, Ll6j;->l:Lxqg;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v5, v1, Ll6j;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Ll6j;->o:Ljava/util/List;

    new-instance v6, Lbpj;

    invoke-direct {v6, v9}, Lbpj;-><init>(I)V

    iput-object v6, v1, Ll6j;->W:Lbpj;

    sget-object v6, Ll3j;->b:Ll3j;

    iput-object v6, v1, Ll6j;->E:Ll3j;

    new-instance v6, Larj;

    iget-object v4, v1, Ll6j;->g:[Lx9j;

    array-length v4, v4

    new-array v4, v7, [Lbaj;

    new-array v9, v7, [Ltqj;

    sget-object v7, Lnaf;->b:Lnaf;

    invoke-direct {v6, v4, v9, v7, v11}, Larj;-><init>([Lbaj;[Ltqj;Lnaf;Ljava/lang/Object;)V

    iput-object v6, v1, Ll6j;->b:Larj;

    new-instance v4, Ly2f;

    invoke-direct {v4}, Ly2f;-><init>()V

    iput-object v4, v1, Ll6j;->n:Ly2f;

    new-instance v4, Ltxe;

    invoke-direct {v4}, Ltxe;-><init>()V

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v4, v3}, Ltxe;->c([I)Ltxe;

    invoke-virtual {v10}, Lzqj;->e()Z

    const/16 v3, 0x1d

    invoke-virtual {v4, v3, v8}, Ltxe;->d(IZ)Ltxe;

    const/16 v3, 0x17

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Ltxe;->d(IZ)Ltxe;

    const/16 v3, 0x19

    invoke-virtual {v4, v3, v7}, Ltxe;->d(IZ)Ltxe;

    const/16 v3, 0x21

    invoke-virtual {v4, v3, v7}, Ltxe;->d(IZ)Ltxe;

    const/16 v3, 0x1a

    invoke-virtual {v4, v3, v7}, Ltxe;->d(IZ)Ltxe;

    const/16 v3, 0x22

    invoke-virtual {v4, v3, v7}, Ltxe;->d(IZ)Ltxe;

    invoke-virtual {v4}, Ltxe;->e()Luye;

    move-result-object v3

    iput-object v3, v1, Ll6j;->c:Luye;

    new-instance v4, Ltxe;

    invoke-direct {v4}, Ltxe;-><init>()V

    invoke-virtual {v4, v3}, Ltxe;->b(Luye;)Ltxe;

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Ltxe;->a(I)Ltxe;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ltxe;->a(I)Ltxe;

    invoke-virtual {v4}, Ltxe;->e()Luye;

    move-result-object v4

    iput-object v4, v1, Ll6j;->F:Luye;

    invoke-interface {v13, v14, v11}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object v4

    iput-object v4, v1, Ll6j;->j:Lolg;

    new-instance v4, Lt4j;

    invoke-direct {v4, v1}, Lt4j;-><init>(Ll6j;)V

    iput-object v4, v1, Ll6j;->V:Lt4j;

    invoke-static {v6}, Lo9j;->h(Larj;)Lo9j;

    move-result-object v7

    iput-object v7, v1, Ll6j;->S:Lo9j;

    iget-object v7, v1, Ll6j;->q:Lqaj;

    invoke-interface {v7, v2, v14}, Lqaj;->F(Ll1f;Landroid/os/Looper;)V

    new-instance v2, Ltfj;

    iget-object v7, v0, Lj3j;->s:Ljava/lang/String;

    invoke-direct {v2, v7}, Ltfj;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/vb;

    iget-object v9, v1, Ll6j;->e:Landroid/content/Context;

    iget-object v3, v1, Ll6j;->g:[Lx9j;

    iget-object v11, v1, Ll6j;->h:[Lx9j;

    iget-object v8, v0, Lj3j;->f:Lk3i;

    invoke-interface {v8}, Lk3i;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lt7j;

    iget-object v8, v1, Ll6j;->q:Lqaj;

    move-object/from16 v35, v5

    iget-object v5, v1, Ll6j;->D:Lkaj;

    move-object/from16 p2, v2

    iget-object v2, v0, Lj3j;->t:Lw1j;

    move-object/from16 v31, v4

    move-object/from16 v23, v5

    iget-wide v4, v0, Lj3j;->o:J

    iget-object v0, v1, Ll6j;->E:Ll3j;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    move-object/from16 v36, v12

    move-object v12, v7

    move-object/from16 v37, v13

    move-object v13, v9

    move-object v9, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v11

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move-object/from16 v19, v3

    move-object/from16 v22, v8

    move-object/from16 v24, v2

    move-wide/from16 v25, v4

    move-object/from16 v29, v9

    move-object/from16 v30, v37

    move-object/from16 v32, p2

    move-object/from16 v34, v0

    invoke-direct/range {v12 .. v34}, Lcom/google/android/gms/internal/ads/vb;-><init>(Landroid/content/Context;[Lx9j;[Lx9j;Lzqj;Larj;Lt7j;Lmrj;IZLqaj;Lkaj;Lw1j;JZZLandroid/os/Looper;Ltbg;Lt4j;Ltfj;Lq9j;Ll3j;)V

    iput-object v7, v1, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vb;->h0()Landroid/os/Looper;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Ll6j;->M:F

    sget-object v2, Lipe;->B:Lipe;

    iput-object v2, v1, Ll6j;->G:Lipe;

    iput-object v2, v1, Ll6j;->R:Lipe;

    const/4 v2, -0x1

    iput v2, v1, Ll6j;->T:I

    sget v4, Lhzf;->a:I

    const/4 v4, 0x1

    iput-boolean v4, v1, Ll6j;->O:Z

    iget-object v4, v1, Ll6j;->q:Lqaj;

    if-eqz v4, :cond_2

    move-object/from16 v5, v36

    invoke-virtual {v5, v4}, Lxqg;->b(Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v1, Ll6j;->q:Lqaj;

    invoke-interface {v3, v4, v5}, Lmrj;->a(Landroid/os/Handler;Llrj;)V

    iget-object v3, v1, Ll6j;->u:La6j;

    move-object/from16 v4, v35

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v3, Lkfh;->a:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    iget-object v3, v1, Ll6j;->e:Landroid/content/Context;

    move-object/from16 v4, p1

    iget-boolean v5, v4, Lj3j;->q:Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vb;->h0()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v10, v37

    const/4 v8, 0x0

    invoke-interface {v10, v6, v8}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjs;

    move-object/from16 v11, p2

    invoke-direct {v8, v3, v5, v1, v11}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Landroid/content/Context;ZLl6j;Ltfj;)V

    invoke-interface {v6, v8}, Lolg;->f(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    move-object/from16 v10, v37

    :goto_1
    new-instance v3, Ltag;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v5, Lw4j;

    invoke-direct {v5, v1}, Lw4j;-><init>(Ll6j;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Ltag;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Ltbg;Lw4j;)V

    iput-object v3, v1, Ll6j;->z:Ltag;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Ll6j;)V

    invoke-virtual {v3, v5}, Ltag;->b(Ljava/lang/Runnable;)V

    new-instance v16, Ll0j;

    iget-object v3, v4, Lj3j;->a:Landroid/content/Context;

    iget-object v5, v4, Lj3j;->i:Landroid/os/Looper;

    iget-object v8, v1, Ll6j;->u:La6j;

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Ll0j;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Li0j;Ltbg;)V

    new-instance v3, Loaj;

    iget-object v5, v4, Lj3j;->a:Landroid/content/Context;

    invoke-direct {v3, v5, v0, v10}, Loaj;-><init>(Landroid/content/Context;Landroid/os/Looper;Ltbg;)V

    iput-object v3, v1, Ll6j;->w:Loaj;

    new-instance v3, Lpaj;

    iget-object v4, v4, Lj3j;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v10}, Lpaj;-><init>(Landroid/content/Context;Landroid/os/Looper;Ltbg;)V

    iput-object v3, v1, Ll6j;->x:Lpaj;

    sget v0, Lxdj;->a:I

    sget-object v0, Lzhf;->d:Lzhf;

    sget-object v0, Ls5h;->c:Ls5h;

    iput-object v0, v1, Ll6j;->K:Ls5h;

    iget-object v0, v1, Ll6j;->L:Lhvg;

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3}, Lcom/google/android/gms/internal/ads/vb;->o0(Lhvg;Z)V

    iget-object v0, v1, Ll6j;->L:Lhvg;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v0}, Ll6j;->H(IILjava/lang/Object;)V

    iget v0, v1, Ll6j;->J:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3, v0}, Ll6j;->H(IILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v4, v0, v6}, Ll6j;->H(IILjava/lang/Object;)V

    iget-boolean v0, v1, Ll6j;->N:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, v0}, Ll6j;->H(IILjava/lang/Object;)V

    iget-object v0, v1, Ll6j;->v:Lc6j;

    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3, v0}, Ll6j;->H(IILjava/lang/Object;)V

    iget-object v0, v1, Ll6j;->v:Lc6j;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4, v0}, Ll6j;->H(IILjava/lang/Object;)V

    iget v0, v1, Ll6j;->Q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3, v0}, Ll6j;->H(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Ll6j;->d:Loeg;

    invoke-virtual {v0}, Loeg;->e()Z

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v1, v1, Ll6j;->d:Loeg;

    invoke-virtual {v1}, Loeg;->e()Z

    throw v0

    nop

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
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static C(Lo9j;I)Lo9j;
    .locals 1

    invoke-virtual {p0, p1}, Lo9j;->f(I)Lo9j;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo9j;->a(Z)Lo9j;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ll6j;)Lxqg;
    .locals 0

    iget-object p0, p0, Ll6j;->l:Lxqg;

    return-object p0
.end method

.method public static bridge synthetic k(Ll6j;)Lqaj;
    .locals 0

    iget-object p0, p0, Ll6j;->q:Lqaj;

    return-object p0
.end method

.method public static bridge synthetic l(Ll6j;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll6j;->H:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic m(Ll6j;Lg7j;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll6j;->F(Lg7j;)V

    return-void
.end method

.method public static synthetic n(Ll6j;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object v0, p0, Ll6j;->e:Landroid/content/Context;

    invoke-static {v0}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Ll6j;->z:Ltag;

    invoke-virtual {p0, v0}, Ltag;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Ll6j;Lg7j;)V
    .locals 12

    iget v2, p0, Ll6j;->A:I

    iget v3, p1, Lg7j;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Ll6j;->A:I

    iget-boolean v3, p1, Lg7j;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p1, Lg7j;->e:I

    iput v3, p0, Ll6j;->B:I

    iput-boolean v4, p0, Ll6j;->C:Z

    :cond_0
    if-nez v2, :cond_a

    iget-object v2, p1, Lg7j;->b:Lo9j;

    iget-object v2, v2, Lo9j;->a:Lw4f;

    iget-object v3, p0, Ll6j;->S:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    invoke-virtual {v3}, Lw4f;->o()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lw4f;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Ll6j;->T:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Ll6j;->U:J

    :cond_1
    invoke-virtual {v2}, Lw4f;->o()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_3

    move-object v3, v2

    check-cast v3, Lv9j;

    invoke-virtual {v3}, Lv9j;->y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Ll6j;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    invoke-static {v6}, Ln7g;->f(Z)V

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le6j;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw4f;

    invoke-virtual {v8, v9}, Le6j;->a(Lw4f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Ll6j;->C:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_9

    iget-object v3, p1, Lg7j;->b:Lo9j;

    iget-object v3, v3, Lo9j;->b:Lbnj;

    iget-object v8, p0, Ll6j;->S:Lo9j;

    iget-object v8, v8, Lo9j;->b:Lbnj;

    invoke-virtual {v3, v8}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lg7j;->b:Lo9j;

    iget-wide v8, v3, Lo9j;->d:J

    iget-object v3, p0, Ll6j;->S:Lo9j;

    iget-wide v10, v3, Lo9j;->s:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lw4f;->o()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p1, Lg7j;->b:Lo9j;

    iget-object v3, v3, Lo9j;->b:Lbnj;

    invoke-virtual {v3}, Lbnj;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p1, Lg7j;->b:Lo9j;

    iget-object v6, v3, Lo9j;->b:Lbnj;

    iget-wide v7, v3, Lo9j;->d:J

    invoke-virtual {p0, v2, v6, v7, v8}, Ll6j;->A(Lw4f;Lbnj;J)J

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v2, p1, Lg7j;->b:Lo9j;

    iget-wide v7, v2, Lo9j;->d:J

    :goto_4
    move v3, v4

    move-wide v6, v7

    goto :goto_5

    :cond_8
    move v3, v4

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    iput-boolean v5, p0, Ll6j;->C:Z

    iget-object v1, p1, Lg7j;->b:Lo9j;

    iget v4, p0, Ll6j;->B:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v5, v6

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Ll6j;->K(Lo9j;IZIJIZ)V

    :cond_a
    return-void
.end method

.method public static synthetic p(Ll6j;II)V
    .locals 2

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, p1}, Ll6j;->H(IILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Ll6j;->H(IILjava/lang/Object;)V

    new-instance p1, Lz4j;

    invoke-direct {p1, p2}, Lz4j;-><init>(I)V

    iget-object p0, p0, Ll6j;->l:Lxqg;

    const/16 p2, 0x15

    invoke-virtual {p0, p2, p1}, Lxqg;->d(ILiog;)V

    invoke-virtual {p0}, Lxqg;->c()V

    return-void
.end method

.method public static synthetic q(Ll6j;Lqze;)V
    .locals 0

    iget-object p0, p0, Ll6j;->F:Luye;

    invoke-interface {p1, p0}, Lqze;->D(Luye;)V

    return-void
.end method

.method public static bridge synthetic r(Ll6j;Z)V
    .locals 0

    iput-boolean p1, p0, Ll6j;->N:Z

    return-void
.end method

.method public static bridge synthetic s(Ll6j;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ll6j;->G(II)V

    return-void
.end method

.method public static bridge synthetic t(Ll6j;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Ll6j;->I(Ljava/lang/Object;)V

    iput-object v0, p0, Ll6j;->I:Landroid/view/Surface;

    return-void
.end method

.method public static bridge synthetic u(Ll6j;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ll6j;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic v(Ll6j;)Z
    .locals 0

    iget-boolean p0, p0, Ll6j;->N:Z

    return p0
.end method

.method public static z(Lo9j;)J
    .locals 7

    new-instance v0, Le4f;

    invoke-direct {v0}, Le4f;-><init>()V

    new-instance v1, Ly2f;

    invoke-direct {v1}, Ly2f;-><init>()V

    iget-object v2, p0, Lo9j;->a:Lw4f;

    iget-object v3, p0, Lo9j;->b:Lbnj;

    iget-object v3, v3, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget-wide v3, p0, Lo9j;->c:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    iget p0, v1, Ly2f;->c:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v4}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget-wide v0, p0, Le4f;->k:J

    :cond_0
    return-wide v3
.end method


# virtual methods
.method public final A(Lw4f;Lbnj;J)J
    .locals 0

    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object p0, p0, Ll6j;->n:Ly2f;

    invoke-virtual {p1, p2, p0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    return-wide p3
.end method

.method public final B(Lw4f;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Lw4f;->o()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Ll6j;->T:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Ll6j;->U:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lw4f;->c()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lw4f;->g(Z)I

    move-result p2

    iget-object p3, p0, Lr6i;->a:Le4f;

    invoke-virtual {p1, p2, p3, v1, v2}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p3

    iget-wide p3, p3, Le4f;->k:J

    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lr6i;->a:Le4f;

    iget-object v2, p0, Ll6j;->n:Ly2f;

    invoke-static {p3, p4}, Lkfh;->N(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final D(Lo9j;Lw4f;Landroid/util/Pair;)Lo9j;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lw4f;->o()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v3}, Ln7g;->d(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Lo9j;->a:Lw4f;

    invoke-virtual/range {p0 .. p1}, Ll6j;->x(Lo9j;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Lo9j;->g(Lw4f;)Lo9j;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lw4f;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lo9j;->i()Lbnj;

    move-result-object v1

    iget-wide v2, v0, Ll6j;->U:J

    invoke-static {v2, v3}, Lkfh;->N(J)J

    move-result-wide v15

    iget-object v0, v0, Ll6j;->b:Larj;

    sget-object v19, Lnpj;->d:Lnpj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v21

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Lo9j;->c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v0

    iget-wide v1, v0, Lo9j;->s:J

    iput-wide v1, v0, Lo9j;->q:J

    return-object v0

    :cond_2
    iget-object v3, v9, Lo9j;->b:Lbnj;

    iget-object v10, v3, Lbnj;->a:Ljava/lang/Object;

    sget v11, Lkfh;->a:I

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v12, Lbnj;

    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v14, -0x1

    invoke-direct {v12, v13, v14, v15}, Lbnj;-><init>(Ljava/lang/Object;J)V

    move-object v15, v12

    goto :goto_1

    :cond_3
    move-object v15, v3

    :goto_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Lkfh;->N(J)J

    move-result-wide v7

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v6, v10, v2}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    :cond_4
    if-eqz v11, :cond_5

    cmp-long v2, v13, v7

    if-gez v2, :cond_6

    :cond_5
    move-wide v6, v13

    move-object v1, v15

    goto/16 :goto_3

    :cond_6
    if-nez v2, :cond_9

    iget-object v2, v9, Lo9j;->k:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v3, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v1, v2, v3, v4}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v2

    iget v2, v2, Ly2f;->c:I

    iget-object v4, v15, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v3

    iget v3, v3, Ly2f;->c:I

    if-eq v2, v3, :cond_e

    :cond_7
    iget-object v2, v15, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v1, v2, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v15}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v15, Lbnj;->b:I

    iget v2, v15, Lbnj;->c:I

    invoke-virtual {v0, v1, v2}, Ly2f;->f(II)J

    move-result-wide v0

    goto :goto_2

    :cond_8
    iget-wide v0, v0, Ly2f;->d:J

    :goto_2
    iget-wide v11, v9, Lo9j;->s:J

    iget-wide v13, v9, Lo9j;->s:J

    iget-wide v2, v9, Lo9j;->d:J

    iget-wide v4, v9, Lo9j;->s:J

    sub-long v17, v0, v4

    iget-object v4, v9, Lo9j;->h:Lnpj;

    iget-object v5, v9, Lo9j;->i:Larj;

    iget-object v6, v9, Lo9j;->j:Ljava/util/List;

    move-object v10, v15

    move-object v7, v15

    move-wide v15, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Lo9j;->c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;

    move-result-object v2

    invoke-virtual {v2, v7}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v9

    iput-wide v0, v9, Lo9j;->q:J

    goto/16 :goto_a

    :cond_9
    move-object v1, v15

    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-wide v4, v9, Lo9j;->r:J

    sub-long v6, v13, v7

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v4, v9, Lo9j;->q:J

    iget-object v0, v9, Lo9j;->k:Lbnj;

    invoke-virtual {v0, v3}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-long v4, v13, v17

    :cond_a
    iget-object v0, v9, Lo9j;->h:Lnpj;

    iget-object v2, v9, Lo9j;->i:Larj;

    iget-object v3, v9, Lo9j;->j:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v6, v13

    move-wide v15, v6

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v9 .. v21}, Lo9j;->c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;

    move-result-object v9

    iput-wide v4, v9, Lo9j;->q:J

    goto :goto_a

    :goto_3
    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Ln7g;->f(Z)V

    if-nez v11, :cond_b

    sget-object v2, Lnpj;->d:Lnpj;

    :goto_4
    move-object/from16 v19, v2

    goto :goto_5

    :cond_b
    iget-object v2, v9, Lo9j;->h:Lnpj;

    goto :goto_4

    :goto_5
    if-nez v11, :cond_c

    iget-object v0, v0, Ll6j;->b:Larj;

    :goto_6
    move-object/from16 v20, v0

    goto :goto_7

    :cond_c
    iget-object v0, v9, Lo9j;->i:Larj;

    goto :goto_6

    :goto_7
    if-nez v11, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    :goto_8
    move-object/from16 v21, v0

    goto :goto_9

    :cond_d
    iget-object v0, v9, Lo9j;->j:Ljava/util/List;

    goto :goto_8

    :goto_9
    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v6

    move-wide v15, v6

    invoke-virtual/range {v9 .. v21}, Lo9j;->c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v9

    iput-wide v6, v9, Lo9j;->q:J

    :cond_e
    :goto_a
    return-object v9
.end method

.method public final E(Ls9j;)Lt9j;
    .locals 9

    iget-object v0, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v0}, Ll6j;->w(Lo9j;)I

    move-result v0

    new-instance v8, Lt9j;

    iget-object v1, p0, Ll6j;->S:Lo9j;

    iget-object v4, v1, Lo9j;->a:Lw4f;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Ll6j;->t:Ltbg;

    iget-object v2, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vb;->h0()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lt9j;-><init>(Lr9j;Ls9j;Lw4f;ILtbg;Landroid/os/Looper;)V

    return-object v8
.end method

.method public final synthetic F(Lg7j;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Ll6j;Lg7j;)V

    iget-object p0, p0, Ll6j;->j:Lolg;

    invoke-interface {p0, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final G(II)V
    .locals 3

    iget-object v0, p0, Ll6j;->K:Ls5h;

    invoke-virtual {v0}, Ls5h;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ll6j;->K:Ls5h;

    invoke-virtual {v0}, Ls5h;->a()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Ls5h;

    invoke-direct {v0, p1, p2}, Ls5h;-><init>(II)V

    iput-object v0, p0, Ll6j;->K:Ls5h;

    iget-object v0, p0, Ll6j;->l:Lxqg;

    new-instance v1, Lh4j;

    invoke-direct {v1, p1, p2}, Lh4j;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lxqg;->d(ILiog;)V

    invoke-virtual {v0}, Lxqg;->c()V

    new-instance v0, Ls5h;

    invoke-direct {v0, p1, p2}, Ls5h;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Ll6j;->H(IILjava/lang/Object;)V

    return-void
.end method

.method public final H(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ll6j;->g:[Lx9j;

    array-length v1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    if-eq p1, v3, :cond_0

    invoke-interface {v4}, Lx9j;->zzb()I

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ll6j;->E(Ls9j;)Lt9j;

    move-result-object v3

    invoke-virtual {v3, p2}, Lt9j;->f(I)Lt9j;

    invoke-virtual {v3, p3}, Lt9j;->e(Ljava/lang/Object;)Lt9j;

    invoke-virtual {v3}, Lt9j;->d()Lt9j;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ll6j;->h:[Lx9j;

    array-length v2, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    if-eq p1, v3, :cond_3

    invoke-interface {v2}, Lx9j;->zzb()I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Ll6j;->E(Ls9j;)Lt9j;

    move-result-object v2

    invoke-virtual {v2, p2}, Lt9j;->f(I)Lt9j;

    invoke-virtual {v2, p3}, Lt9j;->e(Ljava/lang/Object;)Lt9j;

    invoke-virtual {v2}, Lt9j;->d()Lt9j;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final I(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ll6j;->H:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-wide v2, p0, Ll6j;->y:J

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget-object v0, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/vb;->t0(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll6j;->H:Ljava/lang/Object;

    iget-object v2, p0, Ll6j;->I:Landroid/view/Surface;

    if-ne v1, v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Ll6j;->I:Landroid/view/Surface;

    :cond_2
    iput-object p1, p0, Ll6j;->H:Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzko;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzko;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll6j;->J(Lcom/google/android/gms/internal/ads/zzii;)V

    :cond_3
    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/ads/zzii;)V
    .locals 11

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v0, v1}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v0

    iget-wide v1, v0, Lo9j;->s:J

    iput-wide v1, v0, Lo9j;->q:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lo9j;->r:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ll6j;->C(Lo9j;I)Lo9j;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lo9j;->e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Ll6j;->A:I

    add-int/2addr p1, v1

    iput p1, p0, Ll6j;->A:I

    iget-object p1, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vb;->r0()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Ll6j;->K(Lo9j;IZIJIZ)V

    return-void
.end method

.method public final K(Lo9j;IZIJIZ)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Ll6j;->S:Lo9j;

    iput-object v1, v0, Ll6j;->S:Lo9j;

    iget-object v4, v3, Lo9j;->a:Lw4f;

    iget-object v5, v1, Lo9j;->a:Lw4f;

    invoke-virtual {v4, v5}, Lw4f;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5}, Lw4f;->o()Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide/16 v12, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lw4f;->o()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v8, v7

    move/from16 v7, p3

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v5}, Lw4f;->o()Z

    move-result v7

    invoke-virtual {v4}, Lw4f;->o()Z

    move-result v8

    if-eq v7, v8, :cond_1

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v7, v3, Lo9j;->b:Lbnj;

    iget-object v8, v7, Lbnj;->a:Ljava/lang/Object;

    iget-object v9, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v4, v8, v9}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v8

    iget v8, v8, Ly2f;->c:I

    iget-object v10, v0, Lr6i;->a:Le4f;

    invoke-virtual {v4, v8, v10, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v8

    iget-object v8, v8, Le4f;->a:Ljava/lang/Object;

    iget-object v15, v1, Lo9j;->b:Lbnj;

    iget-object v14, v15, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v5, v14, v9}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v9

    iget v9, v9, Ly2f;->c:I

    invoke-virtual {v5, v9, v10, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v9

    iget-object v9, v9, Le4f;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_4

    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    move v7, v8

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v8, 0x3

    :goto_2
    new-instance v9, Landroid/util/Pair;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    iget-wide v7, v7, Lbnj;->d:J

    iget-wide v9, v15, Lbnj;->d:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_7

    new-instance v7, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v7

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    move v7, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v7, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v8, Landroid/util/Pair;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v8, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v41, v7

    move v7, v2

    move/from16 v2, v41

    :goto_4
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v9, :cond_b

    invoke-virtual {v5}, Lw4f;->o()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v1, Lo9j;->b:Lbnj;

    iget-object v11, v11, Lbnj;->a:Ljava/lang/Object;

    iget-object v14, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v5, v11, v14}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v11

    iget v11, v11, Ly2f;->c:I

    iget-object v14, v0, Lr6i;->a:Le4f;

    invoke-virtual {v5, v11, v14, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v5

    iget-object v5, v5, Le4f;->c:Lcme;

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    sget-object v11, Lipe;->B:Lipe;

    iput-object v11, v0, Ll6j;->R:Lipe;

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-nez v9, :cond_c

    iget-object v11, v3, Lo9j;->j:Ljava/util/List;

    iget-object v14, v1, Lo9j;->j:Ljava/util/List;

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :cond_c
    iget-object v11, v0, Ll6j;->R:Lipe;

    invoke-virtual {v11}, Lipe;->a()Lune;

    move-result-object v11

    iget-object v14, v1, Lo9j;->j:Ljava/util/List;

    const/4 v15, 0x0

    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_e

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhre;

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v10}, Lhre;->a()I

    move-result v13

    if-ge v12, v13, :cond_d

    invoke-virtual {v10, v12}, Lhre;->b(I)Liqe;

    move-result-object v13

    invoke-interface {v13, v11}, Liqe;->a(Lune;)V

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_8

    :cond_d
    const/4 v13, 0x1

    add-int/2addr v15, v13

    const-wide/16 v12, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v11}, Lune;->T()Lipe;

    move-result-object v10

    iput-object v10, v0, Ll6j;->R:Lipe;

    :cond_f
    invoke-virtual/range {p0 .. p0}, Ll6j;->zzo()Lw4f;

    move-result-object v10

    invoke-virtual {v10}, Lw4f;->o()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v10, v0, Ll6j;->R:Lipe;

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Ll6j;->zze()I

    move-result v11

    iget-object v12, v0, Lr6i;->a:Le4f;

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v10

    iget-object v10, v10, Le4f;->c:Lcme;

    iget-object v11, v0, Ll6j;->R:Lipe;

    invoke-virtual {v11}, Lipe;->a()Lune;

    move-result-object v11

    iget-object v10, v10, Lcme;->d:Lipe;

    invoke-virtual {v11, v10}, Lune;->y(Lipe;)Lune;

    invoke-virtual {v11}, Lune;->T()Lipe;

    move-result-object v10

    :goto_9
    iget-object v11, v0, Ll6j;->G:Lipe;

    invoke-virtual {v10, v11}, Lipe;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-object v10, v0, Ll6j;->G:Lipe;

    iget-boolean v10, v3, Lo9j;->l:Z

    iget-boolean v12, v1, Lo9j;->l:Z

    if-eq v10, v12, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    iget v12, v3, Lo9j;->e:I

    iget v13, v1, Lo9j;->e:I

    if-eq v12, v13, :cond_12

    const/4 v12, 0x1

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    if-nez v12, :cond_13

    if-eqz v10, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Ll6j;->L()V

    :cond_14
    iget-boolean v13, v3, Lo9j;->g:Z

    iget-boolean v14, v1, Lo9j;->g:Z

    if-eq v13, v14, :cond_15

    const/4 v13, 0x1

    goto :goto_c

    :cond_15
    const/4 v13, 0x0

    :goto_c
    if-nez v6, :cond_16

    iget-object v6, v0, Ll6j;->l:Lxqg;

    new-instance v14, Lr3j;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15}, Lr3j;-><init>(Lo9j;I)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Lxqg;->d(ILiog;)V

    :cond_16
    if-eqz v7, :cond_1e

    new-instance v7, Ly2f;

    invoke-direct {v7}, Ly2f;-><init>()V

    invoke-virtual {v4}, Lw4f;->o()Z

    move-result v14

    if-nez v14, :cond_17

    iget-object v14, v3, Lo9j;->b:Lbnj;

    iget-object v14, v14, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v4, v14, v7}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v15, v7, Ly2f;->c:I

    invoke-virtual {v4, v14}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v17

    iget-object v6, v0, Lr6i;->a:Le4f;

    move/from16 p4, v12

    move/from16 v18, v13

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v15, v6, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v4

    iget-object v4, v4, Le4f;->a:Ljava/lang/Object;

    iget-object v6, v6, Le4f;->c:Lcme;

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    move/from16 v21, v15

    move/from16 v24, v17

    goto :goto_d

    :cond_17
    move/from16 p4, v12

    move/from16 v18, v13

    move/from16 v21, p7

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    :goto_d
    if-nez v2, :cond_1a

    iget-object v4, v3, Lo9j;->b:Lbnj;

    invoke-virtual {v4}, Lbnj;->b()Z

    move-result v6

    if-eqz v6, :cond_18

    iget v6, v4, Lbnj;->b:I

    iget v4, v4, Lbnj;->c:I

    invoke-virtual {v7, v6, v4}, Ly2f;->f(II)J

    move-result-wide v6

    invoke-static {v3}, Ll6j;->z(Lo9j;)J

    move-result-wide v12

    goto :goto_f

    :cond_18
    iget v4, v4, Lbnj;->e:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_19

    iget-object v4, v0, Ll6j;->S:Lo9j;

    invoke-static {v4}, Ll6j;->z(Lo9j;)J

    move-result-wide v6

    :goto_e
    move-wide v12, v6

    goto :goto_f

    :cond_19
    iget-wide v6, v7, Ly2f;->d:J

    goto :goto_e

    :cond_1a
    iget-object v4, v3, Lo9j;->b:Lbnj;

    invoke-virtual {v4}, Lbnj;->b()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-wide v6, v3, Lo9j;->s:J

    invoke-static {v3}, Ll6j;->z(Lo9j;)J

    move-result-wide v12

    goto :goto_f

    :cond_1b
    iget-wide v6, v3, Lo9j;->s:J

    goto :goto_e

    :goto_f
    new-instance v4, Lv0f;

    sget v14, Lkfh;->a:I

    iget-object v14, v3, Lo9j;->b:Lbnj;

    iget v15, v14, Lbnj;->b:I

    iget v14, v14, Lbnj;->c:I

    invoke-static {v6, v7}, Lkfh;->Q(J)J

    move-result-wide v25

    invoke-static {v12, v13}, Lkfh;->Q(J)J

    move-result-wide v27

    move-object/from16 v19, v4

    move/from16 v29, v15

    move/from16 v30, v14

    invoke-direct/range {v19 .. v30}, Lv0f;-><init>(Ljava/lang/Object;ILcme;Ljava/lang/Object;IJJII)V

    invoke-virtual/range {p0 .. p0}, Ll6j;->zze()I

    move-result v6

    iget-object v7, v0, Ll6j;->S:Lo9j;

    iget-object v7, v7, Lo9j;->a:Lw4f;

    invoke-virtual {v7}, Lw4f;->o()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, v0, Ll6j;->S:Lo9j;

    iget-object v12, v7, Lo9j;->b:Lbnj;

    iget-object v12, v12, Lbnj;->a:Ljava/lang/Object;

    iget-object v7, v7, Lo9j;->a:Lw4f;

    iget-object v13, v0, Ll6j;->n:Ly2f;

    invoke-virtual {v7, v12, v13}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget-object v7, v0, Ll6j;->S:Lo9j;

    iget-object v7, v7, Lo9j;->a:Lw4f;

    invoke-virtual {v7, v12}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v7

    iget-object v13, v0, Ll6j;->S:Lo9j;

    iget-object v13, v13, Lo9j;->a:Lw4f;

    iget-object v14, v0, Lr6i;->a:Le4f;

    move/from16 v17, v10

    move v15, v11

    const-wide/16 v10, 0x0

    invoke-virtual {v13, v6, v14, v10, v11}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v13

    iget-object v10, v13, Le4f;->a:Ljava/lang/Object;

    iget-object v11, v14, Le4f;->c:Lcme;

    move/from16 v34, v7

    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    goto :goto_10

    :cond_1c
    move/from16 v17, v10

    move v15, v11

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    :goto_10
    invoke-static/range {p5 .. p6}, Lkfh;->Q(J)J

    move-result-wide v35

    new-instance v7, Lv0f;

    iget-object v10, v0, Ll6j;->S:Lo9j;

    iget-object v10, v10, Lo9j;->b:Lbnj;

    invoke-virtual {v10}, Lbnj;->b()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, v0, Ll6j;->S:Lo9j;

    invoke-static {v10}, Ll6j;->z(Lo9j;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lkfh;->Q(J)J

    move-result-wide v10

    move-wide/from16 v37, v10

    goto :goto_11

    :cond_1d
    move-wide/from16 v37, v35

    :goto_11
    iget-object v10, v0, Ll6j;->S:Lo9j;

    iget-object v10, v10, Lo9j;->b:Lbnj;

    iget v11, v10, Lbnj;->b:I

    iget v10, v10, Lbnj;->c:I

    move-object/from16 v29, v7

    move/from16 v31, v6

    move/from16 v39, v11

    move/from16 v40, v10

    invoke-direct/range {v29 .. v40}, Lv0f;-><init>(Ljava/lang/Object;ILcme;Ljava/lang/Object;IJJII)V

    iget-object v6, v0, Ll6j;->l:Lxqg;

    new-instance v10, Lk5j;

    invoke-direct {v10, v2, v4, v7}, Lk5j;-><init>(ILv0f;Lv0f;)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v10}, Lxqg;->d(ILiog;)V

    goto :goto_12

    :cond_1e
    move/from16 v17, v10

    move v15, v11

    move/from16 p4, v12

    move/from16 v18, v13

    :goto_12
    if-eqz v9, :cond_1f

    iget-object v2, v0, Ll6j;->l:Lxqg;

    new-instance v4, Lm5j;

    invoke-direct {v4, v5, v8}, Lm5j;-><init>(Lcme;I)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lxqg;->d(ILiog;)V

    :cond_1f
    iget-object v2, v3, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-object v4, v1, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    const/16 v5, 0xa

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Ll6j;->l:Lxqg;

    new-instance v6, Lo5j;

    invoke-direct {v6, v1}, Lo5j;-><init>(Lo9j;)V

    invoke-virtual {v2, v5, v6}, Lxqg;->d(ILiog;)V

    if-eqz v4, :cond_20

    new-instance v4, Lq5j;

    invoke-direct {v4, v1}, Lq5j;-><init>(Lo9j;)V

    invoke-virtual {v2, v5, v4}, Lxqg;->d(ILiog;)V

    :cond_20
    iget-object v2, v3, Lo9j;->i:Larj;

    iget-object v4, v1, Lo9j;->i:Larj;

    if-eq v2, v4, :cond_21

    iget-object v2, v0, Ll6j;->i:Lzqj;

    iget-object v4, v4, Larj;->e:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lzqj;->g(Ljava/lang/Object;)V

    iget-object v2, v0, Ll6j;->l:Lxqg;

    new-instance v4, Ls5j;

    invoke-direct {v4, v1}, Ls5j;-><init>(Lo9j;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4}, Lxqg;->d(ILiog;)V

    :cond_21
    if-nez v15, :cond_22

    iget-object v2, v0, Ll6j;->G:Lipe;

    iget-object v4, v0, Ll6j;->l:Lxqg;

    new-instance v6, Lt3j;

    invoke-direct {v6, v2}, Lt3j;-><init>(Lipe;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v6}, Lxqg;->d(ILiog;)V

    :cond_22
    if-eqz v18, :cond_23

    iget-object v2, v0, Ll6j;->l:Lxqg;

    new-instance v4, Lw3j;

    invoke-direct {v4, v1}, Lw3j;-><init>(Lo9j;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Lxqg;->d(ILiog;)V

    :cond_23
    if-nez p4, :cond_24

    if-eqz v17, :cond_25

    :cond_24
    iget-object v2, v0, Ll6j;->l:Lxqg;

    new-instance v4, Ly3j;

    invoke-direct {v4, v1}, Ly3j;-><init>(Lo9j;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, Lxqg;->d(ILiog;)V

    :cond_25
    const/4 v2, 0x4

    if-eqz p4, :cond_26

    iget-object v4, v0, Ll6j;->l:Lxqg;

    new-instance v6, Lb4j;

    invoke-direct {v6, v1}, Lb4j;-><init>(Lo9j;)V

    invoke-virtual {v4, v2, v6}, Lxqg;->d(ILiog;)V

    :cond_26
    const/4 v4, 0x5

    if-nez v17, :cond_27

    iget v6, v3, Lo9j;->m:I

    iget v7, v1, Lo9j;->m:I

    if-eq v6, v7, :cond_28

    :cond_27
    iget-object v6, v0, Ll6j;->l:Lxqg;

    new-instance v7, Ln4j;

    invoke-direct {v7, v1}, Ln4j;-><init>(Lo9j;)V

    invoke-virtual {v6, v4, v7}, Lxqg;->d(ILiog;)V

    :cond_28
    iget v6, v3, Lo9j;->n:I

    iget v7, v1, Lo9j;->n:I

    const/4 v8, 0x6

    if-eq v6, v7, :cond_29

    iget-object v6, v0, Ll6j;->l:Lxqg;

    new-instance v7, Lb5j;

    invoke-direct {v7, v1}, Lb5j;-><init>(Lo9j;)V

    invoke-virtual {v6, v8, v7}, Lxqg;->d(ILiog;)V

    :cond_29
    invoke-virtual {v3}, Lo9j;->j()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lo9j;->j()Z

    move-result v7

    const/4 v9, 0x7

    if-eq v6, v7, :cond_2a

    iget-object v6, v0, Ll6j;->l:Lxqg;

    new-instance v7, Lg5j;

    invoke-direct {v7, v1}, Lg5j;-><init>(Lo9j;)V

    invoke-virtual {v6, v9, v7}, Lxqg;->d(ILiog;)V

    :cond_2a
    iget-object v3, v3, Lo9j;->o:Lvwe;

    iget-object v6, v1, Lo9j;->o:Lvwe;

    invoke-virtual {v3, v6}, Lvwe;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0xc

    if-nez v3, :cond_2b

    iget-object v3, v0, Ll6j;->l:Lxqg;

    new-instance v7, Li5j;

    invoke-direct {v7, v1}, Li5j;-><init>(Lo9j;)V

    invoke-virtual {v3, v6, v7}, Lxqg;->d(ILiog;)V

    :cond_2b
    iget-object v1, v0, Ll6j;->F:Luye;

    iget-object v3, v0, Ll6j;->f:Ll1f;

    iget-object v7, v0, Ll6j;->c:Luye;

    sget v10, Lkfh;->a:I

    invoke-interface {v3}, Ll1f;->zzx()Z

    move-result v10

    move-object v11, v3

    check-cast v11, Lr6i;

    invoke-interface {v11}, Ll1f;->zzo()Lw4f;

    move-result-object v12

    invoke-virtual {v12}, Lw4f;->o()Z

    move-result v13

    if-nez v13, :cond_2c

    invoke-interface {v11}, Ll1f;->zze()I

    move-result v13

    iget-object v14, v11, Lr6i;->a:Le4f;

    const-wide/16 v5, 0x0

    invoke-virtual {v12, v13, v14, v5, v6}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v12

    iget-boolean v5, v12, Le4f;->g:Z

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_13

    :cond_2c
    const/4 v5, 0x0

    :goto_13
    invoke-interface {v11}, Ll1f;->zzo()Lw4f;

    move-result-object v6

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v12

    if-eqz v12, :cond_2d

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto :goto_14

    :cond_2d
    invoke-interface {v11}, Ll1f;->zze()I

    move-result v12

    invoke-interface {v11}, Ll1f;->zzi()I

    invoke-interface {v11}, Ll1f;->zzw()Z

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v13}, Lw4f;->k(IIZ)I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_2e

    const/16 v16, 0x1

    goto :goto_14

    :cond_2e
    move/from16 v16, v13

    :goto_14
    invoke-interface {v11}, Ll1f;->zzo()Lw4f;

    move-result-object v6

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v14

    if-eqz v14, :cond_30

    :cond_2f
    move v6, v13

    goto :goto_15

    :cond_30
    invoke-interface {v11}, Ll1f;->zze()I

    move-result v14

    invoke-interface {v11}, Ll1f;->zzi()I

    invoke-interface {v11}, Ll1f;->zzw()Z

    invoke-virtual {v6, v14, v13, v13}, Lw4f;->j(IIZ)I

    move-result v6

    if-eq v6, v12, :cond_2f

    const/4 v6, 0x1

    :goto_15
    invoke-interface {v11}, Ll1f;->zzo()Lw4f;

    move-result-object v12

    invoke-virtual {v12}, Lw4f;->o()Z

    move-result v14

    if-nez v14, :cond_32

    invoke-interface {v11}, Ll1f;->zze()I

    move-result v14

    iget-object v15, v11, Lr6i;->a:Le4f;

    const-wide/16 v8, 0x0

    invoke-virtual {v12, v14, v15, v8, v9}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v12

    invoke-virtual {v12}, Le4f;->b()Z

    move-result v12

    if-eqz v12, :cond_31

    const/4 v12, 0x1

    goto :goto_17

    :cond_31
    :goto_16
    move v12, v13

    goto :goto_17

    :cond_32
    const-wide/16 v8, 0x0

    goto :goto_16

    :goto_17
    invoke-interface {v11}, Ll1f;->zzo()Lw4f;

    move-result-object v14

    invoke-virtual {v14}, Lw4f;->o()Z

    move-result v15

    if-nez v15, :cond_33

    invoke-interface {v11}, Ll1f;->zze()I

    move-result v15

    iget-object v11, v11, Lr6i;->a:Le4f;

    invoke-virtual {v14, v15, v11, v8, v9}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v8

    iget-boolean v8, v8, Le4f;->h:Z

    if-eqz v8, :cond_33

    const/4 v9, 0x1

    goto :goto_18

    :cond_33
    move v9, v13

    :goto_18
    invoke-interface {v3}, Ll1f;->zzo()Lw4f;

    move-result-object v3

    invoke-virtual {v3}, Lw4f;->o()Z

    move-result v3

    new-instance v8, Ltxe;

    invoke-direct {v8}, Ltxe;-><init>()V

    invoke-virtual {v8, v7}, Ltxe;->b(Luye;)Ltxe;

    const/4 v7, 0x1

    xor-int/lit8 v11, v10, 0x1

    invoke-virtual {v8, v2, v11}, Ltxe;->d(IZ)Ltxe;

    if-eqz v5, :cond_34

    if-nez v10, :cond_34

    move v2, v7

    goto :goto_19

    :cond_34
    move v2, v13

    :goto_19
    invoke-virtual {v8, v4, v2}, Ltxe;->d(IZ)Ltxe;

    if-eqz v16, :cond_35

    if-nez v10, :cond_35

    move v2, v7

    :goto_1a
    const/4 v4, 0x6

    goto :goto_1b

    :cond_35
    move v2, v13

    goto :goto_1a

    :goto_1b
    invoke-virtual {v8, v4, v2}, Ltxe;->d(IZ)Ltxe;

    if-nez v3, :cond_36

    if-nez v16, :cond_37

    if-eqz v12, :cond_37

    if-eqz v5, :cond_36

    goto :goto_1d

    :cond_36
    move v2, v13

    :goto_1c
    const/4 v4, 0x7

    goto :goto_1e

    :cond_37
    :goto_1d
    if-nez v10, :cond_36

    move v2, v7

    goto :goto_1c

    :goto_1e
    invoke-virtual {v8, v4, v2}, Ltxe;->d(IZ)Ltxe;

    if-eqz v6, :cond_38

    if-nez v10, :cond_38

    move v2, v7

    goto :goto_1f

    :cond_38
    move v2, v13

    :goto_1f
    const/16 v4, 0x8

    invoke-virtual {v8, v4, v2}, Ltxe;->d(IZ)Ltxe;

    if-nez v3, :cond_39

    if-nez v6, :cond_3a

    if-eqz v12, :cond_39

    if-eqz v9, :cond_39

    goto :goto_20

    :cond_39
    move v9, v13

    goto :goto_21

    :cond_3a
    :goto_20
    if-nez v10, :cond_39

    move v9, v7

    :goto_21
    const/16 v2, 0x9

    invoke-virtual {v8, v2, v9}, Ltxe;->d(IZ)Ltxe;

    const/16 v2, 0xa

    invoke-virtual {v8, v2, v11}, Ltxe;->d(IZ)Ltxe;

    if-eqz v5, :cond_3b

    if-nez v10, :cond_3b

    move v9, v7

    :goto_22
    const/16 v2, 0xb

    goto :goto_23

    :cond_3b
    move v9, v13

    goto :goto_22

    :goto_23
    invoke-virtual {v8, v2, v9}, Ltxe;->d(IZ)Ltxe;

    if-eqz v5, :cond_3c

    if-nez v10, :cond_3c

    move v14, v7

    :goto_24
    const/16 v2, 0xc

    goto :goto_25

    :cond_3c
    move v14, v13

    goto :goto_24

    :goto_25
    invoke-virtual {v8, v2, v14}, Ltxe;->d(IZ)Ltxe;

    invoke-virtual {v8}, Ltxe;->e()Luye;

    move-result-object v2

    iput-object v2, v0, Ll6j;->F:Luye;

    invoke-virtual {v2, v1}, Luye;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, v0, Ll6j;->l:Lxqg;

    new-instance v2, Le5j;

    invoke-direct {v2, v0}, Le5j;-><init>(Ll6j;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lxqg;->d(ILiog;)V

    :cond_3d
    iget-object v0, v0, Ll6j;->l:Lxqg;

    invoke-virtual {v0}, Lxqg;->c()V

    return-void
.end method

.method public final L()V
    .locals 2

    invoke-virtual {p0}, Ll6j;->zzg()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ll6j;->w:Loaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loaj;->a(Z)V

    iget-object p0, p0, Ll6j;->x:Lpaj;

    invoke-virtual {p0, v1}, Lpaj;->a(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-boolean v0, v0, Lo9j;->p:Z

    iget-object v0, p0, Ll6j;->w:Loaj;

    invoke-virtual {p0}, Ll6j;->zzv()Z

    move-result v1

    invoke-virtual {v0, v1}, Loaj;->a(Z)V

    iget-object v0, p0, Ll6j;->x:Lpaj;

    invoke-virtual {p0}, Ll6j;->zzv()Z

    move-result p0

    invoke-virtual {v0, p0}, Lpaj;->a(Z)V

    return-void
.end method

.method public final M()V
    .locals 3

    iget-object v0, p0, Ll6j;->d:Loeg;

    invoke-virtual {v0}, Loeg;->b()V

    iget-object v0, p0, Ll6j;->r:Landroid/os/Looper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget v1, Lkfh;->a:I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Ll6j;->O:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ll6j;->P:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6j;->P:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0, p1}, Ll6j;->I(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, p1}, Ll6j;->G(II)V

    return-void
.end method

.method public final c(F)V
    .locals 1

    invoke-virtual {p0}, Ll6j;->M()V

    sget v0, Lkfh;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Ll6j;->M:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ll6j;->M:F

    iget-object v0, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vb;->q0(F)V

    iget-object p0, p0, Ll6j;->l:Lxqg;

    new-instance v0, Lc4j;

    invoke-direct {v0, p1}, Lc4j;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lxqg;->d(ILiog;)V

    invoke-virtual {p0}, Lxqg;->c()V

    return-void
.end method

.method public final d(Ltaj;)V
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->q:Lqaj;

    invoke-interface {p0, p1}, Lqaj;->M(Ltaj;)V

    return-void
.end method

.method public final e(Lknj;)V
    .locals 12

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v2, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v2}, Ll6j;->w(Lo9j;)I

    invoke-virtual {p0}, Ll6j;->zzl()J

    iget v2, p0, Ll6j;->A:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Ll6j;->A:I

    iget-object v2, p0, Ll6j;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    :goto_0
    if-ltz v6, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Ll6j;->W:Lbpj;

    invoke-virtual {v6, v5, v4}, Lbpj;->h(II)Lbpj;

    move-result-object v4

    iput-object v4, p0, Ll6j;->W:Lbpj;

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    new-instance v6, Lh9j;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lknj;

    iget-boolean v9, p0, Ll6j;->p:Z

    invoke-direct {v6, v8, v9}, Lh9j;-><init>(Lknj;Z)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lh9j;->b:Ljava/lang/Object;

    iget-object v6, v6, Lh9j;->a:Lwmj;

    new-instance v9, Le6j;

    invoke-direct {v9, v8, v6}, Le6j;-><init>(Ljava/lang/Object;Lwmj;)V

    invoke-interface {v2, v4, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ll6j;->W:Lbpj;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lbpj;->g(II)Lbpj;

    move-result-object v1

    iput-object v1, p0, Ll6j;->W:Lbpj;

    new-instance v1, Lv9j;

    iget-object v4, p0, Ll6j;->W:Lbpj;

    invoke-direct {v1, v2, v4}, Lv9j;-><init>(Ljava/util/Collection;Lbpj;)V

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v2

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lw4f;->c()I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaa;

    invoke-direct {v0, v1, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(Lw4f;IJ)V

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lw4f;->g(Z)I

    move-result v2

    iget-object v6, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v1, v2, v8, v9}, Ll6j;->B(Lw4f;IJ)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {p0, v6, v1, v10}, Ll6j;->D(Lo9j;Lw4f;Landroid/util/Pair;)Lo9j;

    move-result-object v6

    iget v10, v6, Lo9j;->e:I

    if-eq v2, v4, :cond_6

    if-eq v10, v3, :cond_6

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v4

    const/4 v10, 0x4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lw4f;->c()I

    move-result v1

    if-lt v2, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x2

    :cond_6
    :goto_3
    invoke-static {v6, v10}, Ll6j;->C(Lo9j;I)Lo9j;

    move-result-object v1

    iget-object v6, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-static {v8, v9}, Lkfh;->N(J)J

    move-result-wide v9

    iget-object v11, p0, Ll6j;->W:Lbpj;

    move v8, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/vb;->u0(Ljava/util/List;IJLbpj;)V

    iget-object v2, p0, Ll6j;->S:Lo9j;

    iget-object v2, v2, Lo9j;->b:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    iget-object v4, v1, Lo9j;->b:Lbnj;

    iget-object v4, v4, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ll6j;->S:Lo9j;

    iget-object v2, v2, Lo9j;->a:Lw4f;

    invoke-virtual {v2}, Lw4f;->o()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    move v3, v5

    :goto_4
    invoke-virtual {p0, v1}, Ll6j;->y(Lo9j;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ll6j;->K(Lo9j;IZIJIZ)V

    return-void
.end method

.method public final f(Z)V
    .locals 13

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget v1, v0, Lo9j;->n:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_0

    move v1, v3

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    iget-boolean v4, v0, Lo9j;->l:Z

    if-ne v4, p1, :cond_2

    if-ne v1, v2, :cond_2

    iget v1, v0, Lo9j;->m:I

    if-ne v1, v3, :cond_2

    return-void

    :cond_2
    iget v1, p0, Ll6j;->A:I

    add-int/2addr v1, v3

    iput v1, p0, Ll6j;->A:I

    invoke-virtual {v0, p1, v3, v2}, Lo9j;->d(ZII)Lo9j;

    move-result-object v5

    iget-object v0, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/vb;->p0(ZII)V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Ll6j;->K(Lo9j;IZIJIZ)V

    return-void
.end method

.method public final g(Ltaj;)V
    .locals 0

    iget-object p0, p0, Ll6j;->q:Lqaj;

    invoke-interface {p0, p1}, Lqaj;->N(Ltaj;)V

    return-void
.end method

.method public final h(IJIZ)V
    .locals 9

    invoke-virtual {p0}, Ll6j;->M()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    move p5, p4

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    invoke-static {p5}, Ln7g;->d(Z)V

    iget-object p5, p0, Ll6j;->S:Lo9j;

    iget-object p5, p5, Lo9j;->a:Lw4f;

    invoke-virtual {p5}, Lw4f;->o()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Lw4f;->c()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Ll6j;->q:Lqaj;

    invoke-interface {v0}, Lqaj;->zzv()V

    iget v0, p0, Ll6j;->A:I

    add-int/2addr v0, p4

    iput v0, p0, Ll6j;->A:I

    invoke-virtual {p0}, Ll6j;->zzx()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lg7j;

    iget-object p2, p0, Ll6j;->S:Lo9j;

    invoke-direct {p1, p2}, Lg7j;-><init>(Lo9j;)V

    invoke-virtual {p1, p4}, Lg7j;->a(I)V

    iget-object p0, p0, Ll6j;->V:Lt4j;

    iget-object p0, p0, Lt4j;->a:Ll6j;

    invoke-virtual {p0, p1}, Ll6j;->F(Lg7j;)V

    return-void

    :cond_4
    iget-object p4, p0, Ll6j;->S:Lo9j;

    iget v0, p4, Lo9j;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    invoke-virtual {p5}, Lw4f;->o()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p4, p0, Ll6j;->S:Lo9j;

    const/4 v0, 0x2

    invoke-static {p4, v0}, Ll6j;->C(Lo9j;I)Lo9j;

    move-result-object p4

    :cond_6
    invoke-virtual {p0}, Ll6j;->zze()I

    move-result v7

    invoke-virtual {p0, p5, p1, p2, p3}, Ll6j;->B(Lw4f;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p4, p5, v0}, Ll6j;->D(Lo9j;Lw4f;Landroid/util/Pair;)Lo9j;

    move-result-object v1

    iget-object p4, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-static {p2, p3}, Lkfh;->N(J)J

    move-result-wide p2

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/vb;->n0(Lw4f;IJ)V

    invoke-virtual {p0, v1}, Ll6j;->y(Lo9j;)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ll6j;->K(Lo9j;IZIJIZ)V

    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzii;
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    return-object p0
.end method

.method public final w(Lo9j;)I
    .locals 2

    iget-object v0, p1, Lo9j;->a:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Ll6j;->T:I

    return p0

    :cond_0
    iget-object p1, p1, Lo9j;->b:Lbnj;

    iget-object p1, p1, Lbnj;->a:Ljava/lang/Object;

    iget-object p0, p0, Ll6j;->n:Ly2f;

    invoke-virtual {v0, p1, p0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p0

    iget p0, p0, Ly2f;->c:I

    return p0
.end method

.method public final x(Lo9j;)J
    .locals 6

    iget-object v0, p1, Lo9j;->b:Lbnj;

    invoke-virtual {v0}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lo9j;->a:Lw4f;

    iget-object v0, v0, Lbnj;->a:Ljava/lang/Object;

    iget-object v2, p0, Ll6j;->n:Ly2f;

    invoke-virtual {v1, v0, v2}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget-wide v2, p1, Lo9j;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ll6j;->w(Lo9j;)I

    move-result p1

    iget-object p0, p0, Lr6i;->a:Le4f;

    invoke-virtual {v1, p1, p0, v4, v5}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget-wide p0, p0, Le4f;->k:J

    invoke-static {v4, v5}, Lkfh;->Q(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lkfh;->Q(J)J

    move-result-wide p0

    invoke-static {v2, v3}, Lkfh;->Q(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    :goto_0
    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Ll6j;->y(Lo9j;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkfh;->Q(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final y(Lo9j;)J
    .locals 4

    iget-object v0, p1, Lo9j;->a:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide p0, p0, Ll6j;->U:J

    invoke-static {p0, p1}, Lkfh;->N(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-wide v1, p1, Lo9j;->s:J

    iget-object p1, p1, Lo9j;->b:Lbnj;

    invoke-virtual {p1}, Lbnj;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {p0, v0, p1, v1, v2}, Ll6j;->A(Lw4f;Lbnj;J)J

    return-wide v1
.end method

.method public final zzA()V
    .locals 5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkfh;->b:Ljava/lang/String;

    invoke-static {}, Lsme;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [AndroidXMedia3/1.6.0] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->w:Loaj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loaj;->a(Z)V

    iget-object v0, p0, Ll6j;->x:Lpaj;

    invoke-virtual {v0, v1}, Lpaj;->a(Z)V

    iget-object v0, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vb;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll6j;->l:Lxqg;

    new-instance v1, Lj4j;

    invoke-direct {v1}, Lj4j;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lxqg;->d(ILiog;)V

    invoke-virtual {v0}, Lxqg;->c()V

    :cond_0
    iget-object v0, p0, Ll6j;->l:Lxqg;

    invoke-virtual {v0}, Lxqg;->e()V

    iget-object v0, p0, Ll6j;->j:Lolg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lolg;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Ll6j;->s:Lmrj;

    iget-object v2, p0, Ll6j;->q:Lqaj;

    invoke-interface {v0, v2}, Lmrj;->b(Llrj;)V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-boolean v3, v0, Lo9j;->p:Z

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ll6j;->C(Lo9j;I)Lo9j;

    move-result-object v0

    iput-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v0, v3}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v0

    iput-object v0, p0, Ll6j;->S:Lo9j;

    iget-wide v3, v0, Lo9j;->s:J

    iput-wide v3, v0, Lo9j;->q:J

    iget-object v0, p0, Ll6j;->S:Lo9j;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lo9j;->r:J

    invoke-interface {v2}, Lqaj;->zzR()V

    iget-object v0, p0, Ll6j;->I:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Ll6j;->I:Landroid/view/Surface;

    :cond_1
    sget p0, Lhzf;->a:I

    return-void
.end method

.method public final zzc()I
    .locals 1

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0}, Ll6j;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->b:Lbnj;

    iget p0, p0, Lbnj;->b:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final zzd()I
    .locals 1

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0}, Ll6j;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->b:Lbnj;

    iget p0, p0, Lbnj;->c:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final zze()I
    .locals 1

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v0}, Ll6j;->w(Lo9j;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final zzf()I
    .locals 1

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object v0, p0, Lo9j;->a:Lw4f;

    iget-object p0, p0, Lo9j;->b:Lbnj;

    iget-object p0, p0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zzg()I
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget p0, p0, Lo9j;->e:I

    return p0
.end method

.method public final zzh()I
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget p0, p0, Lo9j;->n:I

    return p0
.end method

.method public final zzi()I
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()J
    .locals 5

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0}, Ll6j;->zzx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->k:Lbnj;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v1, v0}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-wide v0, p0, Lo9j;->q:J

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ll6j;->zzm()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Ll6j;->U:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->k:Lbnj;

    iget-wide v1, v1, Lbnj;->d:J

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-wide v3, v3, Lbnj;->d:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v0, Lo9j;->a:Lw4f;

    invoke-virtual {p0}, Ll6j;->zze()I

    move-result v1

    iget-object p0, p0, Lr6i;->a:Le4f;

    invoke-virtual {v0, v1, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget-wide v0, p0, Le4f;->l:J

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-wide v0, v0, Lo9j;->q:J

    iget-object v4, p0, Ll6j;->S:Lo9j;

    iget-object v4, v4, Lo9j;->k:Lbnj;

    invoke-virtual {v4}, Lbnj;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->a:Lw4f;

    iget-object v0, v0, Lo9j;->k:Lbnj;

    iget-object v0, v0, Lbnj;->a:Ljava/lang/Object;

    iget-object v4, p0, Ll6j;->n:Ly2f;

    invoke-virtual {v1, v0, v4}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v0

    iget-object v1, p0, Ll6j;->S:Lo9j;

    iget-object v1, v1, Lo9j;->k:Lbnj;

    iget v1, v1, Lbnj;->b:I

    invoke-virtual {v0, v1}, Ly2f;->g(I)J

    goto :goto_0

    :cond_4
    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->a:Lw4f;

    iget-object v0, v0, Lo9j;->k:Lbnj;

    invoke-virtual {p0, v1, v0, v2, v3}, Ll6j;->A(Lw4f;Lbnj;J)J

    invoke-static {v2, v3}, Lkfh;->Q(J)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v0}, Ll6j;->x(Lo9j;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    invoke-virtual {p0, v0}, Ll6j;->y(Lo9j;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 4

    invoke-virtual {p0}, Ll6j;->M()V

    invoke-virtual {p0}, Ll6j;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ll1f;->zzo()Lw4f;

    move-result-object v0

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-interface {p0}, Ll1f;->zze()I

    move-result v1

    iget-object p0, p0, Lr6i;->a:Le4f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget-wide v0, p0, Le4f;->l:J

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    iget-object v2, v1, Lbnj;->a:Ljava/lang/Object;

    iget-object p0, p0, Ll6j;->n:Ly2f;

    invoke-virtual {v0, v2, p0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v0, v1, Lbnj;->b:I

    iget v1, v1, Lbnj;->c:I

    invoke-virtual {p0, v0, v1}, Ly2f;->f(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-wide v0, p0, Lo9j;->r:J

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()Lw4f;
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->a:Lw4f;

    return-object p0
.end method

.method public final zzp()Lnaf;
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->i:Larj;

    iget-object p0, p0, Larj;->d:Lnaf;

    return-object p0
.end method

.method public final zzq()V
    .locals 12

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object v0, p0, Ll6j;->S:Lo9j;

    iget v1, v0, Lo9j;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo9j;->e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;

    move-result-object v0

    iget-object v1, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-static {v0, v1}, Ll6j;->C(Lo9j;I)Lo9j;

    move-result-object v4

    iget v0, p0, Ll6j;->A:I

    add-int/2addr v0, v2

    iput v0, p0, Ll6j;->A:I

    iget-object v0, p0, Ll6j;->k:Lcom/google/android/gms/internal/ads/vb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vb;->m0()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Ll6j;->K(Lo9j;IZIJIZ)V

    return-void
.end method

.method public final zzu()V
    .locals 3

    invoke-virtual {p0}, Ll6j;->M()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ll6j;->J(Lcom/google/android/gms/internal/ads/zzii;)V

    sget v0, Lhzf;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-wide v1, p0, Lo9j;->s:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method

.method public final zzv()Z
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-boolean p0, p0, Lo9j;->l:Z

    return p0
.end method

.method public final zzw()Z
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzx()Z
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->S:Lo9j;

    iget-object p0, p0, Lo9j;->b:Lbnj;

    invoke-virtual {p0}, Lbnj;->b()Z

    move-result p0

    return p0
.end method

.method public final zzy()I
    .locals 0

    invoke-virtual {p0}, Ll6j;->M()V

    iget-object p0, p0, Ll6j;->g:[Lx9j;

    array-length p0, p0

    const/4 p0, 0x2

    return p0
.end method
