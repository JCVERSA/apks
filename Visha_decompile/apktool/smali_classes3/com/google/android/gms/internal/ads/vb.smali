.class public final Lcom/google/android/gms/internal/ads/vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lymj;
.implements Lyqj;
.implements Lj9j;
.implements Lh2j;
.implements Lr9j;
.implements Lu0j;


# static fields
.field public static final Z:J


# instance fields
.field public A:Lo9j;

.field public B:Lg7j;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:J

.field public H:Z

.field public I:I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Li7j;

.field public N:J

.field public O:J

.field public P:I

.field public Q:Z

.field public R:Lcom/google/android/gms/internal/ads/zzii;

.field public S:J

.field public T:Ll3j;

.field public U:J

.field public V:Z

.field public W:F

.field public final X:Lt4j;

.field public final Y:Lw1j;

.field public final b:[Lcaj;

.field public final c:[Laaj;

.field public final d:[Z

.field public final e:Lzqj;

.field public final f:Larj;

.field public final g:Lt7j;

.field public final h:Lmrj;

.field public final i:Lolg;

.field public final j:Lq9j;

.field public final k:Landroid/os/Looper;

.field public final l:Le4f;

.field public final m:Ly2f;

.field public final n:J

.field public final o:Lj2j;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ltbg;

.field public final r:Li8j;

.field public final s:Lm9j;

.field public final t:J

.field public final u:Ltfj;

.field public final v:Lqaj;

.field public final w:Lolg;

.field public final x:Z

.field public final y:Lx0j;

.field public z:Lkaj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/vb;->Z:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lx9j;[Lx9j;Lzqj;Larj;Lt7j;Lmrj;IZLqaj;Lkaj;Lw1j;JZZLandroid/os/Looper;Ltbg;Lt4j;Ltfj;Lq9j;Ll3j;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p18

    move-object/from16 v7, p20

    move-object/from16 v8, p22

    const/4 v9, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/vb;->U:J

    move-object/from16 v12, p19

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->X:Lt4j;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->e:Lzqj;

    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->f:Larj;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/vb;->h:Lmrj;

    const/4 v13, 0x0

    iput v13, v0, Lcom/google/android/gms/internal/ads/vb;->I:I

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/vb;->J:Z

    move-object/from16 v14, p11

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/vb;->z:Lkaj;

    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    move-wide/from16 v14, p13

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/vb;->t:J

    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/vb;->D:Z

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->q:Ltbg;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/vb;->T:Ll3j;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/vb;->v:Lqaj;

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v0, Lcom/google/android/gms/internal/ads/vb;->W:F

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/vb;->S:J

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/vb;->G:J

    invoke-interface {v3, v7}, Lt7j;->d(Ltfj;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/vb;->n:J

    invoke-interface {v3, v7}, Lt7j;->i(Ltfj;)Z

    sget-object v3, Lw4f;->a:Lw4f;

    invoke-static/range {p5 .. p5}, Lo9j;->h(Larj;)Lo9j;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    new-instance v10, Lg7j;

    invoke-direct {v10, v3}, Lg7j;-><init>(Lo9j;)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    array-length v3, v1

    const/4 v3, 0x2

    new-array v10, v3, [Laaj;

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/vb;->c:[Laaj;

    new-array v10, v3, [Z

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/vb;->d:[Z

    invoke-virtual/range {p4 .. p4}, Lzqj;->b()Lz9j;

    move-result-object v10

    new-array v11, v3, [Lcaj;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v11, v13

    :goto_0
    if-ge v13, v3, :cond_1

    aget-object v12, v1, v13

    invoke-interface {v12, v13, v7, v6}, Lx9j;->n(ILtfj;Ltbg;)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->c:[Laaj;

    aget-object v14, v1, v13

    invoke-interface {v14}, Lx9j;->zzm()Laaj;

    move-result-object v14

    aput-object v14, v12, v13

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->c:[Laaj;

    aget-object v12, v12, v13

    invoke-interface {v12, v10}, Laaj;->j(Lz9j;)V

    aget-object v12, p3, v13

    if-eqz v12, :cond_0

    invoke-interface {v12, v13, v7, v6}, Lx9j;->n(ILtfj;Ltbg;)V

    move v11, v9

    :cond_0
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    new-instance v14, Lcaj;

    aget-object v15, v1, v13

    aget-object v3, p3, v13

    invoke-direct {v14, v15, v3, v13}, Lcaj;-><init>(Lx9j;Lx9j;I)V

    aput-object v14, v12, v13

    add-int/2addr v13, v9

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/vb;->x:Z

    new-instance v1, Lj2j;

    invoke-direct {v1, v0, v6}, Lj2j;-><init>(Lh2j;Ltbg;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->p:Ljava/util/ArrayList;

    new-instance v1, Le4f;

    invoke-direct {v1}, Le4f;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    new-instance v1, Ly2f;

    invoke-direct {v1}, Ly2f;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {v2, v0, v4}, Lzqj;->i(Lyqj;Lmrj;)V

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/vb;->Q:Z

    const/4 v1, 0x0

    move-object/from16 v2, p17

    invoke-interface {v6, v2, v1}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->w:Lolg;

    new-instance v3, Li8j;

    new-instance v4, Lq6j;

    invoke-direct {v4, v0}, Lq6j;-><init>(Lcom/google/android/gms/internal/ads/vb;)V

    invoke-direct {v3, v5, v2, v4, v8}, Li8j;-><init>(Lqaj;Lolg;Lq6j;Ll3j;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    new-instance v3, Lm9j;

    invoke-direct {v3, v0, v5, v2, v7}, Lm9j;-><init>(Lj9j;Lqaj;Lolg;Ltfj;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    new-instance v2, Lq9j;

    invoke-direct {v2, v1}, Lq9j;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->j:Lq9j;

    invoke-virtual {v2}, Lq9j;->a()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    invoke-interface {v6, v1, v0}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    new-instance v2, Lx0j;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v1, v0}, Lx0j;-><init>(Landroid/content/Context;Landroid/os/Looper;Lu0j;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    return-void
.end method

.method public static final F(Lt9j;)V
    .locals 4

    invoke-virtual {p0}, Lt9j;->i()Z

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lt9j;->c()Ls9j;

    move-result-object v1

    invoke-virtual {p0}, Lt9j;->a()I

    move-result v2

    invoke-virtual {p0}, Lt9j;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ls9j;->e(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lt9j;->h(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lt9j;->h(Z)V

    throw v1
.end method

.method public static c0(Lo9j;Ly2f;)Z
    .locals 2

    iget-object v0, p0, Lo9j;->b:Lbnj;

    iget-object p0, p0, Lo9j;->a:Lw4f;

    invoke-virtual {p0}, Lw4f;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p0

    iget-boolean p0, p0, Ly2f;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final f0(Ld8j;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    iget-boolean v1, p0, Ld8j;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ld8j;->a:Lzmj;

    invoke-interface {v1}, Lzmj;->zzi()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ld8j;->c:[Lyoj;

    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lyoj;->zzd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ld8j;->d()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_3
    return v0
.end method

.method public static g0(Le4f;Ly2f;IZLjava/lang/Object;Lw4f;Lw4f;)I
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual {v8, v0, p1}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v1, v1, Ly2f;->c:I

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v1, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v1

    iget-object v1, v1, Le4f;->a:Ljava/lang/Object;

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lw4f;->c()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v9, v4, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v5

    iget-object v5, v5, Le4f;->a:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v0}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lw4f;->b()I

    move-result v11

    const/4 v12, -0x1

    move v1, v0

    move v13, v10

    move v0, v12

    :goto_1
    if-ge v13, v11, :cond_3

    if-ne v0, v12, :cond_3

    move-object/from16 v0, p5

    move-object v2, p1

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lw4f;->i(ILy2f;Le4f;IZ)I

    move-result v1

    if-ne v1, v12, :cond_2

    move v0, v12

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v1}, Lw4f;->f(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v0, v12, :cond_4

    return v12

    :cond_4
    invoke-virtual {v9, v0, p1, v10}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v0

    iget v0, v0, Ly2f;->c:I

    return v0
.end method

.method public static synthetic i0(Lcom/google/android/gms/internal/ads/vb;Lf8j;J)Ld8j;
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    new-instance v13, Ld8j;

    invoke-interface {v1}, Lt7j;->zzk()Lnrj;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->T:Ll3j;

    iget-wide v1, v1, Ll3j;->a:J

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/vb;->f:Larj;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->e:Lzqj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->c:[Laaj;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v13

    move-wide/from16 v4, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v12}, Ld8j;-><init>([Laaj;JLzqj;Lnrj;Lm9j;Lf8j;Larj;J)V

    return-object v13
.end method

.method public static j(Lw4f;Li7j;ZIZLe4f;Ly2f;)Landroid/util/Pair;
    .locals 13

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Li7j;->a:Lw4f;

    invoke-virtual {p0}, Lw4f;->o()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Li7j;->b:I

    iget-wide v5, v0, Li7j;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Lw4f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v2

    iget-boolean v2, v2, Ly2f;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Ly2f;->c:I

    const-wide/16 v3, 0x0

    move-object/from16 v12, p5

    invoke-virtual {v10, v2, v12, v3, v4}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v2

    iget v2, v2, Le4f;->m:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v3, v1, Ly2f;->c:I

    iget-wide v4, v0, Li7j;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v12, p5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/vb;->g0(Le4f;Ly2f;IZLjava/lang/Object;Lw4f;Lw4f;)I

    move-result v3

    if-eq v3, v11, :cond_5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static synthetic j0(Lcom/google/android/gms/internal/ads/vb;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/vb;->C:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/google/android/gms/internal/ads/vb;Lt9j;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vb;->F(Lt9j;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    invoke-static {p1, v0, p0}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final l()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->x:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcaj;->w()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v2, v4}, Lcaj;->B(Lj2j;)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/vb;->L:I

    invoke-virtual {v2}, Lcaj;->w()I

    move-result v2

    sub-int/2addr v3, v2

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/vb;->L:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vb;->U:J

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic l0(Lcom/google/android/gms/internal/ads/vb;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcaj;->x()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->v:Lqaj;

    invoke-interface {p0, p1, v0, p2}, Lqaj;->h(IIZ)V

    return-void
.end method

.method private final m()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcaj;->w()I

    move-result v3

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v2, v4}, Lcaj;->A(Lj2j;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/vb;->A(IZ)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/vb;->L:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/vb;->L:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vb;->U:J

    return-void
.end method


# virtual methods
.method public final A(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->d:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->w:Lolg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkc;-><init>(Lcom/google/android/gms/internal/ads/vb;IZ)V

    invoke-interface {v0, v1}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 24

    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v11}, Lj2j;->zzc()Lvwe;

    move-result-object v0

    iget v0, v0, Lvwe;->a:F

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v2

    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v12, 0x1

    move v5, v12

    :goto_0
    if-eqz v2, :cond_e

    iget-boolean v6, v2, Ld8j;->e:Z

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v7, v6, Lo9j;->a:Lw4f;

    iget-boolean v6, v6, Lo9j;->l:Z

    invoke-virtual {v2, v0, v7, v6}, Ld8j;->j(FLw4f;Z)Larj;

    move-result-object v6

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v7

    if-ne v2, v7, :cond_1

    move-object v14, v6

    goto :goto_1

    :cond_1
    move-object v14, v4

    :goto_1
    invoke-virtual {v2}, Ld8j;->i()Larj;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    iget-object v7, v6, Larj;->c:[Ltqj;

    iget-object v8, v4, Larj;->c:[Ltqj;

    array-length v8, v8

    array-length v13, v7

    if-eq v8, v13, :cond_2

    goto :goto_4

    :cond_2
    move v8, v9

    :goto_2
    array-length v13, v7

    if-ge v8, v13, :cond_3

    invoke-virtual {v6, v4, v8}, Larj;->a(Larj;I)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    move v9, v12

    :goto_3
    and-int/2addr v5, v9

    invoke-virtual {v2}, Ld8j;->g()Ld8j;

    move-result-object v2

    move-object v4, v14

    goto :goto_0

    :cond_5
    :goto_4
    const/4 v8, 0x4

    const/4 v7, 0x2

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v6

    invoke-virtual {v1, v6}, Li8j;->n(Ld8j;)I

    move-result v0

    and-int/2addr v0, v12

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    new-array v5, v7, [Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v12, v0, :cond_6

    move/from16 v17, v9

    goto :goto_5

    :cond_6
    move/from16 v17, v12

    :goto_5
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v0, v0, Lo9j;->s:J

    move-object v13, v6

    move-wide v15, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Ld8j;->b(Larj;JZ[Z)J

    move-result-wide v13

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v0, Lo9j;->e:I

    if-eq v1, v8, :cond_7

    iget-wide v0, v0, Lo9j;->s:J

    cmp-long v0, v13, v0

    if-eqz v0, :cond_7

    move v15, v12

    goto :goto_6

    :cond_7
    move v15, v9

    :goto_6
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-wide v2, v0, Lo9j;->c:J

    iget-wide v7, v0, Lo9j;->d:J

    const/16 v18, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v19, v2

    move-wide v2, v13

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v4, v19

    move-object/from16 v23, v6

    const/4 v12, 0x2

    move-wide v6, v7

    move v8, v15

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    if-eqz v15, :cond_8

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    new-array v6, v12, [Z

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v12, :cond_a

    aget-object v0, v21, v9

    invoke-virtual {v0}, Lcaj;->w()I

    move-result v7

    aget-object v0, v21, v9

    invoke-virtual {v0}, Lcaj;->i()Z

    move-result v0

    aput-boolean v0, v6, v9

    aget-object v0, v21, v9

    move-object/from16 v8, v23

    iget-object v1, v8, Ld8j;->c:[Lyoj;

    aget-object v1, v1, v9

    iget-wide v3, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    aget-boolean v5, v22, v9

    move-object v2, v11

    invoke-virtual/range {v0 .. v5}, Lcaj;->F(Lyoj;Lj2j;JZ)V

    aget-object v0, v21, v9

    invoke-virtual {v0}, Lcaj;->w()I

    move-result v0

    sub-int v0, v7, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Lcom/google/android/gms/internal/ads/vb;->A(IZ)V

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    iget v1, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    aget-object v2, v21, v9

    invoke-virtual {v2}, Lcaj;->w()I

    move-result v2

    sub-int/2addr v7, v2

    sub-int/2addr v1, v7

    iput v1, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v23, v8

    goto :goto_7

    :cond_a
    move-object/from16 v8, v23

    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v10, v6, v0, v1}, Lcom/google/android/gms/internal/ads/vb;->q([ZJ)V

    const/4 v0, 0x1

    iput-boolean v0, v8, Ld8j;->h:Z

    goto :goto_9

    :cond_b
    move v12, v7

    move v0, v9

    invoke-virtual {v1, v2}, Li8j;->n(Ld8j;)I

    iget-boolean v3, v2, Ld8j;->e:Z

    if-eqz v3, :cond_d

    iget-object v3, v2, Ld8j;->g:Lf8j;

    iget-wide v3, v3, Lf8j;->b:J

    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v13

    sub-long/2addr v7, v13

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-boolean v5, v10, Lcom/google/android/gms/internal/ads/vb;->x:Z

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Li8j;->z()Ld8j;

    move-result-object v1

    if-ne v1, v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    :cond_c
    invoke-virtual {v2, v6, v3, v4, v0}, Ld8j;->a(Larj;JZ)J

    :cond_d
    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->W()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v0, v12}, Lolg;->zzj(I)Z

    :cond_e
    :goto_a
    return-void
.end method

.method public final C()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->B()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vb;->J(Z)V

    return-void
.end method

.method public final D(ZZZZ)V
    .locals 34

    move-object/from16 v1, p0

    const-string v2, "ExoPlayerImplInternal"

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lolg;->zzg(I)V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/vb;->Y(ZZ)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v0}, Lj2j;->f()V

    const-wide v7, 0xe8d4a51000L

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/vb;->N:J

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->m()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "Disable failed."

    invoke-static {v2, v7, v0}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v8, v5

    :goto_1
    if-ge v8, v3, :cond_0

    aget-object v0, v7, v8

    :try_start_1
    invoke-virtual {v0}, Lcaj;->L()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v0

    const-string v0, "Reset failed."

    invoke-static {v2, v0, v9}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iput v5, v1, Lcom/google/android/gms/internal/ads/vb;->L:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v0, Lo9j;->b:Lbnj;

    iget-wide v7, v0, Lo9j;->s:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v0}, Lbnj;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/vb;->c0(Lo9j;Ly2f;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v9, v0, Lo9j;->s:J

    goto :goto_4

    :cond_2
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v9, v0, Lo9j;->c:J

    :goto_4
    if-eqz p2, :cond_3

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/vb;->i(Lw4f;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lbnj;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v2, v0}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_3

    :goto_5
    move-wide/from16 v29, v7

    move-wide v10, v9

    goto :goto_6

    :cond_3
    move v6, v5

    goto :goto_5

    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->F()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/vb;->H:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    if-eqz p3, :cond_4

    instance-of v5, v3, Lv9j;

    if-eqz v5, :cond_4

    check-cast v3, Lv9j;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v5}, Lm9j;->p()Lbpj;

    move-result-object v5

    invoke-virtual {v3, v5}, Lv9j;->z(Lbpj;)Lv9j;

    move-result-object v3

    iget v5, v2, Lbnj;->b:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    iget-object v5, v2, Lbnj;->a:Ljava/lang/Object;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {v3, v5, v7}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    iget v7, v7, Ly2f;->c:I

    const-wide/16 v12, 0x0

    invoke-virtual {v3, v7, v8, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    invoke-virtual {v8}, Le4f;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lbnj;

    iget-wide v8, v2, Lbnj;->d:J

    invoke-direct {v7, v5, v8, v9}, Lbnj;-><init>(Ljava/lang/Object;J)V

    move-object v8, v3

    move-object/from16 v20, v7

    goto :goto_7

    :cond_4
    move-object/from16 v20, v2

    move-object v8, v3

    :goto_7
    new-instance v2, Lo9j;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v14, v3, Lo9j;->e:I

    if-eqz p4, :cond_5

    :goto_8
    move-object v15, v4

    goto :goto_9

    :cond_5
    iget-object v4, v3, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    goto :goto_8

    :goto_9
    if-eqz v6, :cond_6

    sget-object v4, Lnpj;->d:Lnpj;

    :goto_a
    move-object/from16 v17, v4

    goto :goto_b

    :cond_6
    iget-object v4, v3, Lo9j;->h:Lnpj;

    goto :goto_a

    :goto_b
    if-eqz v6, :cond_7

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/vb;->f:Larj;

    :goto_c
    move-object/from16 v18, v4

    goto :goto_d

    :cond_7
    iget-object v4, v3, Lo9j;->i:Larj;

    goto :goto_c

    :goto_d
    if-eqz v6, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    :goto_e
    move-object/from16 v19, v3

    goto :goto_f

    :cond_8
    iget-object v3, v3, Lo9j;->j:Ljava/util/List;

    goto :goto_e

    :goto_f
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v4, v3, Lo9j;->l:Z

    move/from16 v21, v4

    iget v4, v3, Lo9j;->m:I

    move/from16 v22, v4

    iget v4, v3, Lo9j;->n:I

    move/from16 v23, v4

    iget-object v3, v3, Lo9j;->o:Lvwe;

    move-object/from16 v24, v3

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v16, 0x0

    const-wide/16 v27, 0x0

    move-object v7, v2

    move-object/from16 v9, v20

    move-wide/from16 v12, v29

    move-wide/from16 v25, v29

    invoke-direct/range {v7 .. v33}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    if-eqz p3, :cond_9

    invoke-virtual {v0}, Li8j;->I()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v0}, Lm9j;->h()V

    :cond_9
    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-boolean v0, v0, Lf8j;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->D:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/vb;->E:Z

    return-void
.end method

.method public final G(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v2, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ld8j;->e()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v2, p1, p2}, Lj2j;->d(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 p2, 0x0

    move v2, p2

    :goto_2
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v3, v1, v4, v5}, Lcaj;->M(Ld8j;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ld8j;->i()Larj;

    move-result-object p1

    iget-object p1, p1, Larj;->c:[Ltqj;

    array-length v0, p1

    move v1, p2

    :goto_4
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Ld8j;->g()Ld8j;

    move-result-object p0

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final H(Lw4f;Lw4f;)V
    .locals 0

    invoke-virtual {p1}, Lw4f;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lw4f;->o()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final I(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/google/android/gms/internal/ads/vb;->Z:J

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v2, 0x2

    add-long/2addr p1, v0

    invoke-interface {p0, v2, p1, p2}, Lolg;->d(IJ)Z

    return-void
.end method

.method public final J(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v0

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-object v0, v0, Lf8j;->a:Lbnj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v3, v1, Lo9j;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/vb;->g(Lbnj;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v1, v1, Lo9j;->s:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v5, v1, Lo9j;->c:J

    iget-wide v7, v1, Lo9j;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_0
    return-void
.end method

.method public final K(Lvwe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lolg;->zzg(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {p0, p1}, Lj2j;->h(Lvwe;)V

    return-void
.end method

.method public final L(ZIZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v0, p3}, Lg7j;->a(I)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/vb;->U(ZII)V

    return-void
.end method

.method public final M(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v0, Lo9j;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/vb;->S:J

    :cond_0
    invoke-virtual {v0, p1}, Lo9j;->f(I)Lo9j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_1
    return-void
.end method

.method public final N(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/vb;->W:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    invoke-virtual {v0}, Lx0j;->a()F

    move-result v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcaj;->S(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ld8j;->i()Larj;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Larj;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcaj;->T()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final P(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/vb;->K:Z

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/vb;->D(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {p1, p2}, Lg7j;->a(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    invoke-interface {p1, p2}, Lt7j;->a(Ltfj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean p2, p2, Lo9j;->l:Z

    invoke-virtual {p1, p2, v1}, Lx0j;->b(ZI)I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    return-void
.end method

.method public final Q()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v0}, Lj2j;->f()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcaj;->V()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->v()Ld8j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vb;->H:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld8j;->a:Lzmj;

    invoke-interface {v0}, Lzmj;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v1, v0, Lo9j;->g:Z

    if-eq v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lo9j;->a(Z)Lo9j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_2
    return-void
.end method

.method public final S(Lbnj;Lnpj;Larj;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->v()Ld8j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v1

    if-ne v2, v1, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v5

    :goto_0
    sub-long/2addr v3, v5

    move-wide v9, v3

    goto :goto_1

    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, v2, Ld8j;->g:Lf8j;

    iget-wide v5, v1, Lf8j;->b:J

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Ld8j;->c()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/vb;->d(J)J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->a:Lw4f;

    iget-object v2, v2, Ld8j;->g:Lf8j;

    iget-object v2, v2, Lf8j;->a:Lbnj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->e0(Lw4f;Lbnj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    invoke-virtual {v1}, Lw1j;->b()J

    move-result-wide v1

    :goto_2
    move-wide/from16 v16, v1

    goto :goto_3

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    new-instance v2, Lr7j;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v7, v3, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v3}, Lj2j;->zzc()Lvwe;

    move-result-object v3

    iget v13, v3, Lvwe;->a:F

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v14, v3, Lo9j;->l:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/vb;->F:Z

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->G:J

    move-object v5, v2

    move-object/from16 v8, p1

    move-wide/from16 v18, v3

    invoke-direct/range {v5 .. v19}, Lr7j;-><init>(Ltfj;Lw4f;Lbnj;JJFZZJJ)V

    move-object/from16 v0, p3

    iget-object v0, v0, Larj;->c:[Ltqj;

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3, v0}, Lt7j;->h(Lr7j;Lnpj;[Ltqj;)V

    return-void
.end method

.method public final T()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v1, v0, Lo9j;->l:Z

    iget v2, v0, Lo9j;->n:I

    iget v0, v0, Lo9j;->m:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/vb;->U(ZII)V

    return-void
.end method

.method public final U(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    invoke-virtual {v1, p1, v0}, Lx0j;->b(ZI)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/vb;->V(ZIII)V

    return-void
.end method

.method public final V(ZIII)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eq p2, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :cond_1
    move p1, v2

    :goto_0
    const/4 v3, 0x2

    if-ne p2, v0, :cond_2

    move p4, v3

    goto :goto_1

    :cond_2
    if-ne p4, v3, :cond_3

    move p4, v1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    if-ne p3, v1, :cond_5

    move p3, v2

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v0, p2, Lo9j;->l:Z

    if-ne v0, p1, :cond_6

    iget v0, p2, Lo9j;->n:I

    if-ne v0, p3, :cond_6

    iget v0, p2, Lo9j;->m:I

    if-eq v0, p4, :cond_b

    :cond_6
    invoke-virtual {p2, p1, p4, p3}, Lo9j;->d(ZII)Lo9j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/ads/vb;->Y(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {p1}, Li8j;->w()Ld8j;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ld8j;->i()Larj;

    move-result-object p3

    iget-object p3, p3, Larj;->c:[Ltqj;

    array-length p4, p3

    move v0, v2

    :goto_4
    if-ge v0, p4, :cond_7

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Ld8j;->g()Ld8j;

    move-result-object p2

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->Q()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->W()V

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {p1, p2, p3}, Li8j;->H(J)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget p1, p1, Lo9j;->e:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {p1}, Lj2j;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->O()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {p0, v3}, Lolg;->zzj(I)Z

    return-void

    :cond_a
    if-ne p1, v3, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {p0, v3}, Lolg;->zzj(I)Z

    :cond_b
    return-void
.end method

.method public final W()V
    .locals 12

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v10}, Li8j;->w()Ld8j;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, v0, Ld8j;->e:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Ld8j;->a:Lzmj;

    invoke-interface {v1}, Lzmj;->zzd()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ld8j;->s()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v10, v0}, Li8j;->n(Ld8j;)I

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v0, v0, Lo9j;->s:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v10}, Li8j;->A()Ld8j;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v11

    :goto_1
    invoke-virtual {v1, v2}, Lj2j;->a(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v0}, Ld8j;->e()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v4, v0, Lo9j;->s:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->b:Lbnj;

    invoke-virtual {v2}, Lbnj;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/vb;->Q:Z

    if-eqz v2, :cond_6

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/vb;->Q:Z

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v4, v2, Lo9j;->a:Lw4f;

    iget-object v2, v2, Lo9j;->b:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lw4f;->a(Ljava/lang/Object;)I

    iget v2, p0, Lcom/google/android/gms/internal/ads/vb;->P:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_7

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lubc;->a(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    :cond_8
    iput v2, p0, Lcom/google/android/gms/internal/ads/vb;->P:I

    :cond_9
    :goto_2
    invoke-virtual {v1}, Lj2j;->zzj()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    iget-boolean v0, v0, Lg7j;->d:Z

    xor-int/lit8 v8, v0, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-wide v4, v0, Lo9j;->c:J

    const/4 v9, 0x6

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iput-wide v6, v0, Lo9j;->s:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lo9j;->t:J

    :cond_b
    :goto_3
    invoke-virtual {v10}, Li8j;->v()Ld8j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v0}, Ld8j;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lo9j;->q:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->x0()J

    move-result-wide v1

    iput-wide v1, v0, Lo9j;->r:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v1, v0, Lo9j;->l:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lo9j;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lo9j;->a:Lw4f;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/vb;->e0(Lw4f;Lbnj;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v0, Lo9j;->o:Lvwe;

    iget v1, v1, Lvwe;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    iget-object v2, v0, Lo9j;->a:Lw4f;

    iget-object v3, v0, Lo9j;->b:Lbnj;

    iget-object v3, v3, Lbnj;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lo9j;->s:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/vb;->v0(Lw4f;Ljava/lang/Object;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v4, v0, Lo9j;->r:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lw1j;->a(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v1}, Lj2j;->zzc()Lvwe;

    move-result-object v2

    iget v2, v2, Lvwe;->a:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->o:Lvwe;

    iget v2, v2, Lvwe;->b:F

    new-instance v3, Lvwe;

    invoke-direct {v3, v0, v2}, Lvwe;-><init>(FF)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/vb;->K(Lvwe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->o:Lvwe;

    invoke-virtual {v1}, Lj2j;->zzc()Lvwe;

    move-result-object v1

    iget v1, v1, Lvwe;->a:F

    invoke-virtual {p0, v0, v1, v11, v11}, Lcom/google/android/gms/internal/ads/vb;->v(Lvwe;FZZ)V

    :cond_c
    :goto_4
    return-void
.end method

.method public final X(Lw4f;Lbnj;Lw4f;Lbnj;JZ)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vb;->e0(Lw4f;Lbnj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lbnj;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lvwe;->d:Lvwe;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object p1, p1, Lo9j;->o:Lvwe;

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {p2}, Lj2j;->zzc()Lvwe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvwe;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vb;->K(Lvwe;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object p2, p2, Lo9j;->o:Lvwe;

    iget p1, p1, Lvwe;->a:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/vb;->v(Lvwe;FZZ)V

    return-void

    :cond_1
    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {p1, p2, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v1, v1, Ly2f;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lw4f;->e(ILe4f;J)Le4f;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    iget-object v5, v2, Le4f;->i:Lwfe;

    sget v6, Lkfh;->a:I

    invoke-virtual {v1, v5}, Lw1j;->d(Lwfe;)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p5, v5

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/vb;->v0(Lw4f;Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lw1j;->e(J)V

    return-void

    :cond_2
    iget-object p0, v2, Le4f;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Lw4f;->o()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p4, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p3, p1, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p1

    iget p1, p1, Ly2f;->c:I

    invoke-virtual {p3, p1, v2, v3, v4}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p1

    iget-object p1, p1, Le4f;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    invoke-virtual {v1, v5, v6}, Lw1j;->e(J)V

    return-void
.end method

.method public final Y(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vb;->F:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vb;->G:J

    return-void
.end method

.method public final declared-synchronized Z(Lk3i;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lk3i;->zza()Ljava/lang/Object;

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
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

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

    monitor-exit p0

    return-void

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

.method public final a(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 p1, 0x22

    invoke-interface {p0, p1}, Lolg;->zzj(I)Z

    return-void
.end method

.method public final a0()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->x:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcaj;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final b(Lvwe;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x10

    invoke-interface {p0, v0, p1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final b0()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v0

    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-wide v1, v1, Lf8j;->e:J

    iget-boolean v0, v0, Ld8j;->e:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v5, v0, Lo9j;->s:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final declared-synchronized c(Lt9j;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p1

    invoke-interface {p1}, Lnkg;->zza()V
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

    invoke-static {v0, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt9j;->h(Z)V
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

.method public final d(J)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->v()Ld8j;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v0}, Ld8j;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d0()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v0, p0, Lo9j;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lo9j;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lbnj;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v1

    invoke-virtual {v0}, Li8j;->A()Ld8j;

    move-result-object v0

    if-eq v1, v0, :cond_0

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

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/vb;->g(Lbnj;JZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e0(Lw4f;Lbnj;)Z
    .locals 4

    invoke-virtual {p2}, Lbnj;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lw4f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {p1, p2, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p2

    iget p2, p2, Ly2f;->c:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    invoke-virtual {p0}, Le4f;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Le4f;->h:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Le4f;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f(Lzmj;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final g(Lbnj;JZZ)J
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->Q()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/vb;->Y(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget p5, p5, Lo9j;->e:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {p5}, Li8j;->w()Ld8j;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v4, Ld8j;->g:Lf8j;

    iget-object v5, v5, Lf8j;->a:Lbnj;

    invoke-virtual {p1, v5}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ld8j;->g()Ld8j;

    move-result-object v4

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v3, v4, :cond_4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ld8j;->e()J

    move-result-wide v5

    add-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gez p1, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vb;->m()V

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {p5}, Li8j;->w()Ld8j;

    move-result-object p1

    if-eq p1, v4, :cond_5

    invoke-virtual {p5}, Li8j;->r()Ld8j;

    goto :goto_2

    :cond_5
    invoke-virtual {p5, v4}, Li8j;->n(Ld8j;)I

    const-wide v5, 0xe8d4a51000L

    invoke-virtual {v4, v5, v6}, Ld8j;->q(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->p()V

    iput-boolean v1, v4, Ld8j;->h:Z

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    if-eqz v4, :cond_9

    invoke-virtual {p5, v4}, Li8j;->n(Ld8j;)I

    iget-boolean p1, v4, Ld8j;->e:Z

    if-nez p1, :cond_7

    iget-object p1, v4, Ld8j;->g:Lf8j;

    invoke-virtual {p1, p2, p3}, Lf8j;->b(J)Lf8j;

    move-result-object p1

    iput-object p1, v4, Ld8j;->g:Lf8j;

    goto :goto_3

    :cond_7
    iget-boolean p1, v4, Ld8j;->f:Z

    if-eqz p1, :cond_8

    iget-object p1, v4, Ld8j;->a:Lzmj;

    invoke-interface {p1, p2, p3}, Lzmj;->c(J)J

    move-result-wide p2

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/vb;->n:J

    sub-long p4, p2, p4

    invoke-interface {p1, p4, p5, v0}, Lzmj;->e(JZ)V

    :cond_8
    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    goto :goto_4

    :cond_9
    invoke-virtual {p5}, Li8j;->F()V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {p0, v2}, Lolg;->zzj(I)Z

    return-wide p2
.end method

.method public final bridge synthetic h(Lapj;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x9

    check-cast p1, Lzmj;

    invoke-interface {p0, v0, p1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final h0()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v10, 0x1

    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xf

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v15

    :pswitch_1
    iget v1, v11, Lcom/google/android/gms/internal/ads/vb;->W:F

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/vb;->N(F)V

    :cond_0
    :goto_0
    move v2, v10

    goto/16 :goto_32

    :catch_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto/16 :goto_23

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_25

    :catch_2
    move-exception v0

    :goto_3
    move-object v1, v0

    goto/16 :goto_26

    :catch_3
    move-exception v0

    :goto_4
    move-object v1, v0

    goto/16 :goto_27

    :catch_4
    move-exception v0

    :goto_5
    move-object v1, v0

    goto/16 :goto_28

    :catch_5
    move-exception v0

    :goto_6
    move-object v1, v0

    goto/16 :goto_2a

    :catch_6
    move-exception v0

    :goto_7
    move-object v1, v0

    goto/16 :goto_2b

    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v3, v2, Lo9j;->l:Z

    iget v4, v2, Lo9j;->n:I

    iget v2, v2, Lo9j;->m:I

    invoke-virtual {v11, v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/vb;->V(ZIII)V

    goto :goto_0

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/vb;->N(F)V

    goto :goto_0

    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lhvg;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->e:Lzqj;

    invoke-virtual {v3, v2}, Lzqj;->d(Lhvg;)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    if-nez v1, :cond_1

    goto :goto_8

    :cond_1
    move-object v6, v2

    :goto_8
    invoke-virtual {v3, v6}, Lx0j;->e(Lhvg;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->T()V

    goto :goto_0

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v4, v15

    :goto_9
    if-ge v4, v14, :cond_2

    aget-object v6, v3, v4

    invoke-virtual {v6, v2}, Lcaj;->R(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_2
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v2, v2, Lo9j;->e:I

    if-eq v2, v5, :cond_3

    if-ne v2, v14, :cond_4

    :cond_3
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v2, v14}, Lolg;->zzj(I)Z

    :cond_4
    if-eqz v1, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :pswitch_6
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v1, v10}, Lg7j;->a(I)V

    invoke-virtual {v11, v15, v15, v15, v10}, Lcom/google/android/gms/internal/ads/vb;->D(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    invoke-interface {v1, v2}, Lt7j;->b(Ltfj;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->a:Lw4f;

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v1

    if-eq v10, v1, :cond_5

    move v1, v14

    goto :goto_a

    :cond_5
    move v1, v13

    :goto_a
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->T()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->h:Lmrj;

    invoke-interface {v2}, Lmrj;->zze()Lixi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm9j;->g(Lixi;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v1, v14}, Lolg;->zzj(I)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ll3j;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->T:Ll3j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    invoke-virtual {v2, v3, v1}, Li8j;->J(Lw4f;Ll3j;)V

    goto/16 :goto_0

    :pswitch_8
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v4, v10}, Lg7j;->a(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v4, v2, v3, v1}, Lm9j;->c(IILjava/util/List;)Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->C()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->C()V

    goto/16 :goto_0

    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    move v1, v10

    goto :goto_b

    :cond_6
    move v1, v15

    :goto_b
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/vb;->D:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->E()V

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v2

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v1

    if-eq v2, v1, :cond_0

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/vb;->J(Z)V

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v1}, Lm9j;->b()Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v10}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbpj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v2, v10}, Lg7j;->a(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v2, v1}, Lm9j;->n(Lbpj;)Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_e
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbpj;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v4, v10}, Lg7j;->a(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v4, v2, v3, v1}, Lm9j;->l(IILbpj;)Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v1, v10}, Lg7j;->a(I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :pswitch_10
    :try_start_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, La7j;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v3, v10}, Lg7j;->a(I)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    if-ne v1, v4, :cond_7

    invoke-virtual {v3}, Lm9j;->a()I

    move-result v1

    :cond_7
    invoke-static {v2}, La7j;->c(La7j;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2}, La7j;->d(La7j;)Lbpj;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Lm9j;->k(ILjava/util/List;Lbpj;)Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, La7j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v2, v10}, Lg7j;->a(I)V

    invoke-static {v1}, La7j;->a(La7j;)I

    move-result v2

    if-eq v2, v4, :cond_8

    new-instance v2, Li7j;

    new-instance v3, Lv9j;

    invoke-static {v1}, La7j;->c(La7j;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, La7j;->d(La7j;)Lbpj;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lv9j;-><init>(Ljava/util/Collection;Lbpj;)V

    invoke-static {v1}, La7j;->a(La7j;)I

    move-result v4

    invoke-static {v1}, La7j;->b(La7j;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Li7j;-><init>(Lw4f;IJ)V

    iput-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-static {v1}, La7j;->c(La7j;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, La7j;->d(La7j;)Lbpj;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lm9j;->m(Ljava/util/List;Lbpj;)Lw4f;

    move-result-object v1

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->t(Lw4f;Z)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lvwe;

    invoke-virtual {v11, v1, v15}, Lcom/google/android/gms/internal/ads/vb;->u(Lvwe;Z)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lt9j;

    invoke-virtual {v1}, Lt9j;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    invoke-static {v2, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lt9j;->h(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->q:Ltbg;

    invoke-interface {v3, v2, v6}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Lcom/google/android/gms/internal/ads/vb;Lt9j;)V

    invoke-interface {v2, v3}, Lolg;->f(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lt9j;

    invoke-virtual {v1}, Lt9j;->b()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    if-ne v2, v4, :cond_b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vb;->F(Lt9j;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->e:I

    if-eq v1, v5, :cond_a

    if-ne v1, v14, :cond_0

    :cond_a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v1, v14}, Lolg;->zzj(I)Z

    goto/16 :goto_0

    :cond_b
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v2, v3, v1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object v1

    invoke-interface {v1}, Lnkg;->zza()V

    goto/16 :goto_0

    :pswitch_15
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_c

    move v2, v10

    goto :goto_c

    :cond_c
    move v2, v15

    :goto_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/vb;->K:Z

    if-eq v3, v2, :cond_d

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/vb;->K:Z

    if-nez v2, :cond_d

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v3, v15

    :goto_d
    if-ge v3, v14, :cond_d

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcaj;->L()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    if-eqz v1, :cond_0

    monitor-enter p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :pswitch_16
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_e

    move v1, v10

    goto :goto_e

    :cond_e
    move v1, v15

    :goto_e
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/vb;->J:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    invoke-virtual {v2, v3, v1}, Li8j;->q(Lw4f;Z)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_f

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/vb;->J(Z)V

    goto :goto_f

    :cond_f
    and-int/2addr v1, v14

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    :cond_10
    :goto_f
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    goto/16 :goto_0

    :pswitch_17
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lcom/google/android/gms/internal/ads/vb;->I:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    invoke-virtual {v2, v3, v1}, Li8j;->p(Lw4f;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/vb;->J(Z)V

    goto :goto_10

    :cond_11
    and-int/2addr v1, v14

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    :cond_12
    :goto_10
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->B()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lzmj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v2, v1}, Li8j;->L(Lzmj;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2, v3, v4}, Li8j;->H(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v2, v1}, Li8j;->M(Lzmj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->x()V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :pswitch_1a
    :try_start_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lzmj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v2, v1}, Li8j;->L(Lzmj;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Li8j;->v()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-boolean v3, v1, Ld8j;->e:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v3, :cond_14

    :try_start_8
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v3}, Lj2j;->zzc()Lvwe;

    move-result-object v3

    iget v3, v3, Lvwe;->a:F

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v5, v4, Lo9j;->a:Lw4f;

    iget-boolean v4, v4, Lo9j;->l:Z

    invoke-virtual {v1, v3, v5, v4}, Ld8j;->l(FLw4f;Z)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_14
    :try_start_9
    iget-object v3, v1, Ld8j;->g:Lf8j;

    iget-object v3, v3, Lf8j;->a:Lbnj;

    invoke-virtual {v1}, Ld8j;->h()Lnpj;

    move-result-object v4

    invoke-virtual {v1}, Ld8j;->i()Larj;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/google/android/gms/internal/ads/vb;->S(Lbnj;Lnpj;Larj;)V

    invoke-virtual {v2}, Li8j;->w()Ld8j;

    move-result-object v2

    if-ne v1, v2, :cond_15

    iget-object v2, v1, Ld8j;->g:Lf8j;

    iget-wide v2, v2, Lf8j;->b:J

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->p()V

    iput-boolean v10, v1, Ld8j;->h:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v2, Lo9j;->b:Lbnj;

    iget-object v1, v1, Ld8j;->g:Lf8j;

    iget-wide v7, v1, Lf8j;->b:J

    iget-wide v5, v2, Lo9j;->c:J
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_9 .. :try_end_9} :catch_d
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_9 .. :try_end_9} :catch_b
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    const/4 v9, 0x0

    const/16 v16, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    move v12, v10

    move/from16 v10, v16

    :try_start_a
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    goto :goto_11

    :catch_7
    move-exception v0

    move v12, v10

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move v12, v10

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move v12, v10

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move v12, v10

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move v12, v10

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move v12, v10

    goto/16 :goto_6

    :catch_d
    move-exception v0

    move v12, v10

    goto/16 :goto_7

    :cond_15
    move v12, v10

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    :cond_16
    :goto_12
    move v2, v12

    goto/16 :goto_32

    :cond_17
    move v12, v10

    throw v6

    :cond_18
    move v12, v10

    invoke-virtual {v2, v1}, Li8j;->x(Lzmj;)Ld8j;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-boolean v4, v3, Ld8j;->e:Z

    xor-int/2addr v4, v12

    invoke-static {v4}, Ln7g;->f(Z)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v4}, Lj2j;->zzc()Lvwe;

    move-result-object v4

    iget v4, v4, Lvwe;->a:F

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v6, v5, Lo9j;->a:Lw4f;

    iget-boolean v5, v5, Lo9j;->l:Z

    invoke-virtual {v3, v4, v6, v5}, Ld8j;->l(FLw4f;Z)V

    invoke-virtual {v2, v1}, Li8j;->M(Lzmj;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->x()V
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_12

    :pswitch_1b
    move v12, v10

    :try_start_b
    invoke-virtual {v11, v12, v15, v12, v15}, Lcom/google/android/gms/internal/ads/vb;->D(ZZZZ)V

    move v1, v15

    :goto_13
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    if-ge v1, v14, :cond_19

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->c:[Laaj;

    aget-object v3, v3, v1

    invoke-interface {v3}, Laaj;->zzq()V

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcaj;->J()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :cond_19
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    invoke-interface {v1, v2}, Lt7j;->c(Ltfj;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->y:Lx0j;

    invoke-virtual {v1}, Lx0j;->d()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->e:Lzqj;

    invoke-virtual {v1}, Lzqj;->c()V

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/vb;->M(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->j:Lq9j;

    invoke-virtual {v1}, Lq9j;->b()V

    monitor-enter p0
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iput-boolean v12, v11, Lcom/google/android/gms/internal/ads/vb;->C:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v12

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v1

    :goto_14
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->j:Lq9j;

    invoke-virtual {v2}, Lq9j;->b()V

    monitor-enter p0
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iput-boolean v12, v11, Lcom/google/android/gms/internal/ads/vb;->C:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v1
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v1

    :pswitch_1c
    move v12, v10

    invoke-virtual {v11, v15, v12}, Lcom/google/android/gms/internal/ads/vb;->P(ZZ)V

    goto/16 :goto_12

    :pswitch_1d
    move v12, v10

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lkaj;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->z:Lkaj;

    goto/16 :goto_12

    :pswitch_1e
    move v12, v10

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lvwe;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/vb;->K(Lvwe;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v1}, Lj2j;->zzc()Lvwe;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/internal/ads/vb;->u(Lvwe;Z)V

    goto/16 :goto_12

    :pswitch_1f
    move v12, v10

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Li7j;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-virtual {v2, v12}, Lg7j;->a(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->a:Lw4f;

    iget v3, v11, Lcom/google/android/gms/internal/ads/vb;->I:I

    iget-boolean v4, v11, Lcom/google/android/gms/internal/ads/vb;->J:Z

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    const/16 v19, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-static/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/vb;->j(Lw4f;Li7j;ZIZLe4f;Ly2f;)Landroid/util/Pair;

    move-result-object v2

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_1a

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v6, v6, Lo9j;->a:Lw4f;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/vb;->i(Lw4f;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lbnj;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v6, v6, Lo9j;->a:Lw4f;

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v6

    xor-int/2addr v6, v12

    move v10, v6

    move-wide v14, v8

    move-wide/from16 v3, v17

    move-object v9, v7

    goto :goto_18

    :cond_1a
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v14, v1, Li7j;->c:J

    cmp-long v10, v14, v8

    if-nez v10, :cond_1b

    goto :goto_15

    :cond_1b
    move-wide v8, v3

    :goto_15
    iget-object v14, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v15, v15, Lo9j;->a:Lw4f;

    invoke-virtual {v14, v15, v6, v3, v4}, Li8j;->D(Lw4f;Ljava/lang/Object;J)Lbnj;

    move-result-object v6

    invoke-virtual {v6}, Lbnj;->b()Z

    move-result v14

    if-eqz v14, :cond_1d

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    iget-object v4, v6, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v3, v6, Lbnj;->b:I

    invoke-virtual {v7, v3}, Ly2f;->e(I)I

    move-result v3

    iget v4, v6, Lbnj;->c:I

    if-ne v3, v4, :cond_1c

    invoke-virtual {v7}, Ly2f;->h()J
    :try_end_12
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_12 .. :try_end_12} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    :cond_1c
    move-wide v14, v8

    move v10, v12

    const-wide/16 v3, 0x0

    :goto_16
    move-object v9, v6

    goto :goto_18

    :cond_1d
    if-nez v10, :cond_1e

    move v10, v12

    goto :goto_17

    :cond_1e
    const/4 v10, 0x0

    :goto_17
    move-wide v14, v8

    goto :goto_16

    :goto_18
    :try_start_13
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v6, v6, Lo9j;->a:Lw4f;

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v6

    if-eqz v6, :cond_1f

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    goto :goto_19

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_20

    :cond_1f
    if-nez v2, :cond_21

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->e:I

    if-eq v1, v12, :cond_20

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v12, v1, v12}, Lcom/google/android/gms/internal/ads/vb;->D(ZZZZ)V

    :goto_19
    move-wide v7, v3

    goto/16 :goto_1f

    :cond_21
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->b:Lbnj;

    invoke-virtual {v9, v1}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-boolean v2, v1, Ld8j;->e:Z

    if-eqz v2, :cond_22

    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-eqz v2, :cond_22

    iget-object v1, v1, Ld8j;->a:Lzmj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->z:Lkaj;

    invoke-interface {v1, v3, v4, v2}, Lzmj;->g(JLkaj;)J

    move-result-wide v1

    goto :goto_1a

    :cond_22
    move-wide v1, v3

    :goto_1a
    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide v6

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v12, v8, Lo9j;->s:J

    invoke-static {v12, v13}, Lkfh;->Q(J)J

    move-result-wide v12

    cmp-long v6, v6, v12

    if-nez v6, :cond_26

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v7, v6, Lo9j;->e:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_23

    if-ne v7, v5, :cond_26

    :cond_23
    iget-wide v7, v6, Lo9j;->s:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v14

    move v9, v10

    move v10, v12

    :try_start_14
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    :goto_1b
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;
    :try_end_14
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_14 .. :try_end_14} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_14 .. :try_end_14} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    :cond_24
    :goto_1c
    const/4 v2, 0x1

    goto/16 :goto_32

    :cond_25
    move-wide v1, v3

    :cond_26
    :try_start_15
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v5, v5, Lo9j;->e:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_27

    const/4 v5, 0x1

    goto :goto_1d

    :cond_27
    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v11, v9, v1, v2, v5}, Lcom/google/android/gms/internal/ads/vb;->e(Lbnj;JZ)J

    move-result-wide v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    cmp-long v1, v3, v12

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1e

    :cond_28
    const/4 v1, 0x0

    :goto_1e
    or-int/2addr v10, v1

    :try_start_16
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v4, v1, Lo9j;->a:Lw4f;

    iget-object v5, v1, Lo9j;->b:Lbnj;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/vb;->X(Lw4f;Lbnj;Lw4f;Lbnj;JZ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-wide v7, v12

    :goto_1f
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v14

    move v9, v10

    move v10, v12

    :try_start_17
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    goto :goto_1b

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-wide v7, v12

    move-object v12, v1

    goto :goto_21

    :goto_20
    move-object v12, v1

    move-wide v7, v3

    :goto_21
    const/4 v13, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v14

    move v9, v10

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    throw v12

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->n()V

    goto :goto_1c

    :pswitch_21
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_29

    const/4 v10, 0x1

    goto :goto_22

    :cond_29
    const/4 v10, 0x0

    :goto_22
    iget v1, v1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v2, v1, 0x4

    and-int/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v10, v2, v3, v1}, Lcom/google/android/gms/internal/ads/vb;->L(ZIZI)V
    :try_end_17
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_17 .. :try_end_17} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzrr; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_17 .. :try_end_17} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzty; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    goto :goto_1c

    :goto_23
    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_2a

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2b

    :cond_2a
    move v12, v3

    goto :goto_24

    :cond_2b
    const/16 v12, 0x3e8

    :goto_24
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    invoke-static {v2, v3, v1}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v3, v2}, Lcom/google/android/gms/internal/ads/vb;->P(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v2, v1}, Lo9j;->e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    goto/16 :goto_1c

    :goto_25
    const/16 v2, 0x7d0

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->r(Ljava/io/IOException;I)V

    goto/16 :goto_1c

    :goto_26
    const/16 v2, 0x3ea

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->r(Ljava/io/IOException;I)V

    goto/16 :goto_1c

    :goto_27
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgf;->zza:I

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->r(Ljava/io/IOException;I)V

    goto/16 :goto_1c

    :goto_28
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaz;->zzb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaz;->zza:Z

    if-eq v3, v2, :cond_2c

    const/16 v12, 0xbbb

    goto :goto_29

    :cond_2c
    const/16 v12, 0xbb9

    goto :goto_29

    :cond_2d
    const/16 v12, 0x3e8

    :goto_29
    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/internal/ads/vb;->r(Ljava/io/IOException;I)V

    goto/16 :goto_1c

    :goto_2a
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzrr;->zza:I

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->r(Ljava/io/IOException;I)V

    goto/16 :goto_1c

    :goto_2b
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzii;->zzc:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v2}, Li8j;->A()Ld8j;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzii;->zzh:Lbnj;

    if-nez v3, :cond_2e

    iget-object v2, v2, Ld8j;->g:Lf8j;

    iget-object v2, v2, Lf8j;->a:Lbnj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzii;->zza(Lbnj;)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    :cond_2e
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzii;->zzi:Z

    if-eqz v2, :cond_31

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    if-eqz v2, :cond_2f

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzba;->zza:I

    const/16 v3, 0x138c

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x138b

    if-ne v2, v3, :cond_31

    :cond_2f
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    invoke-static {v2, v3, v1}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    if-eqz v2, :cond_30

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    goto :goto_2c

    :cond_30
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    :goto_2c
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v3, 0x19

    invoke-interface {v2, v3, v1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object v1

    invoke-interface {v2, v1}, Lolg;->c(Lnkg;)Z

    goto/16 :goto_1c

    :cond_31
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzii;->zzc:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzii;->zzh:Lbnj;

    if-eqz v2, :cond_35

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzii;->zze:I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v4}, Li8j;->z()Ld8j;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Li8j;->z()Ld8j;

    move-result-object v5

    iget-object v5, v5, Ld8j;->g:Lf8j;

    iget-object v5, v5, Lf8j;->a:Lbnj;

    invoke-virtual {v5, v2}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_2f

    :cond_32
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    aget-object v2, v2, v3

    invoke-virtual {v4}, Li8j;->z()Ld8j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcaj;->g(Ld8j;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/vb;->V:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    invoke-virtual {v4}, Li8j;->z()Ld8j;

    move-result-object v1

    invoke-virtual {v4}, Li8j;->w()Ld8j;

    move-result-object v2

    invoke-virtual {v4}, Li8j;->w()Ld8j;

    move-result-object v3

    if-ne v3, v1, :cond_33

    goto :goto_2e

    :cond_33
    :goto_2d
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ld8j;->g()Ld8j;

    move-result-object v3

    if-eq v3, v1, :cond_34

    invoke-virtual {v2}, Ld8j;->g()Ld8j;

    move-result-object v2

    goto :goto_2d

    :cond_34
    :goto_2e
    invoke-virtual {v4, v2}, Li8j;->n(Ld8j;)I

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->e:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lolg;->zzj(I)Z

    goto/16 :goto_1c

    :cond_35
    :goto_2f
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    :cond_36
    move-object v12, v1

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Playback error"

    invoke-static {v1, v2, v12}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzii;->zzc:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v2

    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v3

    if-eq v2, v3, :cond_38

    :goto_30
    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v2

    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v3

    if-eq v2, v3, :cond_37

    invoke-virtual {v1}, Li8j;->r()Ld8j;

    goto :goto_30

    :cond_37
    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->y()V

    iget-object v1, v1, Ld8j;->g:Lf8j;

    iget-object v2, v1, Lf8j;->a:Lbnj;

    iget-wide v7, v1, Lf8j;->b:J

    iget-wide v5, v1, Lf8j;->c:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_38
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_31

    :cond_39
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v11, v2, v1}, Lcom/google/android/gms/internal/ads/vb;->P(ZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v1, v12}, Lo9j;->e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->y()V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
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
    .end packed-switch
.end method

.method public final i(Lw4f;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Lw4f;->o()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lo9j;->i()Lbnj;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->J:Z

    invoke-virtual {p1, v0}, Lw4f;->g(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v1, v2}, Li8j;->D(Lw4f;Ljava/lang/Object;J)Lbnj;

    move-result-object p0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Lbnj;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget p1, p0, Lbnj;->c:I

    iget v3, p0, Lbnj;->b:I

    invoke-virtual {v0, v3}, Ly2f;->e(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Ly2f;->h()J

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lbnj;JJJZI)Lo9j;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/vb;->Q:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v7, v2, Lo9j;->s:J

    cmp-long v2, p2, v7

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->b:Lbnj;

    invoke-virtual {v1, v2}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/vb;->Q:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->E()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v7, v2, Lo9j;->h:Lnpj;

    iget-object v8, v2, Lo9j;->i:Larj;

    iget-object v2, v2, Lo9j;->j:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v9}, Lm9j;->j()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v2}, Li8j;->w()Ld8j;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object v8, Lnpj;->d:Lnpj;

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ld8j;->h()Lnpj;

    move-result-object v8

    :goto_1
    if-nez v7, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/vb;->f:Larj;

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ld8j;->i()Larj;

    move-result-object v9

    :goto_2
    iget-object v10, v9, Larj;->c:[Ltqj;

    new-instance v11, Ll4i;

    invoke-direct {v11}, Ll4i;-><init>()V

    array-length v12, v10

    move v13, v3

    move v14, v13

    :goto_3
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    invoke-interface {v15, v3}, Lxqj;->zze(I)Lerj;

    move-result-object v15

    iget-object v15, v15, Lerj;->l:Lhre;

    if-nez v15, :cond_4

    new-instance v15, Lhre;

    move-object/from16 v16, v7

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v8

    new-array v8, v3, [Liqe;

    invoke-direct {v15, v6, v7, v8}, Lhre;-><init>(J[Liqe;)V

    invoke-virtual {v11, v15}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    goto :goto_4

    :cond_4
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual {v11, v15}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_3

    :cond_6
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    :goto_5
    if-eqz v16, :cond_8

    move-object/from16 v7, v16

    iget-object v8, v7, Ld8j;->g:Lf8j;

    iget-wide v10, v8, Lf8j;->c:J

    cmp-long v10, v10, v4

    if-eqz v10, :cond_8

    invoke-virtual {v8, v4, v5}, Lf8j;->a(J)Lf8j;

    move-result-object v8

    iput-object v8, v7, Ld8j;->g:Lf8j;

    :cond_8
    invoke-virtual {v2}, Li8j;->w()Ld8j;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ld8j;->i()Larj;

    move-result-object v2

    :goto_6
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v8, 0x2

    if-ge v3, v8, :cond_a

    invoke-virtual {v2, v3}, Larj;->b(I)Z

    move-result v8

    if-eqz v8, :cond_9

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcaj;->x()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    iget-object v7, v2, Larj;->b:[Lbaj;

    aget-object v7, v7, v3

    iget v7, v7, Lbaj;->a:I

    goto :goto_7

    :cond_9
    const/4 v8, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    move-object v12, v6

    move-object v11, v9

    move-object/from16 v10, v17

    goto :goto_8

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->b:Lbnj;

    invoke-virtual {v1, v3}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->f:Larj;

    sget-object v3, Lnpj;->d:Lnpj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    move-object v11, v2

    move-object v10, v3

    move-object v12, v6

    goto :goto_8

    :cond_c
    move-object v12, v2

    move-object v10, v7

    move-object v11, v8

    :goto_8
    if-eqz p8, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lg7j;->c(I)V

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->x0()J

    move-result-wide v8

    move-object v0, v2

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Lo9j;->c(Lbnj;JJJJLnpj;Larj;Ljava/util/List;)Lo9j;

    move-result-object v0

    return-object v0
.end method

.method public final m0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Lolg;->zzb(I)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final n()V
    .locals 38

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Lolg;->zzg(I)V

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->a:Lw4f;

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->s:Lm9j;

    invoke-virtual {v1}, Lm9j;->j()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-wide v14, v8

    goto/16 :goto_1a

    :cond_1
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v6, v1, v2}, Li8j;->H(J)V

    invoke-virtual {v6}, Li8j;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v6, v1, v2, v3}, Li8j;->B(JLo9j;)Lf8j;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Li8j;->u(Lf8j;)Ld8j;

    move-result-object v2

    iget-boolean v3, v2, Ld8j;->d:Z

    if-nez v3, :cond_2

    iget-wide v3, v1, Lf8j;->b:J

    invoke-virtual {v2, v10, v3, v4}, Ld8j;->m(Lymj;J)V

    goto :goto_0

    :cond_2
    iget-boolean v3, v2, Ld8j;->e:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    iget-object v4, v2, Ld8j;->a:Lzmj;

    invoke-interface {v0, v3, v4}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object v0

    invoke-interface {v0}, Lnkg;->zza()V

    :cond_3
    :goto_0
    invoke-virtual {v6}, Li8j;->w()Ld8j;

    move-result-object v0

    if-ne v0, v2, :cond_4

    iget-wide v0, v1, Lf8j;->b:J

    invoke-virtual {v10, v0, v1}, Lcom/google/android/gms/internal/ads/vb;->G(J)V

    :cond_4
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    :cond_5
    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->H:Z

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Li8j;->v()Ld8j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vb;->f0(Ld8j;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->H:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->R()V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    :goto_1
    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-nez v0, :cond_a

    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->x:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->V:Z

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v6}, Li8j;->z()Ld8j;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v1

    if-ne v0, v1, :cond_a

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    iget-boolean v0, v0, Ld8j;->e:Z

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Li8j;->s()Ld8j;

    invoke-virtual {v6}, Li8j;->z()Ld8j;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ld8j;->i()Larj;

    move-result-object v5

    move v3, v7

    :goto_2
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    if-ge v3, v13, :cond_9

    invoke-virtual {v5, v3}, Larj;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcaj;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcaj;->f()Z

    move-result v1

    if-nez v1, :cond_8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcaj;->U()V

    const/16 v16, 0x0

    invoke-virtual {v4}, Ld8j;->f()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v3

    move/from16 v19, v3

    move/from16 v3, v16

    move-object v14, v4

    move-object/from16 v20, v5

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vb;->o(Ld8j;IZJ)V

    goto :goto_3

    :cond_8
    move/from16 v19, v3

    move-object v14, v4

    move-object/from16 v20, v5

    :goto_3
    add-int/lit8 v3, v19, 0x1

    move-object v4, v14

    move-object/from16 v5, v20

    goto :goto_2

    :cond_9
    move-object v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v14, Ld8j;->a:Lzmj;

    invoke-interface {v0}, Lzmj;->zzd()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/vb;->U:J

    invoke-virtual {v14}, Ld8j;->s()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6, v14}, Li8j;->n(Ld8j;)I

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    :cond_a
    :goto_4
    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_10

    :cond_b
    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-eqz v1, :cond_c

    goto/16 :goto_c

    :cond_c
    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v1

    iget-boolean v2, v1, Ld8j;->e:Z

    if-eqz v2, :cond_1e

    move v2, v7

    :goto_5
    iget-object v14, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    if-ge v2, v13, :cond_d

    aget-object v3, v14, v2

    invoke-virtual {v3, v1}, Lcaj;->b(Ld8j;)Z

    move-result v3

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v6}, Li8j;->z()Ld8j;

    move-result-object v1

    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v2

    if-eq v1, v2, :cond_1e

    :cond_e
    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v1

    iget-boolean v1, v1, Ld8j;->e:Z

    if-nez v1, :cond_f

    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v3

    invoke-virtual {v3}, Ld8j;->f()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1e

    :cond_f
    invoke-virtual {v0}, Ld8j;->i()Larj;

    move-result-object v5

    invoke-virtual {v6}, Li8j;->t()Ld8j;

    move-result-object v4

    invoke-virtual {v4}, Ld8j;->i()Larj;

    move-result-object v3

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v1, Lo9j;->a:Lw4f;

    iget-object v1, v4, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-object v0, v0, Lf8j;->a:Lbnj;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move-object v1, v2

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    move-object v15, v3

    move-object/from16 v3, v22

    move-object v13, v4

    move-object/from16 v4, v20

    move-object/from16 v24, v5

    move-object/from16 v23, v6

    move-wide/from16 v5, v17

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vb;->X(Lw4f;Lbnj;Lw4f;Lbnj;JZ)V

    iget-boolean v0, v13, Ld8j;->e:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->x:Z

    if-eqz v0, :cond_10

    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/vb;->U:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, v13, Ld8j;->a:Lzmj;

    invoke-interface {v1}, Lzmj;->zzd()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_18

    :cond_11
    iput-wide v8, v10, Lcom/google/android/gms/internal/ads/vb;->U:J

    if-eqz v0, :cond_15

    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/vb;->V:Z

    if-nez v0, :cond_15

    const/4 v0, 0x2

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v0, :cond_14

    invoke-virtual {v15, v7}, Larj;->b(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    iget-object v0, v15, Larj;->c:[Ltqj;

    aget-object v1, v0, v7

    invoke-interface {v1}, Ltqj;->zzf()Lerj;

    move-result-object v1

    iget-object v1, v1, Lerj;->o:Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-interface {v0}, Ltqj;->zzf()Lerj;

    move-result-object v0

    iget-object v0, v0, Lerj;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lbue;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    aget-object v0, v14, v7

    invoke-virtual {v0}, Lcaj;->f()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x2

    goto :goto_6

    :cond_14
    move v1, v0

    move-object/from16 v6, v23

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_b

    :cond_15
    :goto_8
    invoke-virtual {v13}, Ld8j;->f()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v2, :cond_16

    aget-object v2, v14, v7

    invoke-virtual {v2, v0, v1}, Lcaj;->N(J)V

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x2

    goto :goto_9

    :cond_16
    invoke-virtual {v13}, Ld8j;->s()Z

    move-result v0

    move-object/from16 v6, v23

    if-nez v0, :cond_17

    invoke-virtual {v6, v13}, Li8j;->n(Ld8j;)I

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->w()V

    goto :goto_10

    :cond_17
    const/4 v7, 0x0

    goto :goto_10

    :cond_18
    move-object/from16 v6, v23

    const/4 v7, 0x0

    move v0, v7

    :goto_a
    const/4 v1, 0x2

    :goto_b
    if-ge v0, v1, :cond_1e

    aget-object v1, v14, v0

    invoke-virtual {v13}, Ld8j;->f()J

    move-result-wide v2

    move-object/from16 v4, v24

    invoke-virtual {v1, v4, v15, v2, v3}, Lcaj;->H(Larj;Larj;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    :goto_c
    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-boolean v1, v1, Lf8j;->j:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-eqz v1, :cond_1e

    :cond_1a
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v2, v7

    :goto_d
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Lcaj;->h(Ld8j;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v3, v0}, Lcaj;->c(Ld8j;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Ld8j;->g:Lf8j;

    iget-wide v4, v4, Lf8j;->e:J

    cmp-long v13, v4, v8

    if-eqz v13, :cond_1c

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v13, v4, v13

    if-eqz v13, :cond_1c

    invoke-virtual {v0}, Ld8j;->e()J

    move-result-wide v13

    add-long/2addr v13, v4

    goto :goto_e

    :cond_1c
    move-wide v13, v8

    :goto_e
    invoke-virtual {v3, v0, v13, v14}, Lcaj;->O(Ld8j;J)V

    :cond_1d
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    :goto_10
    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v6}, Li8j;->w()Ld8j;

    move-result-object v1

    if-eq v1, v0, :cond_23

    iget-boolean v0, v0, Ld8j;->h:Z

    if-eqz v0, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v13

    invoke-virtual {v13}, Ld8j;->i()Larj;

    move-result-object v14

    move v0, v7

    const/4 v1, 0x1

    :goto_11
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v2, 0x2

    if-ge v0, v2, :cond_20

    aget-object v2, v15, v0

    invoke-virtual {v2}, Lcaj;->w()I

    move-result v2

    aget-object v3, v15, v0

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v3, v13, v14, v4}, Lcaj;->y(Ld8j;Larj;Lj2j;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    aget-object v5, v15, v0

    invoke-virtual {v5}, Lcaj;->w()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    iput v4, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    const/4 v2, 0x1

    and-int/2addr v3, v2

    and-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    if-eqz v1, :cond_23

    move v4, v7

    :goto_12
    const/4 v0, 0x2

    if-ge v4, v0, :cond_22

    invoke-virtual {v14, v4}, Larj;->b(I)Z

    move-result v0

    if-eqz v0, :cond_21

    aget-object v0, v15, v4

    invoke-virtual {v0, v13}, Lcaj;->h(Ld8j;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v13}, Ld8j;->f()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move/from16 v19, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vb;->o(Ld8j;IZJ)V

    goto :goto_13

    :cond_21
    move/from16 v19, v4

    :goto_13
    add-int/lit8 v4, v19, 0x1

    goto :goto_12

    :cond_22
    invoke-virtual {v6}, Li8j;->A()Ld8j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld8j;->h:Z

    :cond_23
    :goto_14
    move v0, v7

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    move-wide v14, v8

    goto/16 :goto_19

    :cond_25
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-nez v1, :cond_24

    invoke-virtual {v6}, Li8j;->w()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v1}, Ld8j;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_24

    iget-boolean v1, v1, Ld8j;->h:Z

    if-eqz v1, :cond_24

    if-eqz v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->y()V

    :cond_26
    iput-boolean v7, v10, Lcom/google/android/gms/internal/ads/vb;->V:Z

    invoke-virtual {v6}, Li8j;->r()Ld8j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    iget-object v0, v0, Lbnj;->a:Ljava/lang/Object;

    iget-object v1, v13, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    iget-object v1, v1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    iget v1, v0, Lbnj;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    iget-object v1, v13, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    iget v3, v1, Lbnj;->b:I

    if-ne v3, v2, :cond_27

    iget v0, v0, Lbnj;->e:I

    iget v1, v1, Lbnj;->e:I

    if-eq v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_16

    :cond_27
    move v0, v7

    :goto_16
    iget-object v1, v13, Ld8j;->g:Lf8j;

    iget-object v2, v1, Lf8j;->a:Lbnj;

    iget-wide v14, v1, Lf8j;->b:J

    iget-wide v4, v1, Lf8j;->c:J

    const/4 v1, 0x1

    xor-int/lit8 v17, v0, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v14

    move-object/from16 v19, v6

    move-wide v6, v14

    move-wide v14, v8

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->E()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->W()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual/range {v19 .. v19}, Li8j;->z()Ld8j;

    move-result-object v0

    if-ne v13, v0, :cond_28

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v1, 0x2

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v1, :cond_28

    aget-object v1, v0, v7

    invoke-virtual {v1}, Lcaj;->G()V

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto :goto_17

    :cond_28
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->O()V

    :cond_29
    invoke-virtual/range {v19 .. v19}, Li8j;->w()Ld8j;

    move-result-object v0

    invoke-virtual {v0}, Ld8j;->i()Larj;

    move-result-object v0

    const/4 v7, 0x0

    :goto_18
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v2, 0x2

    if-ge v7, v2, :cond_2b

    invoke-virtual {v0, v7}, Larj;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcaj;->D()V

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_2b
    move-wide v8, v14

    move-object/from16 v6, v19

    const/4 v0, 0x1

    const/4 v7, 0x0

    goto/16 :goto_15

    :goto_19
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->T:Ll3j;

    iget-wide v0, v0, Ll3j;->a:J

    :goto_1a
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    goto/16 :goto_2e

    :cond_2c
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v3

    if-nez v3, :cond_2d

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/ads/vb;->I(J)V

    return-void

    :cond_2d
    const-string v4, "doSomeWork"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->W()V

    iget-boolean v4, v3, Ld8j;->e:Z

    if-eqz v4, :cond_33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkfh;->N(J)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/google/android/gms/internal/ads/vb;->O:J

    iget-object v4, v3, Ld8j;->a:Lzmj;

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v5, v5, Lo9j;->s:J

    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/vb;->n:J

    sub-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lzmj;->e(JZ)V

    move v4, v2

    move v5, v4

    move v6, v7

    :goto_1b
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v9, 0x2

    if-ge v6, v9, :cond_32

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcaj;->w()I

    move-result v9

    if-nez v9, :cond_2e

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/internal/ads/vb;->A(IZ)V

    goto :goto_1e

    :cond_2e
    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    iget-wide v14, v10, Lcom/google/android/gms/internal/ads/vb;->O:J

    invoke-virtual {v8, v1, v2, v14, v15}, Lcaj;->K(JJ)V

    if-eqz v4, :cond_2f

    invoke-virtual {v8}, Lcaj;->e()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2f
    move v1, v7

    :goto_1c
    invoke-virtual {v8, v3}, Lcaj;->a(Ld8j;)Z

    move-result v2

    invoke-virtual {v10, v6, v2}, Lcom/google/android/gms/internal/ads/vb;->A(IZ)V

    if-eqz v5, :cond_30

    if-eqz v2, :cond_30

    const/4 v4, 0x1

    goto :goto_1d

    :cond_30
    move v4, v7

    :goto_1d
    if-nez v2, :cond_31

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/vb;->z(I)V

    :cond_31
    move v5, v4

    move v4, v1

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1b

    :cond_32
    move v2, v4

    goto :goto_1f

    :cond_33
    const/4 v7, 0x0

    iget-object v1, v3, Ld8j;->a:Lzmj;

    invoke-interface {v1}, Lzmj;->zzi()V

    const/4 v2, 0x1

    const/4 v5, 0x1

    :goto_1f
    iget-object v1, v3, Ld8j;->g:Lf8j;

    iget-wide v13, v1, Lf8j;->e:J

    if-eqz v2, :cond_36

    iget-boolean v1, v3, Ld8j;->e:Z

    if-eqz v1, :cond_36

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v13, v1

    if-eqz v4, :cond_34

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v1, v1, Lo9j;->s:J

    cmp-long v1, v13, v1

    if-gtz v1, :cond_36

    :cond_34
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    if-eqz v1, :cond_35

    iput-boolean v7, v10, Lcom/google/android/gms/internal/ads/vb;->E:Z

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->n:I

    const/4 v2, 0x5

    invoke-virtual {v10, v7, v1, v7, v2}, Lcom/google/android/gms/internal/ads/vb;->L(ZIZI)V

    :cond_35
    iget-object v1, v3, Ld8j;->g:Lf8j;

    iget-boolean v1, v1, Lf8j;->j:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->Q()V

    move v2, v7

    goto/16 :goto_28

    :cond_36
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v2, v1, Lo9j;->e:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3e

    iget v2, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    if-nez v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->b0()Z

    move-result v1

    goto/16 :goto_23

    :cond_37
    if-nez v5, :cond_38

    goto/16 :goto_24

    :cond_38
    iget-boolean v1, v1, Lo9j;->g:Z

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->a:Lw4f;

    iget-object v4, v1, Ld8j;->g:Lf8j;

    iget-object v4, v4, Lf8j;->a:Lbnj;

    invoke-virtual {v10, v2, v4}, Lcom/google/android/gms/internal/ads/vb;->e0(Lw4f;Lbnj;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    invoke-virtual {v2}, Lw1j;->b()J

    move-result-wide v13

    move-wide/from16 v34, v13

    goto :goto_20

    :cond_39
    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    :goto_20
    invoke-virtual {v0}, Li8j;->v()Ld8j;

    move-result-object v2

    invoke-virtual {v2}, Ld8j;->s()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, v2, Ld8j;->g:Lf8j;

    iget-boolean v4, v4, Lf8j;->j:Z

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_21

    :cond_3a
    move v4, v7

    :goto_21
    iget-object v6, v2, Ld8j;->g:Lf8j;

    iget-object v6, v6, Lf8j;->a:Lbnj;

    invoke-virtual {v6}, Lbnj;->b()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-boolean v6, v2, Ld8j;->e:Z

    if-nez v6, :cond_3b

    const/4 v6, 0x1

    goto :goto_22

    :cond_3b
    move v6, v7

    :goto_22
    if-nez v4, :cond_3c

    if-nez v6, :cond_3c

    invoke-virtual {v2}, Ld8j;->c()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/ads/vb;->d(J)J

    move-result-wide v29

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    new-instance v6, Lr7j;

    iget-object v8, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v8, v8, Lo9j;->a:Lw4f;

    iget-object v13, v1, Ld8j;->g:Lf8j;

    iget-object v13, v13, Lf8j;->a:Lbnj;

    iget-wide v14, v10, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v1}, Ld8j;->e()J

    move-result-wide v19

    sub-long v27, v14, v19

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v1}, Lj2j;->zzc()Lvwe;

    move-result-object v1

    iget v1, v1, Lvwe;->a:F

    iget-object v14, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v14, v14, Lo9j;->l:Z

    iget-boolean v15, v10, Lcom/google/android/gms/internal/ads/vb;->F:Z

    move-object/from16 v20, v8

    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/vb;->G:J

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move-object/from16 v25, v20

    move-object/from16 v26, v13

    move/from16 v31, v1

    move/from16 v32, v14

    move/from16 v33, v15

    move-wide/from16 v36, v7

    invoke-direct/range {v23 .. v37}, Lr7j;-><init>(Ltfj;Lw4f;Lbnj;JJFZZJJ)V

    invoke-interface {v2, v6}, Lt7j;->f(Lr7j;)Z

    move-result v1

    :goto_23
    if-eqz v1, :cond_3e

    :cond_3c
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    const/4 v1, 0x0

    iput-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->R:Lcom/google/android/gms/internal/ads/zzii;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v1}, Lcom/google/android/gms/internal/ads/vb;->Y(ZZ)V

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v1}, Lj2j;->e()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->O()V

    :cond_3d
    const/4 v2, 0x0

    goto :goto_28

    :cond_3e
    :goto_24
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    iget v1, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    if-nez v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->b0()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_25

    :cond_3f
    if-nez v5, :cond_3d

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->Y(ZZ)V

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/vb;->M(I)V

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/vb;->F:Z

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v1

    :goto_26
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ld8j;->i()Larj;

    move-result-object v4

    iget-object v4, v4, Larj;->c:[Ltqj;

    array-length v5, v4

    move v7, v2

    :goto_27
    if-ge v7, v5, :cond_40

    aget-object v6, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_40
    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    goto :goto_26

    :cond_41
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    invoke-virtual {v1}, Lw1j;->c()V

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->Q()V

    :goto_28
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v1, v1, Lo9j;->e:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_47

    move v7, v2

    :goto_29
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    if-ge v7, v4, :cond_44

    aget-object v1, v1, v7

    invoke-virtual {v1, v3}, Lcaj;->h(Ld8j;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/vb;->z(I)V

    :cond_43
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    goto :goto_29

    :cond_44
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v3, v1, Lo9j;->g:Z

    if-nez v3, :cond_47

    iget-wide v3, v1, Lo9j;->r:J

    const-wide/32 v5, 0x7a120

    cmp-long v1, v3, v5

    if-gez v1, :cond_47

    invoke-virtual {v0}, Li8j;->v()Ld8j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vb;->f0(Ld8j;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/vb;->S:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v3

    if-nez v0, :cond_45

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/vb;->S:J

    goto :goto_2a

    :cond_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, v10, Lcom/google/android/gms/internal/ads/vb;->S:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xfa0

    cmp-long v0, v0, v3

    if-gez v0, :cond_46

    goto :goto_2a

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/vb;->S:J

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    const/4 v15, 0x1

    goto :goto_2c

    :cond_48
    :goto_2b
    move v15, v2

    goto :goto_2c

    :cond_49
    const/4 v1, 0x3

    goto :goto_2b

    :goto_2c
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v2, v0, Lo9j;->p:Z

    iget v0, v0, Lo9j;->e:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4a

    goto :goto_2d

    :cond_4a
    if-nez v15, :cond_4b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4b

    if-ne v0, v1, :cond_4c

    iget v0, v10, Lcom/google/android/gms/internal/ads/vb;->L:I

    if-eqz v0, :cond_4c

    :cond_4b
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/ads/vb;->I(J)V

    :cond_4c
    :goto_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4d
    :goto_2e
    return-void
.end method

.method public final n0(Lw4f;IJ)V
    .locals 1

    new-instance v0, Li7j;

    invoke-direct {v0, p1, p2, p3, p4}, Li7j;-><init>(Lw4f;IJ)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final o(Ld8j;IZJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcaj;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v3}, Li8j;->w()Ld8j;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    move/from16 v17, v4

    goto :goto_0

    :cond_1
    move/from16 v17, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ld8j;->i()Larj;

    move-result-object v3

    iget-object v6, v3, Larj;->b:[Lbaj;

    aget-object v6, v6, p2

    iget-object v3, v3, Larj;->c:[Ltqj;

    aget-object v7, v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->d0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v3, v3, Lo9j;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move/from16 v18, v4

    goto :goto_1

    :cond_2
    move/from16 v18, v5

    :goto_1
    if-nez p3, :cond_3

    if-eqz v18, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v5

    :goto_2
    iget v3, v0, Lcom/google/android/gms/internal/ads/vb;->L:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/vb;->L:I

    iget-object v3, v1, Ld8j;->c:[Lyoj;

    aget-object v8, v3, p2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual/range {p1 .. p1}, Ld8j;->e()J

    move-result-wide v13

    iget-object v3, v1, Ld8j;->g:Lf8j;

    iget-object v15, v3, Lf8j;->a:Lbnj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    move-object v3, v2

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v10

    move/from16 v10, v17

    move-object/from16 v16, v12

    move-wide/from16 v11, p4

    invoke-virtual/range {v3 .. v16}, Lcaj;->C(Lbaj;Ltqj;Lyoj;JZZJJLbnj;Lj2j;)V

    new-instance v3, Lx6j;

    invoke-direct {v3, v0}, Lx6j;-><init>(Lcom/google/android/gms/internal/ads/vb;)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v3, v1}, Lcaj;->E(ILjava/lang/Object;Ld8j;)V

    if-eqz v18, :cond_4

    if-eqz v17, :cond_4

    invoke-virtual {v2}, Lcaj;->T()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final o0(Lhvg;Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 p2, 0x1f

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, v0, p1}, Lolg;->e(IIILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    const/4 v1, 0x2

    new-array v1, v1, [Z

    invoke-virtual {v0}, Li8j;->A()Ld8j;

    move-result-object v0

    invoke-virtual {v0}, Ld8j;->f()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vb;->q([ZJ)V

    return-void
.end method

.method public final p0(ZII)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    shl-int/lit8 p2, p3, 0x4

    const/4 p3, 0x1

    or-int/2addr p2, p3

    invoke-interface {p0, p3, p1, p2}, Lolg;->g(III)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final q([ZJ)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->A()Ld8j;

    move-result-object v0

    invoke-virtual {v0}, Ld8j;->i()Larj;

    move-result-object v7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v9, 0x2

    if-ge v2, v9, :cond_1

    invoke-virtual {v7, v2}, Larj;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v8, v2

    invoke-virtual {v3}, Lcaj;->L()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_3

    invoke-virtual {v7, v10}, Larj;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v8, v10

    invoke-virtual {v1, v0}, Lcaj;->h(Ld8j;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-boolean v4, p1, v10

    move-object v1, p0

    move-object v2, v0

    move v3, v10

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/vb;->o(Ld8j;IZJ)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final q0(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x20

    invoke-interface {p0, v0, p1}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final r(Ljava/io/IOException;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzii;->zzc(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Ld8j;->g:Lf8j;

    iget-object p2, p2, Lf8j;->a:Lbnj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzii;->zza(Lbnj;)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Lcom/google/android/gms/internal/ads/vb;->P(ZZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {p2, p1}, Lo9j;->e(Lcom/google/android/gms/internal/ads/zzii;)Lo9j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    return-void
.end method

.method public final r0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lolg;->zzb(I)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final s(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->v()Ld8j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->b:Lbnj;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v2, Lo9j;->k:Lbnj;

    invoke-virtual {v2, v1}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v3, v1}, Lo9j;->b(Lbnj;)Lo9j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lo9j;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ld8j;->c()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lo9j;->q:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vb;->x0()J

    move-result-wide v3

    iput-wide v3, v1, Lo9j;->r:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Ld8j;->e:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Ld8j;->g:Lf8j;

    iget-object p1, p1, Lf8j;->a:Lbnj;

    invoke-virtual {v0}, Ld8j;->h()Lnpj;

    move-result-object v1

    invoke-virtual {v0}, Ld8j;->i()Larj;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/vb;->S(Lbnj;Lnpj;Larj;)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized s0()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lolg;->zzj(I)Z

    new-instance v0, Ln6j;

    invoke-direct {v0, p0}, Ln6j;-><init>(Lcom/google/android/gms/internal/ads/vb;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vb;->t:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vb;->Z(Lk3i;J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->C:Z
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

.method public final t(Lw4f;Z)V
    .locals 31

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    iget v4, v11, Lcom/google/android/gms/internal/ads/vb;->I:I

    iget-boolean v9, v11, Lcom/google/android/gms/internal/ads/vb;->J:Z

    invoke-virtual/range {p1 .. p1}, Lw4f;->o()Z

    move-result v1

    const/4 v10, 0x4

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lo9j;->i()Lbnj;

    move-result-object v0

    move-object v10, v0

    move v15, v3

    move-wide/from16 v16, v13

    const/4 v5, 0x1

    const/4 v9, 0x1

    const-wide/16 v13, 0x0

    goto/16 :goto_14

    :cond_0
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-object v15, v1, Lbnj;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/vb;->c0(Lo9j;Ly2f;)Z

    move-result v16

    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v17

    if-nez v17, :cond_2

    if-eqz v16, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Lo9j;->s:J

    :goto_0
    move-wide/from16 v19, v5

    goto :goto_2

    :cond_2
    :goto_1
    iget-wide v5, v0, Lo9j;->c:J

    goto :goto_0

    :goto_2
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v2

    move-object v2, v8

    move v3, v5

    const/4 v7, 0x1

    move v5, v9

    move-object/from16 v17, v6

    move-object/from16 v7, v22

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/vb;->j(Lw4f;Li7j;ZIZLe4f;Ly2f;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v12, v9}, Lw4f;->g(Z)I

    move-result v1

    move-object v2, v15

    move-wide/from16 v3, v19

    move-object/from16 v8, v22

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_5

    :cond_3
    iget-wide v2, v8, Li7j;->c:J

    cmp-long v2, v2, v13

    if-nez v2, :cond_4

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v8, v22

    invoke-virtual {v12, v1, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v1, v1, Ly2f;->c:I

    move-object v2, v15

    move-wide/from16 v3, v19

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v8, v22

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v1, -0x1

    const/4 v5, 0x1

    :goto_3
    iget v6, v0, Lo9j;->e:I

    if-ne v6, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    move v7, v5

    const/4 v5, 0x0

    :goto_5
    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v7, v17

    const-wide/16 v9, 0x0

    move v5, v1

    move/from16 v17, v6

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_b

    :cond_6
    move-object/from16 v21, v1

    move-object v8, v2

    move-object/from16 v17, v6

    iget-object v6, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v6}, Lw4f;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v9}, Lw4f;->g(Z)I

    move-result v1

    :goto_7
    move v5, v1

    move-object v2, v15

    move-object/from16 v7, v17

    move-wide/from16 v3, v19

    const/4 v1, -0x1

    const-wide/16 v9, 0x0

    :goto_8
    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v12, v15}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_9

    move-object/from16 v1, v17

    move-object v2, v8

    move v3, v4

    move v4, v9

    move-object v5, v15

    move v10, v7

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/vb;->g0(Le4f;Ly2f;IZLjava/lang/Object;Lw4f;Lw4f;)I

    move-result v1

    if-ne v1, v10, :cond_8

    invoke-virtual {v12, v9}, Lw4f;->g(Z)I

    move-result v1

    const/4 v5, 0x1

    goto :goto_9

    :cond_8
    const/4 v5, 0x0

    :goto_9
    move/from16 v22, v5

    move-object v2, v15

    move-object/from16 v7, v17

    move-wide/from16 v3, v19

    const-wide/16 v9, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move v5, v1

    goto :goto_6

    :cond_9
    cmp-long v1, v19, v13

    if-nez v1, :cond_a

    invoke-virtual {v12, v15, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v1, v1, Ly2f;->c:I

    goto :goto_7

    :cond_a
    if-eqz v16, :cond_c

    invoke-virtual {v6, v15, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v1, v8, Ly2f;->c:I

    move-object/from16 v7, v17

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v1, v7, v9, v10}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v1

    iget v1, v1, Le4f;->m:I

    invoke-virtual {v6, v15}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    invoke-virtual {v12, v15, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget v4, v1, Ly2f;->c:I

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_a

    :cond_b
    move-object v2, v15

    move-wide/from16 v3, v19

    :goto_a
    const/4 v1, -0x1

    const/4 v5, -0x1

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v7, v17

    const-wide/16 v9, 0x0

    move-object v2, v15

    move-wide/from16 v3, v19

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto/16 :goto_8

    :goto_b
    if-eq v5, v1, :cond_d

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move v4, v5

    move-wide/from16 v5, v25

    invoke-virtual/range {v1 .. v6}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v6, v3

    move-wide v3, v13

    goto :goto_c

    :cond_d
    move-wide v6, v3

    :goto_c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1, v12, v2, v6, v7}, Li8j;->D(Lw4f;Ljava/lang/Object;J)Lbnj;

    move-result-object v1

    iget v5, v1, Lbnj;->e:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_f

    move-object/from16 v10, v21

    iget v13, v10, Lbnj;->e:I

    if-eq v13, v9, :cond_e

    if-lt v5, v13, :cond_e

    :goto_d
    const/4 v5, 0x1

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    move-object/from16 v10, v21

    goto :goto_d

    :goto_e
    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v10}, Lbnj;->b()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_f

    :cond_10
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v12, v2, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v2

    if-nez v16, :cond_11

    cmp-long v9, v19, v3

    if-nez v9, :cond_11

    iget-object v9, v1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    :cond_11
    :goto_10
    const/4 v9, 0x1

    goto :goto_11

    :cond_12
    invoke-virtual {v10}, Lbnj;->b()Z

    move-result v9

    if-eqz v9, :cond_13

    iget v9, v10, Lbnj;->b:I

    invoke-virtual {v2, v9}, Ly2f;->k(I)Z

    :cond_13
    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v1, Lbnj;->b:I

    invoke-virtual {v2, v9}, Ly2f;->k(I)Z

    goto :goto_10

    :goto_11
    if-eq v9, v5, :cond_14

    goto :goto_12

    :cond_14
    move-object v1, v10

    :goto_12
    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v10}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-wide v6, v0, Lo9j;->s:J

    goto :goto_13

    :cond_15
    iget-object v0, v1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v8}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v0, v1, Lbnj;->c:I

    iget v2, v1, Lbnj;->b:I

    invoke-virtual {v8, v2}, Ly2f;->e(I)I

    move-result v2

    if-ne v0, v2, :cond_16

    invoke-virtual {v8}, Ly2f;->h()J

    :cond_16
    const-wide/16 v6, 0x0

    :cond_17
    :goto_13
    move-object v10, v1

    move-wide v13, v6

    move/from16 v5, v22

    move/from16 v15, v23

    move-wide/from16 v29, v3

    move/from16 v3, v17

    move-wide/from16 v16, v29

    :goto_14
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->b:Lbnj;

    invoke-virtual {v0, v10}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v0, v0, Lo9j;->s:J

    cmp-long v0, v13, v0

    if-eqz v0, :cond_19

    :cond_18
    move/from16 v19, v9

    goto :goto_15

    :cond_19
    const/16 v19, 0x0

    :goto_15
    const/4 v7, 0x0

    const/16 v20, 0x3

    const/4 v8, 0x2

    if-eqz v5, :cond_1b

    :try_start_0
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget v0, v0, Lo9j;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eq v0, v9, :cond_1a

    const/4 v5, 0x4

    :try_start_1
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/vb;->M(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_16
    const/4 v6, 0x0

    goto :goto_17

    :catchall_0
    move-exception v0

    move/from16 v18, v5

    move-object v9, v7

    move v6, v8

    const/4 v8, 0x0

    goto/16 :goto_26

    :cond_1a
    const/4 v5, 0x4

    goto :goto_16

    :goto_17
    :try_start_2
    invoke-virtual {v11, v6, v6, v6, v9}, Lcom/google/android/gms/internal/ads/vb;->D(ZZZZ)V

    goto :goto_19

    :catchall_1
    move-exception v0

    :goto_18
    move/from16 v18, v5

    move-object v9, v7

    move/from16 v29, v8

    move v8, v6

    move/from16 v6, v29

    goto/16 :goto_26

    :catchall_2
    move-exception v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    goto :goto_18

    :cond_1b
    const/4 v5, 0x4

    const/4 v6, 0x0

    :goto_19
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    move v1, v6

    :goto_1a
    if-ge v1, v8, :cond_1c

    aget-object v2, v0, v1

    invoke-virtual {v2, v12}, Lcaj;->Q(Lw4f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_1c
    if-nez v19, :cond_21

    :try_start_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v0

    if-nez v0, :cond_1d

    const-wide/16 v21, 0x0

    goto :goto_1b

    :cond_1d
    invoke-virtual {v1}, Li8j;->A()Ld8j;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/vb;->w0(Ld8j;)J

    move-result-wide v2

    move-wide/from16 v21, v2

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->a0()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_1e

    :try_start_4
    invoke-virtual {v1}, Li8j;->z()Ld8j;

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_1e
    const-wide/16 v25, 0x0

    goto :goto_1c

    :cond_1f
    invoke-virtual {v1}, Li8j;->z()Ld8j;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/vb;->w0(Ld8j;)J

    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v25, v2

    :goto_1c
    :try_start_5
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/vb;->N:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v2, p1

    move/from16 v18, v5

    move v9, v6

    move-wide/from16 v5, v21

    move-wide/from16 v7, v25

    :try_start_6
    invoke-virtual/range {v1 .. v8}, Li8j;->o(Lw4f;JJJ)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_20

    :try_start_7
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/vb;->J(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v8, 0x2

    goto :goto_20

    :catchall_3
    move-exception v0

    move v8, v9

    const/4 v6, 0x2

    :goto_1d
    const/4 v9, 0x0

    goto/16 :goto_26

    :cond_20
    const/4 v8, 0x2

    and-int/2addr v0, v8

    if-eqz v0, :cond_24

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->l()V

    goto :goto_20

    :catchall_4
    move-exception v0

    :goto_1e
    move v6, v8

    move v8, v9

    goto :goto_1d

    :catchall_5
    move-exception v0

    const/4 v8, 0x2

    goto :goto_1e

    :catchall_6
    move-exception v0

    move/from16 v18, v5

    move v9, v6

    goto :goto_1e

    :cond_21
    move/from16 v18, v5

    move v9, v6

    invoke-virtual/range {p1 .. p1}, Lw4f;->o()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->w()Ld8j;

    move-result-object v1

    :goto_1f
    if-eqz v1, :cond_23

    iget-object v2, v1, Ld8j;->g:Lf8j;

    iget-object v2, v2, Lf8j;->a:Lbnj;

    invoke-virtual {v2, v10}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Ld8j;->g:Lf8j;

    invoke-virtual {v0, v12, v2}, Li8j;->C(Lw4f;Lf8j;)Lf8j;

    move-result-object v2

    iput-object v2, v1, Ld8j;->g:Lf8j;

    invoke-virtual {v1}, Ld8j;->r()V

    :cond_22
    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    goto :goto_1f

    :cond_23
    invoke-virtual {v11, v10, v13, v14, v3}, Lcom/google/android/gms/internal/ads/vb;->e(Lbnj;JZ)J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-wide v13, v0

    :cond_24
    :goto_20
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v4, v0, Lo9j;->a:Lw4f;

    iget-object v5, v0, Lo9j;->b:Lbnj;

    const/4 v1, 0x1

    if-eq v1, v15, :cond_25

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_21

    :cond_25
    move-wide v6, v13

    :goto_21
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move v15, v8

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/vb;->X(Lw4f;Lbnj;Lw4f;Lbnj;JZ)V

    if-nez v19, :cond_27

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v0, v0, Lo9j;->c:J

    cmp-long v0, v16, v0

    if-eqz v0, :cond_26

    goto :goto_22

    :cond_26
    move v13, v9

    goto :goto_25

    :cond_27
    :goto_22
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v0, Lo9j;->b:Lbnj;

    iget-object v1, v1, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    if-eqz v19, :cond_28

    if-eqz p2, :cond_28

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {v0, v1, v2}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v0

    iget-boolean v0, v0, Ly2f;->f:Z

    if-nez v0, :cond_28

    const/16 v24, 0x1

    goto :goto_23

    :cond_28
    move/from16 v24, v9

    :goto_23
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v7, v0, Lo9j;->d:J

    invoke-virtual {v12, v1}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    goto :goto_24

    :cond_29
    move/from16 v18, v20

    :goto_24
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v16

    move v13, v9

    move/from16 v9, v24

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->E()V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    invoke-virtual {v11, v12, v0}, Lcom/google/android/gms/internal/ads/vb;->H(Lw4f;Lw4f;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v0, v12}, Lo9j;->g(Lw4f;)Lo9j;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual/range {p1 .. p1}, Lw4f;->o()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v9, 0x0

    iput-object v9, v11, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    :cond_2a
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    invoke-interface {v0, v15}, Lolg;->zzj(I)Z

    return-void

    :goto_26
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v4, v1, Lo9j;->a:Lw4f;

    iget-object v5, v1, Lo9j;->b:Lbnj;

    const/4 v7, 0x1

    if-eq v7, v15, :cond_2b

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_27

    :cond_2b
    move-wide/from16 v27, v13

    :goto_27
    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v21, v7

    move-wide/from16 v6, v27

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/vb;->X(Lw4f;Lbnj;Lw4f;Lbnj;JZ)V

    if-nez v19, :cond_2d

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v1, v1, Lo9j;->c:J

    cmp-long v1, v16, v1

    if-eqz v1, :cond_2c

    goto :goto_28

    :cond_2c
    move-object v13, v9

    goto :goto_2b

    :cond_2d
    :goto_28
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v2, v1, Lo9j;->b:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    iget-object v1, v1, Lo9j;->a:Lw4f;

    if-eqz v19, :cond_2e

    if-eqz p2, :cond_2e

    invoke-virtual {v1}, Lw4f;->o()Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {v1, v2, v3}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    iget-boolean v1, v1, Ly2f;->f:Z

    if-nez v1, :cond_2e

    goto :goto_29

    :cond_2e
    const/16 v21, 0x0

    :goto_29
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v7, v1, Lo9j;->d:J

    invoke-virtual {v12, v2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    goto :goto_2a

    :cond_2f
    move/from16 v18, v20

    :goto_2a
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v16

    move-object v13, v9

    move/from16 v9, v21

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/vb;->k(Lbnj;JJJZI)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->E()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v1, v1, Lo9j;->a:Lw4f;

    invoke-virtual {v11, v12, v1}, Lcom/google/android/gms/internal/ads/vb;->H(Lw4f;Lw4f;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v1, v12}, Lo9j;->g(Lw4f;)Lo9j;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual/range {p1 .. p1}, Lw4f;->o()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/vb;->M:Li7j;

    :cond_30
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/vb;->s(Z)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lolg;->zzj(I)Z

    throw v0
.end method

.method public final declared-synchronized t0(Ljava/lang/Object;J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vb;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x1e

    invoke-interface {v1, p1, v2}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p1

    invoke-interface {p1}, Lnkg;->zza()V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v1

    if-eqz p1, :cond_1

    new-instance p1, Ls6j;

    invoke-direct {p1, v0}, Ls6j;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/vb;->Z(Lk3i;J)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public final u(Lvwe;Z)V
    .locals 2

    iget v0, p1, Lvwe;->a:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/vb;->v(Lvwe;FZZ)V

    return-void
.end method

.method public final u0(Ljava/util/List;IJLbpj;)V
    .locals 8

    new-instance v7, La7j;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, La7j;-><init>(Ljava/util/List;Lbpj;IJLl7j;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 p1, 0x11

    invoke-interface {p0, p1, v7}, Lolg;->b(ILjava/lang/Object;)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final v(Lvwe;FZZ)V
    .locals 30

    move-object/from16 v0, p0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg7j;->a(I)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v1, Lo9j;->a:Lw4f;

    iget-object v4, v1, Lo9j;->b:Lbnj;

    iget-wide v5, v1, Lo9j;->c:J

    iget-wide v7, v1, Lo9j;->d:J

    iget v9, v1, Lo9j;->e:I

    iget-object v10, v1, Lo9j;->f:Lcom/google/android/gms/internal/ads/zzii;

    iget-boolean v11, v1, Lo9j;->g:Z

    iget-object v12, v1, Lo9j;->h:Lnpj;

    iget-object v13, v1, Lo9j;->i:Larj;

    iget-object v14, v1, Lo9j;->j:Ljava/util/List;

    iget-object v15, v1, Lo9j;->k:Lbnj;

    iget-boolean v2, v1, Lo9j;->l:Z

    move/from16 v16, v2

    iget v2, v1, Lo9j;->m:I

    move/from16 v17, v2

    iget v2, v1, Lo9j;->n:I

    move/from16 v18, v2

    new-instance v2, Lo9j;

    move-object/from16 p3, v2

    move-object/from16 v29, v2

    move-object/from16 p4, v3

    iget-wide v2, v1, Lo9j;->q:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lo9j;->r:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lo9j;->s:J

    move-wide/from16 v24, v2

    iget-wide v1, v1, Lo9j;->t:J

    move-wide/from16 v26, v1

    const/16 v28, 0x0

    move-object/from16 v19, p1

    move-object/from16 v3, p4

    move-object/from16 v2, v29

    invoke-direct/range {v2 .. v28}, Lo9j;-><init>(Lw4f;Lbnj;JJILcom/google/android/gms/internal/ads/zzii;ZLnpj;Larj;Ljava/util/List;Lbnj;ZIILvwe;JJJJZ)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    :cond_1
    move-object/from16 v1, p1

    iget v1, v1, Lvwe;->a:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v2}, Li8j;->w()Ld8j;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ld8j;->i()Larj;

    move-result-object v4

    iget-object v4, v4, Larj;->c:[Ltqj;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ld8j;->g()Ld8j;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    :goto_2
    const/4 v2, 0x2

    if-ge v3, v2, :cond_4

    aget-object v2, v0, v3

    move/from16 v4, p2

    invoke-virtual {v2, v4, v1}, Lcaj;->P(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final v0(Lw4f;Ljava/lang/Object;J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->m:Ly2f;

    invoke-virtual {p1, p2, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p2

    iget p2, p2, Ly2f;->c:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->l:Le4f;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lw4f;->e(ILe4f;J)Le4f;

    iget-wide p1, p0, Le4f;->e:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Le4f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Le4f;->h:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Le4f;->f:J

    sget v2, Lkfh;->a:I

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    :goto_0
    iget-wide v0, p0, Le4f;->e:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lkfh;->N(J)J

    move-result-wide p0

    sub-long/2addr p0, p3

    return-wide p0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public final w()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v1}, Li8j;->v()Ld8j;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vb;->f0(Ld8j;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v23, v1

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Li8j;->v()Ld8j;

    move-result-object v2

    invoke-virtual {v2}, Ld8j;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/vb;->d(J)J

    move-result-wide v4

    invoke-virtual {v1}, Li8j;->w()Ld8j;

    move-result-object v6

    if-ne v2, v6, :cond_1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v8

    :goto_0
    sub-long/2addr v6, v8

    move-wide v10, v6

    goto :goto_1

    :cond_1
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, v2, Ld8j;->g:Lf8j;

    iget-wide v8, v8, Lf8j;->b:J

    goto :goto_0

    :goto_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v6, v6, Lo9j;->a:Lw4f;

    iget-object v7, v2, Ld8j;->g:Lf8j;

    iget-object v7, v7, Lf8j;->a:Lbnj;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/vb;->e0(Lw4f;Lbnj;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->Y:Lw1j;

    invoke-virtual {v6}, Lw1j;->b()J

    move-result-wide v6

    :goto_2
    move-wide/from16 v17, v6

    goto :goto_3

    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/vb;->u:Ltfj;

    new-instance v15, Lr7j;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v8, v6, Lo9j;->a:Lw4f;

    iget-object v2, v2, Ld8j;->g:Lf8j;

    iget-object v9, v2, Lf8j;->a:Lbnj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v2}, Lj2j;->zzc()Lvwe;

    move-result-object v2

    iget v14, v2, Lvwe;->a:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-boolean v2, v2, Lo9j;->l:Z

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/vb;->F:Z

    move-wide/from16 v21, v4

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->G:J

    move-object v6, v15

    move v5, v12

    move-wide/from16 v12, v21

    move-object/from16 v23, v1

    move-object v1, v15

    move v15, v2

    move/from16 v16, v5

    move-wide/from16 v19, v3

    invoke-direct/range {v6 .. v20}, Lr7j;-><init>(Ltfj;Lw4f;Lbnj;JJFZZJJ)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    invoke-interface {v2, v1}, Lt7j;->g(Lr7j;)Z

    move-result v3

    invoke-virtual/range {v23 .. v23}, Li8j;->w()Ld8j;

    move-result-object v4

    if-nez v3, :cond_4

    iget-boolean v5, v4, Ld8j;->e:Z

    if-eqz v5, :cond_4

    const-wide/32 v5, 0x7a120

    cmp-long v5, v21, v5

    if-gez v5, :cond_4

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/vb;->n:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v4, Ld8j;->a:Lzmj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v4, v4, Lo9j;->s:J

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lzmj;->e(JZ)V

    invoke-interface {v2, v1}, Lt7j;->g(Lr7j;)Z

    move-result v3

    :cond_4
    :goto_4
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/vb;->H:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {v23 .. v23}, Li8j;->v()Ld8j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lv7j;

    invoke-direct {v2}, Lv7j;-><init>()V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v1}, Ld8j;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lv7j;->e(J)Lv7j;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v3}, Lj2j;->zzc()Lvwe;

    move-result-object v3

    iget v3, v3, Lvwe;->a:F

    invoke-virtual {v2, v3}, Lv7j;->f(F)Lv7j;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/vb;->G:J

    invoke-virtual {v2, v3, v4}, Lv7j;->d(J)Lv7j;

    new-instance v3, Lz7j;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lz7j;-><init>(Lv7j;Lx7j;)V

    invoke-virtual {v1, v3}, Ld8j;->k(Lz7j;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vb;->R()V

    return-void
.end method

.method public final w0(Ld8j;)J
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Ld8j;->e()J

    move-result-wide v0

    iget-boolean v2, p1, Ld8j;->e:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3

    aget-object v4, v3, v2

    invoke-virtual {v4, p1}, Lcaj;->h(Ld8j;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcaj;->z(Ld8j;)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    return-wide v5

    :cond_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final x()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {v0}, Li8j;->G()V

    invoke-virtual {v0}, Li8j;->y()Ld8j;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Ld8j;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Ld8j;->e:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, v0, Ld8j;->a:Lzmj;

    invoke-interface {v1}, Lzmj;->zzp()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->g:Lt7j;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-object v3, v3, Lo9j;->a:Lw4f;

    iget-object v4, v0, Ld8j;->g:Lf8j;

    iget-object v4, v4, Lf8j;->a:Lbnj;

    iget-boolean v5, v0, Ld8j;->e:Z

    if-eqz v5, :cond_1

    invoke-interface {v1}, Lzmj;->zzb()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v2, v3, v4, v5, v6}, Lt7j;->e(Lw4f;Lbnj;J)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Ld8j;->d:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-wide v1, v1, Lf8j;->b:J

    invoke-virtual {v0, p0, v1, v2}, Ld8j;->m(Lymj;J)V

    return-void

    :cond_3
    new-instance v1, Lv7j;

    invoke-direct {v1}, Lv7j;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vb;->N:J

    invoke-virtual {v0}, Ld8j;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lv7j;->e(J)Lv7j;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vb;->o:Lj2j;

    invoke-virtual {v2}, Lj2j;->zzc()Lvwe;

    move-result-object v2

    iget v2, v2, Lvwe;->a:F

    invoke-virtual {v1, v2}, Lv7j;->f(F)Lv7j;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/vb;->G:J

    invoke-virtual {v1, v2, v3}, Lv7j;->d(J)Lv7j;

    new-instance p0, Lz7j;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lz7j;-><init>(Lv7j;Lx7j;)V

    invoke-virtual {v0, p0}, Ld8j;->k(Lz7j;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final x0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    iget-wide v0, v0, Lo9j;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/vb;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-virtual {v0, v1}, Lg7j;->b(Lo9j;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    invoke-static {v0}, Lg7j;->d(Lg7j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->X:Lt4j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    iget-object v0, v0, Lt4j;->a:Ll6j;

    invoke-static {v0, v1}, Ll6j;->m(Ll6j;Lg7j;)V

    new-instance v0, Lg7j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->A:Lo9j;

    invoke-direct {v0, v1}, Lg7j;-><init>(Lo9j;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->B:Lg7j;

    :cond_0
    return-void
.end method

.method public final z(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:[Lcaj;

    aget-object p1, v0, p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->r:Li8j;

    invoke-virtual {p0}, Li8j;->w()Ld8j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcaj;->I(Ld8j;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcaj;->x()I

    throw p0
.end method

.method public final zza(I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lolg;->g(III)Lnkg;

    move-result-object p0

    invoke-interface {p0}, Lnkg;->zza()V

    return-void
.end method

.method public final zzk()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lolg;->zzg(I)V

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Lolg;->zzj(I)Z

    return-void
.end method

.method public final zzm()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vb;->i:Lolg;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lolg;->zzj(I)Z

    return-void
.end method
