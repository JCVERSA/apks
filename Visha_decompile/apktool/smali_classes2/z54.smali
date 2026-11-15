.class public Lz54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz54$b;,
        Lz54$a;
    }
.end annotation


# static fields
.field public static final I:Luk3;

.field public static final J:[B

.field public static final K:Lcom/google/android/exoplayer2/k;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Lqk3;

.field public F:[Lfva;

.field public G:[Lfva;

.field public H:Z

.field public final a:I

.field public final b:Ltua;

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lqw7;

.field public final f:Lqw7;

.field public final g:Lqw7;

.field public final h:[B

.field public final i:Lqw7;

.field public final j:Lpoa;

.field public final k:Lde3;

.field public final l:Lqw7;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Ljava/util/ArrayDeque;

.field public final o:Lfva;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lqw7;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lz54$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt54;

    invoke-direct {v0}, Lt54;-><init>()V

    sput-object v0, Lz54;->I:Luk3;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lz54;->J:[B

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    sput-object v0, Lz54;->K:Lcom/google/android/exoplayer2/k;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lz54;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lz54;-><init>(ILpoa;)V

    return-void
.end method

.method public constructor <init>(ILpoa;)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lz54;-><init>(ILpoa;Ltua;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILpoa;Ltua;Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lz54;-><init>(ILpoa;Ltua;Ljava/util/List;Lfva;)V

    return-void
.end method

.method public constructor <init>(ILpoa;Ltua;Ljava/util/List;Lfva;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lz54;->a:I

    .line 7
    iput-object p2, p0, Lz54;->j:Lpoa;

    .line 8
    iput-object p3, p0, Lz54;->b:Ltua;

    .line 9
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz54;->c:Ljava/util/List;

    .line 10
    iput-object p5, p0, Lz54;->o:Lfva;

    .line 11
    new-instance p1, Lde3;

    invoke-direct {p1}, Lde3;-><init>()V

    iput-object p1, p0, Lz54;->k:Lde3;

    .line 12
    new-instance p1, Lqw7;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lz54;->l:Lqw7;

    .line 13
    new-instance p1, Lqw7;

    sget-object p3, Lay6;->a:[B

    invoke-direct {p1, p3}, Lqw7;-><init>([B)V

    iput-object p1, p0, Lz54;->e:Lqw7;

    .line 14
    new-instance p1, Lqw7;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lz54;->f:Lqw7;

    .line 15
    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lz54;->g:Lqw7;

    .line 16
    new-array p1, p2, [B

    iput-object p1, p0, Lz54;->h:[B

    .line 17
    new-instance p2, Lqw7;

    invoke-direct {p2, p1}, Lqw7;-><init>([B)V

    iput-object p2, p0, Lz54;->i:Lqw7;

    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lz54;->m:Ljava/util/ArrayDeque;

    .line 19
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lz54;->n:Ljava/util/ArrayDeque;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lz54;->d:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p1, p0, Lz54;->x:J

    .line 22
    iput-wide p1, p0, Lz54;->w:J

    .line 23
    iput-wide p1, p0, Lz54;->y:J

    .line 24
    sget-object p1, Lqk3;->C1:Lqk3;

    iput-object p1, p0, Lz54;->E:Lqk3;

    const/4 p1, 0x0

    .line 25
    new-array p2, p1, [Lfva;

    iput-object p2, p0, Lz54;->F:[Lfva;

    .line 26
    new-array p1, p1, [Lfva;

    iput-object p1, p0, Lz54;->G:[Lfva;

    return-void
.end method

.method public static A(Lqw7;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lxk;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lqw7;->H()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqw7;->E()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static B(Lqw7;Landroid/util/SparseArray;Z)Lz54$b;
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lxk;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lz54$b;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lqw7;->H()J

    move-result-wide v1

    iget-object p2, p1, Lz54$b;->b:Lwua;

    iput-wide v1, p2, Lwua;->c:J

    iput-wide v1, p2, Lwua;->d:J

    :cond_2
    iget-object p2, p1, Lz54$b;->e:La42;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget v1, p2, La42;->a:I

    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v2

    goto :goto_3

    :cond_4
    iget v2, p2, La42;->b:I

    :goto_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v3

    goto :goto_4

    :cond_5
    iget v3, p2, La42;->c:I

    :goto_4
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p0

    goto :goto_5

    :cond_6
    iget p0, p2, La42;->d:I

    :goto_5
    iget-object p2, p1, Lz54$b;->b:Lwua;

    new-instance v0, La42;

    invoke-direct {v0, v1, v2, v3, p0}, La42;-><init>(IIII)V

    iput-object v0, p2, Lwua;->a:La42;

    return-object p1
.end method

.method public static C(Lxk$a;Landroid/util/SparseArray;ZI[B)V
    .locals 6

    const v0, 0x74666864

    invoke-virtual {p0, v0}, Lxk$a;->g(I)Lxk$b;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$b;

    iget-object v0, v0, Lxk$b;->b:Lqw7;

    invoke-static {v0, p1, p2}, Lz54;->B(Lqw7;Landroid/util/SparseArray;Z)Lz54$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lz54$b;->b:Lwua;

    iget-wide v0, p2, Lwua;->q:J

    iget-boolean v2, p2, Lwua;->r:Z

    invoke-virtual {p1}, Lz54$b;->k()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lz54$b;->b(Lz54$b;Z)Z

    const v4, 0x74666474

    invoke-virtual {p0, v4}, Lxk$a;->g(I)Lxk$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    iget-object v0, v4, Lxk$b;->b:Lqw7;

    invoke-static {v0}, Lz54;->A(Lqw7;)J

    move-result-wide v0

    iput-wide v0, p2, Lwua;->q:J

    iput-boolean v3, p2, Lwua;->r:Z

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lwua;->q:J

    iput-boolean v2, p2, Lwua;->r:Z

    :goto_0
    invoke-static {p0, p1, p3}, Lz54;->F(Lxk$a;Lz54$b;I)V

    iget-object p1, p1, Lz54$b;->d:Lgva;

    iget-object p1, p1, Lgva;->a:Ltua;

    iget-object p3, p2, Lwua;->a:La42;

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La42;

    iget p3, p3, La42;->a:I

    invoke-virtual {p1, p3}, Ltua;->a(I)Lvua;

    move-result-object p1

    const p3, 0x7361697a

    invoke-virtual {p0, p3}, Lxk$a;->g(I)Lxk$b;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvua;

    iget-object p3, p3, Lxk$b;->b:Lqw7;

    invoke-static {v0, p3, p2}, Lz54;->v(Lvua;Lqw7;Lwua;)V

    :cond_2
    const p3, 0x7361696f

    invoke-virtual {p0, p3}, Lxk$a;->g(I)Lxk$b;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lxk$b;->b:Lqw7;

    invoke-static {p3, p2}, Lz54;->u(Lqw7;Lwua;)V

    :cond_3
    const p3, 0x73656e63

    invoke-virtual {p0, p3}, Lxk$a;->g(I)Lxk$b;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p3, Lxk$b;->b:Lqw7;

    invoke-static {p3, p2}, Lz54;->y(Lqw7;Lwua;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p1, Lvua;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Lz54;->w(Lxk$a;Ljava/lang/String;Lwua;)V

    iget-object p1, p0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    iget-object v0, p0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$b;

    iget v1, v0, Lxk;->a:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Lxk$b;->b:Lqw7;

    invoke-static {v0, p2, p4}, Lz54;->G(Lqw7;Lwua;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static D(Lqw7;)Landroid/util/Pair;
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v2

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v3

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, La42;

    invoke-direct {v4, v1, v2, v3, p0}, La42;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lz54$b;IILqw7;I)I
    .locals 33

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lqw7;->O(I)V

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v1

    invoke-static {v1}, Lxk;->b(I)I

    move-result v1

    iget-object v3, v0, Lz54$b;->d:Lgva;

    iget-object v3, v3, Lgva;->a:Ltua;

    iget-object v4, v0, Lz54$b;->b:Lwua;

    iget-object v5, v4, Lwua;->a:La42;

    invoke-static {v5}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La42;

    iget-object v6, v4, Lwua;->h:[I

    invoke-virtual/range {p3 .. p3}, Lqw7;->G()I

    move-result v7

    aput v7, v6, p1

    iget-object v6, v4, Lwua;->g:[J

    iget-wide v7, v4, Lwua;->c:J

    aput-wide v7, v6, p1

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    iget v9, v5, La42;->d:I

    if-eqz v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    move v11, v8

    goto :goto_2

    :cond_4
    move v11, v7

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    move v12, v8

    goto :goto_3

    :cond_5
    move v12, v7

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_4

    :cond_6
    move v1, v7

    :goto_4
    iget-object v13, v3, Ltua;->h:[J

    if-eqz v13, :cond_7

    array-length v14, v13

    if-ne v14, v8, :cond_7

    aget-wide v13, v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_8

    iget-object v13, v3, Ltua;->i:[J

    invoke-static {v13}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    goto :goto_5

    :cond_7
    const-wide/16 v15, 0x0

    :cond_8
    move-wide v14, v15

    :goto_5
    iget-object v13, v4, Lwua;->i:[I

    iget-object v7, v4, Lwua;->j:[J

    iget-object v8, v4, Lwua;->k:[Z

    iget v2, v3, Ltua;->b:I

    move/from16 v17, v9

    const/4 v9, 0x2

    if-ne v2, v9, :cond_9

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    iget-object v9, v4, Lwua;->h:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    iget-wide v2, v3, Ltua;->c:J

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    iget-wide v7, v4, Lwua;->q:J

    move-wide/from16 v26, v2

    move-wide v2, v7

    move/from16 v7, p4

    :goto_7
    if-ge v7, v9, :cond_12

    if-eqz v10, :cond_a

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v8

    goto :goto_8

    :cond_a
    iget v8, v5, La42;->b:I

    :goto_8
    invoke-static {v8}, Lz54;->e(I)I

    move-result v8

    if-eqz v11, :cond_b

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v18

    move/from16 v28, v10

    goto :goto_9

    :cond_b
    move/from16 v28, v10

    iget v10, v5, La42;->c:I

    move/from16 v18, v10

    :goto_9
    invoke-static/range {v18 .. v18}, Lz54;->e(I)I

    move-result v10

    if-eqz v12, :cond_c

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v18

    move/from16 v29, v6

    move/from16 v6, v18

    goto :goto_a

    :cond_c
    if-nez v7, :cond_d

    if-eqz v6, :cond_d

    move/from16 v29, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_d
    move/from16 v29, v6

    iget v6, v5, La42;->d:I

    :goto_a
    if-eqz v1, :cond_e

    invoke-virtual/range {p3 .. p3}, Lqw7;->n()I

    move-result v18

    move/from16 v30, v1

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v1, v18

    goto :goto_b

    :cond_e
    move/from16 v30, v1

    move/from16 v31, v11

    move/from16 v32, v12

    const/4 v1, 0x0

    :goto_b
    int-to-long v11, v1

    add-long/2addr v11, v2

    sub-long v18, v11, v14

    const-wide/32 v20, 0xf4240

    move-wide/from16 v22, v26

    invoke-static/range {v18 .. v23}, Lblb;->B0(JJJ)J

    move-result-wide v11

    aput-wide v11, v24, v7

    iget-boolean v1, v4, Lwua;->r:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lz54$b;->d:Lgva;

    iget-wide v0, v1, Lgva;->h:J

    add-long/2addr v11, v0

    aput-wide v11, v24, v7

    :cond_f
    aput v10, v13, v7

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    if-eqz p2, :cond_10

    if-nez v7, :cond_11

    :cond_10
    move v0, v1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    aput-boolean v0, v25, v7

    int-to-long v10, v8

    add-long/2addr v2, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v28

    move/from16 v6, v29

    move/from16 v1, v30

    move/from16 v11, v31

    move/from16 v12, v32

    goto/16 :goto_7

    :cond_12
    iput-wide v2, v4, Lwua;->q:J

    return v9
.end method

.method public static F(Lxk$a;Lz54$b;I)V
    .locals 8

    iget-object p0, p0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxk$b;

    iget v7, v6, Lxk;->a:I

    if-ne v7, v5, :cond_0

    iget-object v5, v6, Lxk$b;->b:Lqw7;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lqw7;->O(I)V

    invoke-virtual {v5}, Lqw7;->G()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Lz54$b;->h:I

    iput v1, p1, Lz54$b;->g:I

    iput v1, p1, Lz54$b;->f:I

    iget-object v2, p1, Lz54$b;->b:Lwua;

    invoke-virtual {v2, v3, v4}, Lwua;->e(II)V

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxk$b;

    iget v6, v4, Lxk;->a:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    iget-object v4, v4, Lxk$b;->b:Lqw7;

    invoke-static {p1, v2, p2, v4, v3}, Lz54;->E(Lz54$b;IILqw7;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static G(Lqw7;Lwua;[B)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lqw7;->j([BII)V

    sget-object v0, Lz54;->J:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lz54;->x(Lqw7;ILwua;)V

    return-void
.end method

.method private H(J)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    iget-wide v0, v0, Lxk$a;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    invoke-virtual {p0, v0}, Lz54;->m(Lxk$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz54;->f()V

    return-void
.end method

.method private I(Lpk3;)Z
    .locals 11

    iget v0, p0, Lz54;->s:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lpk3;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Lz54;->s:I

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->E()J

    move-result-wide v4

    iput-wide v4, p0, Lz54;->r:J

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->n()I

    move-result v0

    iput v0, p0, Lz54;->q:I

    :cond_1
    iget-wide v4, p0, Lz54;->r:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Lpk3;->readFully([BII)V

    iget v0, p0, Lz54;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lz54;->s:I

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->H()J

    move-result-wide v4

    iput-wide v4, p0, Lz54;->r:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    iget-wide v4, v0, Lxk$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lz54;->s:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lz54;->r:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Lz54;->r:J

    iget v0, p0, Lz54;->s:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lz54;->s:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lz54;->q:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    :cond_5
    iget-boolean v0, p0, Lz54;->H:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lz54;->E:Lqk3;

    new-instance v8, Lja9$b;

    iget-wide v9, p0, Lz54;->x:J

    invoke-direct {v8, v9, v10, v4, v5}, Lja9$b;-><init>(JJ)V

    invoke-interface {v0, v8}, Lqk3;->d(Lja9;)V

    iput-boolean v3, p0, Lz54;->H:Z

    :cond_6
    iget v0, p0, Lz54;->q:I

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_7

    iget-object v8, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz54$b;

    iget-object v8, v8, Lz54$b;->b:Lwua;

    iput-wide v4, v8, Lwua;->b:J

    iput-wide v4, v8, Lwua;->d:J

    iput-wide v4, v8, Lwua;->c:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lz54;->q:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    iput-object v7, p0, Lz54;->z:Lz54$b;

    iget-wide v0, p0, Lz54;->r:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lz54;->u:J

    const/4 p1, 0x2

    iput p1, p0, Lz54;->p:I

    return v3

    :cond_8
    invoke-static {v0}, Lz54;->M(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lz54;->r:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lz54;->m:Ljava/util/ArrayDeque;

    new-instance v2, Lxk$a;

    iget v4, p0, Lz54;->q:I

    invoke-direct {v2, v4, v0, v1}, Lxk$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lz54;->r:J

    iget p1, p0, Lz54;->s:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    invoke-direct {p0, v0, v1}, Lz54;->H(J)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lz54;->f()V

    goto :goto_2

    :cond_a
    iget p1, p0, Lz54;->q:I

    invoke-static {p1}, Lz54;->N(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    iget p1, p0, Lz54;->s:I

    if-ne p1, v1, :cond_c

    iget-wide v6, p0, Lz54;->r:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    new-instance p1, Lqw7;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lqw7;-><init>(I)V

    iget-object v0, p0, Lz54;->l:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lz54;->t:Lqw7;

    iput v3, p0, Lz54;->p:I

    goto :goto_2

    :cond_b
    const-string p0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_c
    const-string p0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_d
    iget-wide v0, p0, Lz54;->r:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    iput-object v7, p0, Lz54;->t:Lqw7;

    iput v3, p0, Lz54;->p:I

    :goto_2
    return v3

    :cond_e
    const-string p0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_f
    const-string p0, "Atom size less than header length (unsupported)."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static M(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

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

.method private static N(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

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

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lz54;->k()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)I
    .locals 2

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz54;->p:I

    iput v0, p0, Lz54;->s:I

    return-void
.end method

.method public static h(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxk$b;

    iget v5, v4, Lxk;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Lxk$b;->b:Lqw7;

    invoke-virtual {v4}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {v4}, Lhk8;->f([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method public static i(Landroid/util/SparseArray;)Lz54$b;
    .locals 9

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz54$b;

    invoke-static {v5}, Lz54$b;->a(Lz54$b;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lz54$b;->f:I

    iget-object v7, v5, Lz54$b;->d:Lgva;

    iget v7, v7, Lgva;->b:I

    if-eq v6, v7, :cond_2

    :cond_0
    invoke-static {v5}, Lz54$b;->a(Lz54$b;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lz54$b;->h:I

    iget-object v7, v5, Lz54$b;->b:Lwua;

    iget v7, v7, Lwua;->e:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lz54$b;->d()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static synthetic k()[Lnk3;
    .locals 3

    new-instance v0, Lz54;

    invoke-direct {v0}, Lz54;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static s(Lqw7;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lxk;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqw7;->E()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqw7;->H()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static t(Lxk$a;Landroid/util/SparseArray;ZI[B)V
    .locals 5

    iget-object v0, p0, Lxk$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lxk$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxk$a;

    iget v3, v2, Lxk;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lz54;->C(Lxk$a;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static u(Lqw7;Lwua;)V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v1

    invoke-static {v1}, Lxk;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lqw7;->P(I)V

    :cond_0
    invoke-virtual {p0}, Lqw7;->G()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {v1}, Lxk;->c(I)I

    move-result v0

    iget-wide v1, p1, Lwua;->d:J

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lqw7;->E()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lqw7;->H()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lwua;->d:J

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static v(Lvua;Lqw7;Lwua;)V
    .locals 7

    iget p0, p0, Lvua;->d:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    invoke-virtual {p1}, Lqw7;->n()I

    move-result v1

    invoke-static {v1}, Lxk;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    :cond_0
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    invoke-virtual {p1}, Lqw7;->G()I

    move-result v1

    iget v3, p2, Lwua;->f:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p2, Lwua;->m:[Z

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    mul-int v5, v0, v1

    iget-object p0, p2, Lwua;->m:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    iget-object p0, p2, Lwua;->m:[Z

    iget p1, p2, Lwua;->f:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    invoke-virtual {p2, v5}, Lwua;->d(I)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saiz sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lwua;->f:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static w(Lxk$a;Ljava/lang/String;Lwua;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    :goto_0
    iget-object v7, v0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, v0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lxk$b;

    iget-object v8, v7, Lxk$b;->b:Lqw7;

    iget v7, v7, Lxk;->a:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_0

    invoke-virtual {v8, v11}, Lqw7;->O(I)V

    invoke-virtual {v8}, Lqw7;->n()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_0
    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    invoke-virtual {v8, v11}, Lqw7;->O(I)V

    invoke-virtual {v8}, Lqw7;->n()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lqw7;->O(I)V

    invoke-virtual {v5}, Lqw7;->n()I

    move-result v4

    invoke-static {v4}, Lxk;->c(I)I

    move-result v4

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lqw7;->P(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    invoke-virtual {v5, v7}, Lqw7;->P(I)V

    :cond_4
    invoke-virtual {v5}, Lqw7;->n()I

    move-result v4

    if-ne v4, v8, :cond_c

    invoke-virtual {v6, v0}, Lqw7;->O(I)V

    invoke-virtual {v6}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lxk;->c(I)I

    move-result v0

    invoke-virtual {v6, v7}, Lqw7;->P(I)V

    if-ne v0, v8, :cond_6

    invoke-virtual {v6}, Lqw7;->E()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    invoke-virtual {v6, v7}, Lqw7;->P(I)V

    :cond_7
    :goto_2
    invoke-virtual {v6}, Lqw7;->E()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    invoke-virtual {v6, v8}, Lqw7;->P(I)V

    invoke-virtual {v6}, Lqw7;->C()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    invoke-virtual {v6}, Lqw7;->C()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v3

    :goto_3
    if-nez v10, :cond_9

    return-void

    :cond_9
    invoke-virtual {v6}, Lqw7;->C()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    invoke-virtual {v6, v13, v3, v0}, Lqw7;->j([BII)V

    if-nez v12, :cond_a

    invoke-virtual {v6}, Lqw7;->C()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v6, v2, v3, v0}, Lqw7;->j([BII)V

    :cond_a
    move-object/from16 v16, v2

    iput-boolean v8, v1, Lwua;->l:Z

    new-instance v0, Lvua;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lvua;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lwua;->n:Lvua;

    return-void

    :cond_b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method public static x(Lqw7;ILwua;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p1

    invoke-static {p1}, Lxk;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Lqw7;->G()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lwua;->m:[Z

    iget p1, p2, Lwua;->f:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lwua;->f:I

    if-ne v1, v2, :cond_2

    iget-object v2, p2, Lwua;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lqw7;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lwua;->d(I)V

    invoke-virtual {p2, p0}, Lwua;->b(Lqw7;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lwua;->f:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static y(Lqw7;Lwua;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lz54;->x(Lqw7;ILwua;)V

    return-void
.end method

.method public static z(Lqw7;J)Landroid/util/Pair;
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    invoke-virtual/range {p0 .. p0}, Lqw7;->n()I

    move-result v1

    invoke-static {v1}, Lxk;->c(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lqw7;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lqw7;->E()J

    move-result-wide v9

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lqw7;->E()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lqw7;->E()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lqw7;->H()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lqw7;->H()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lblb;->B0(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lqw7;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lqw7;->I()I

    move-result v1

    new-array v7, v1, [I

    new-array v8, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v23, v11

    move v11, v3

    move-wide/from16 v3, v23

    :goto_2
    if-ge v11, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lqw7;->n()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lqw7;->E()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    aput-wide v13, v8, v11

    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lblb;->B0(JJJ)J

    move-result-wide v3

    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lqw7;->P(I)V

    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move v2, v5

    move-object v5, v12

    move-object/from16 v8, v22

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_2

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Law0;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Law0;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final J(Lpk3;)V
    .locals 4

    iget-wide v0, p0, Lz54;->r:J

    long-to-int v0, v0

    iget v1, p0, Lz54;->s:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lz54;->t:Lqw7;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Lpk3;->readFully([BII)V

    new-instance v0, Lxk$b;

    iget v2, p0, Lz54;->q:I

    invoke-direct {v0, v2, v1}, Lxk$b;-><init>(ILqw7;)V

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lz54;->o(Lxk$b;J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    :goto_0
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lz54;->H(J)V

    return-void
.end method

.method public final K(Lpk3;)V
    .locals 9

    iget-object v0, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz54$b;

    iget-object v6, v6, Lz54$b;->b:Lwua;

    iget-boolean v7, v6, Lwua;->p:Z

    if-eqz v7, :cond_0

    iget-wide v6, v6, Lwua;->d:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    iget-object v2, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lz54$b;

    move-wide v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lz54;->p:I

    return-void

    :cond_2
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int p0, v2

    if-ltz p0, :cond_3

    invoke-interface {p1, p0}, Lpk3;->skipFully(I)V

    iget-object p0, v5, Lz54$b;->b:Lwua;

    invoke-virtual {p0, p1}, Lwua;->a(Lpk3;)V

    return-void

    :cond_3
    const-string p0, "Offset to encryption data was negative."

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final L(Lpk3;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lz54;->z:Lz54$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lz54;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lz54;->i(Landroid/util/SparseArray;)Lz54$b;

    move-result-object v2

    if-nez v2, :cond_1

    iget-wide v5, v0, Lz54;->u:J

    invoke-interface/range {p1 .. p1}, Lpk3;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_0

    invoke-interface {v1, v2}, Lpk3;->skipFully(I)V

    invoke-direct/range {p0 .. p0}, Lz54;->f()V

    return v4

    :cond_0
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v2}, Lz54$b;->d()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lpk3;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :cond_2
    invoke-interface {v1, v5}, Lpk3;->skipFully(I)V

    iput-object v2, v0, Lz54;->z:Lz54$b;

    :cond_3
    iget v5, v0, Lz54;->p:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    invoke-virtual {v2}, Lz54$b;->f()I

    move-result v5

    iput v5, v0, Lz54;->A:I

    iget v9, v2, Lz54$b;->f:I

    iget v10, v2, Lz54$b;->i:I

    if-ge v9, v10, :cond_5

    invoke-interface {v1, v5}, Lpk3;->skipFully(I)V

    invoke-virtual {v2}, Lz54$b;->m()V

    invoke-virtual {v2}, Lz54$b;->h()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v3, v0, Lz54;->z:Lz54$b;

    :cond_4
    iput v6, v0, Lz54;->p:I

    return v8

    :cond_5
    iget-object v9, v2, Lz54$b;->d:Lgva;

    iget-object v9, v9, Lgva;->a:Ltua;

    iget v9, v9, Ltua;->g:I

    if-ne v9, v8, :cond_6

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lz54;->A:I

    invoke-interface {v1, v9}, Lpk3;->skipFully(I)V

    :cond_6
    iget-object v5, v2, Lz54$b;->d:Lgva;

    iget-object v5, v5, Lgva;->a:Ltua;

    iget-object v5, v5, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object v5, v5, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Lz54;->A:I

    const/4 v9, 0x7

    invoke-virtual {v2, v5, v9}, Lz54$b;->i(II)I

    move-result v5

    iput v5, v0, Lz54;->B:I

    iget v5, v0, Lz54;->A:I

    iget-object v10, v0, Lz54;->i:Lqw7;

    invoke-static {v5, v10}, Ls4;->a(ILqw7;)V

    iget-object v5, v2, Lz54$b;->a:Lfva;

    iget-object v10, v0, Lz54;->i:Lqw7;

    invoke-interface {v5, v10, v9}, Lfva;->d(Lqw7;I)V

    iget v5, v0, Lz54;->B:I

    add-int/2addr v5, v9

    iput v5, v0, Lz54;->B:I

    goto :goto_0

    :cond_7
    iget v5, v0, Lz54;->A:I

    invoke-virtual {v2, v5, v4}, Lz54$b;->i(II)I

    move-result v5

    iput v5, v0, Lz54;->B:I

    :goto_0
    iget v5, v0, Lz54;->A:I

    iget v9, v0, Lz54;->B:I

    add-int/2addr v5, v9

    iput v5, v0, Lz54;->A:I

    iput v7, v0, Lz54;->p:I

    iput v4, v0, Lz54;->C:I

    :cond_8
    iget-object v5, v2, Lz54$b;->d:Lgva;

    iget-object v5, v5, Lgva;->a:Ltua;

    iget-object v9, v2, Lz54$b;->a:Lfva;

    invoke-virtual {v2}, Lz54$b;->e()J

    move-result-wide v10

    iget-object v12, v0, Lz54;->j:Lpoa;

    if-eqz v12, :cond_9

    invoke-virtual {v12, v10, v11}, Lpoa;->a(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    iget v10, v5, Ltua;->j:I

    if-eqz v10, :cond_e

    iget-object v10, v0, Lz54;->f:Lqw7;

    invoke-virtual {v10}, Lqw7;->d()[B

    move-result-object v10

    aput-byte v4, v10, v4

    aput-byte v4, v10, v8

    const/4 v11, 0x2

    aput-byte v4, v10, v11

    iget v11, v5, Ltua;->j:I

    add-int/lit8 v12, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    :goto_1
    iget v13, v0, Lz54;->B:I

    iget v6, v0, Lz54;->A:I

    if-ge v13, v6, :cond_f

    iget v6, v0, Lz54;->C:I

    if-nez v6, :cond_c

    invoke-interface {v1, v10, v11, v12}, Lpk3;->readFully([BII)V

    iget-object v6, v0, Lz54;->f:Lqw7;

    invoke-virtual {v6, v4}, Lqw7;->O(I)V

    iget-object v6, v0, Lz54;->f:Lqw7;

    invoke-virtual {v6}, Lqw7;->n()I

    move-result v6

    if-lt v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lz54;->C:I

    iget-object v6, v0, Lz54;->e:Lqw7;

    invoke-virtual {v6, v4}, Lqw7;->O(I)V

    iget-object v6, v0, Lz54;->e:Lqw7;

    invoke-interface {v9, v6, v7}, Lfva;->d(Lqw7;I)V

    iget-object v6, v0, Lz54;->f:Lqw7;

    invoke-interface {v9, v6, v8}, Lfva;->d(Lqw7;I)V

    iget-object v6, v0, Lz54;->G:[Lfva;

    array-length v6, v6

    if-lez v6, :cond_a

    iget-object v6, v5, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object v6, v6, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    aget-byte v13, v10, v7

    invoke-static {v6, v13}, Lay6;->g(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    iput-boolean v6, v0, Lz54;->D:Z

    iget v6, v0, Lz54;->B:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lz54;->B:I

    iget v6, v0, Lz54;->A:I

    add-int/2addr v6, v11

    iput v6, v0, Lz54;->A:I

    const/4 v6, 0x3

    goto :goto_1

    :cond_b
    const-string v0, "Invalid NAL length"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    iget-boolean v13, v0, Lz54;->D:Z

    if-eqz v13, :cond_d

    iget-object v13, v0, Lz54;->g:Lqw7;

    invoke-virtual {v13, v6}, Lqw7;->K(I)V

    iget-object v6, v0, Lz54;->g:Lqw7;

    invoke-virtual {v6}, Lqw7;->d()[B

    move-result-object v6

    iget v13, v0, Lz54;->C:I

    invoke-interface {v1, v6, v4, v13}, Lpk3;->readFully([BII)V

    iget-object v6, v0, Lz54;->g:Lqw7;

    iget v13, v0, Lz54;->C:I

    invoke-interface {v9, v6, v13}, Lfva;->d(Lqw7;I)V

    iget v6, v0, Lz54;->C:I

    iget-object v13, v0, Lz54;->g:Lqw7;

    invoke-virtual {v13}, Lqw7;->d()[B

    move-result-object v13

    iget-object v7, v0, Lz54;->g:Lqw7;

    invoke-virtual {v7}, Lqw7;->f()I

    move-result v7

    invoke-static {v13, v7}, Lay6;->q([BI)I

    move-result v7

    iget-object v13, v0, Lz54;->g:Lqw7;

    iget-object v8, v5, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object v8, v8, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lqw7;->O(I)V

    iget-object v3, v0, Lz54;->g:Lqw7;

    invoke-virtual {v3, v7}, Lqw7;->N(I)V

    iget-object v3, v0, Lz54;->g:Lqw7;

    iget-object v7, v0, Lz54;->G:[Lfva;

    invoke-static {v14, v15, v3, v7}, Lis0;->a(JLqw7;[Lfva;)V

    goto :goto_3

    :cond_d
    invoke-interface {v9, v1, v6, v4}, Lfva;->c(Lms1;IZ)I

    move-result v6

    :goto_3
    iget v3, v0, Lz54;->B:I

    add-int/2addr v3, v6

    iput v3, v0, Lz54;->B:I

    iget v3, v0, Lz54;->C:I

    sub-int/2addr v3, v6

    iput v3, v0, Lz54;->C:I

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_4
    iget v3, v0, Lz54;->B:I

    iget v5, v0, Lz54;->A:I

    if-ge v3, v5, :cond_f

    sub-int/2addr v5, v3

    invoke-interface {v9, v1, v5, v4}, Lfva;->c(Lms1;IZ)I

    move-result v3

    iget v5, v0, Lz54;->B:I

    add-int/2addr v5, v3

    iput v5, v0, Lz54;->B:I

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Lz54$b;->c()I

    move-result v12

    invoke-virtual {v2}, Lz54$b;->g()Lvua;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v1, Lvua;->c:Lfva$a;

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :goto_5
    iget v13, v0, Lz54;->A:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Lfva;->e(JIIILfva$a;)V

    invoke-virtual {v0, v4, v5}, Lz54;->r(J)V

    invoke-virtual {v2}, Lz54$b;->h()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lz54;->z:Lz54$b;

    :cond_11
    const/4 v1, 0x3

    iput v1, v0, Lz54;->p:I

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lqk3;)V
    .locals 12

    iput-object p1, p0, Lz54;->E:Lqk3;

    invoke-direct {p0}, Lz54;->f()V

    invoke-virtual {p0}, Lz54;->j()V

    iget-object v0, p0, Lz54;->b:Ltua;

    if-eqz v0, :cond_0

    new-instance v1, Lz54$b;

    iget v0, v0, Ltua;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    new-instance v0, Lgva;

    iget-object v4, p0, Lz54;->b:Ltua;

    new-array v5, v2, [J

    new-array v6, v2, [I

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lgva;-><init>(Ltua;[J[II[J[IJ)V

    new-instance v3, La42;

    invoke-direct {v3, v2, v2, v2, v2}, La42;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lz54$b;-><init>(Lfva;Lgva;La42;)V

    iget-object p1, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lz54;->E:Lqk3;

    invoke-interface {p0}, Lqk3;->endTracks()V

    :cond_0
    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 1

    :cond_0
    :goto_0
    iget p2, p0, Lz54;->p:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lz54;->L(Lpk3;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lz54;->K(Lpk3;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lz54;->J(Lpk3;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lz54;->I(Lpk3;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public c(Lpk3;)Z
    .locals 0

    invoke-static {p1}, Llr9;->b(Lpk3;)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/util/SparseArray;I)La42;
    .locals 1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La42;

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La42;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La42;

    return-object p0
.end method

.method public final j()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Lfva;

    iput-object v0, p0, Lz54;->F:[Lfva;

    iget-object v1, p0, Lz54;->o:Lfva;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lz54;->a:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lz54;->E:Lqk3;

    const/4 v6, 0x5

    invoke-interface {v5, v4, v6}, Lqk3;->track(II)Lfva;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    :cond_1
    iget-object v0, p0, Lz54;->F:[Lfva;

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfva;

    iput-object v0, p0, Lz54;->F:[Lfva;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    sget-object v6, Lz54;->K:Lcom/google/android/exoplayer2/k;

    invoke-interface {v5, v6}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz54;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lfva;

    iput-object v0, p0, Lz54;->G:[Lfva;

    :goto_2
    iget-object v0, p0, Lz54;->G:[Lfva;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lz54;->E:Lqk3;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iget-object v3, p0, Lz54;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/k;

    invoke-interface {v0, v3}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iget-object v3, p0, Lz54;->G:[Lfva;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public l(Ltua;)Ltua;
    .locals 0

    return-object p1
.end method

.method public final m(Lxk$a;)V
    .locals 2

    iget v0, p1, Lxk;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lz54;->q(Lxk$a;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lz54;->p(Lxk$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxk$a;

    invoke-virtual {p0, p1}, Lxk$a;->d(Lxk$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Lqw7;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lz54;->F:[Lfva;

    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lqw7;->O(I)V

    invoke-virtual/range {p1 .. p1}, Lqw7;->n()I

    move-result v2

    invoke-static {v2}, Lxk;->c(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unsupported emsg version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentedMp4Extractor"

    invoke-static {v1, v0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lqw7;->H()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lblb;->B0(JJJ)J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lblb;->B0(JJJ)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v21, v10

    move-wide v8, v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lqw7;->w()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Lblb;->B0(JJJ)J

    move-result-wide v8

    iget-wide v11, v0, Lz54;->y:J

    cmp-long v13, v11, v4

    if-eqz v13, :cond_3

    add-long/2addr v11, v8

    move-wide/from16 v17, v11

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Lblb;->B0(JJJ)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lqw7;->E()J

    move-result-wide v11

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-object/from16 v21, v10

    move-wide/from16 v24, v11

    move-wide/from16 v14, v17

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lqw7;->a()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual/range {p1 .. p1}, Lqw7;->a()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Lqw7;->j([BII)V

    new-instance v1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Lqw7;

    iget-object v6, v0, Lz54;->k:Lde3;

    invoke-virtual {v6, v1}, Lde3;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lqw7;-><init>([B)V

    invoke-virtual {v2}, Lqw7;->a()I

    move-result v1

    iget-object v6, v0, Lz54;->F:[Lfva;

    array-length v10, v6

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v6, v11

    invoke-virtual {v2, v7}, Lqw7;->O(I)V

    invoke-interface {v12, v2, v1}, Lfva;->d(Lqw7;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v14, v4

    if-nez v2, :cond_5

    iget-object v2, v0, Lz54;->n:Ljava/util/ArrayDeque;

    new-instance v4, Lz54$a;

    invoke-direct {v4, v8, v9, v3, v1}, Lz54$a;-><init>(JZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lz54;->v:I

    add-int/2addr v2, v1

    iput v2, v0, Lz54;->v:I

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lz54;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lz54;->n:Ljava/util/ArrayDeque;

    new-instance v3, Lz54$a;

    invoke-direct {v3, v14, v15, v7, v1}, Lz54$a;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lz54;->v:I

    add-int/2addr v2, v1

    iput v2, v0, Lz54;->v:I

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lz54;->j:Lpoa;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v14, v15}, Lpoa;->a(J)J

    move-result-wide v14

    :cond_7
    iget-object v0, v0, Lz54;->F:[Lfva;

    array-length v2, v0

    :goto_3
    if-ge v7, v2, :cond_8

    aget-object v16, v0, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move-wide/from16 v17, v14

    move/from16 v20, v1

    invoke-interface/range {v16 .. v22}, Lfva;->e(JIIILfva$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public final o(Lxk$b;J)V
    .locals 2

    iget-object v0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxk$a;

    invoke-virtual {p0, p1}, Lxk$a;->e(Lxk$b;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lxk;->a:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lxk$b;->b:Lqw7;

    invoke-static {p1, p2, p3}, Lz54;->z(Lqw7;J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lz54;->y:J

    iget-object p2, p0, Lz54;->E:Lqk3;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lja9;

    invoke-interface {p2, p1}, Lqk3;->d(Lja9;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz54;->H:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Lxk$b;->b:Lqw7;

    invoke-virtual {p0, p1}, Lz54;->n(Lqw7;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(Lxk$a;)V
    .locals 7

    iget-object v0, p0, Lz54;->d:Landroid/util/SparseArray;

    iget-object v1, p0, Lz54;->b:Ltua;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lz54;->a:I

    iget-object v4, p0, Lz54;->h:[B

    invoke-static {p1, v0, v1, v3, v4}, Lz54;->t(Lxk$a;Landroid/util/SparseArray;ZI[B)V

    iget-object p1, p1, Lxk$a;->c:Ljava/util/List;

    invoke-static {p1}, Lz54;->h(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz54$b;

    invoke-virtual {v3, p1}, Lz54$b;->n(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lz54;->w:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz54$b;

    iget-wide v5, p0, Lz54;->w:J

    invoke-virtual {v0, v5, v6}, Lz54$b;->l(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-wide v3, p0, Lz54;->w:J

    :cond_3
    return-void
.end method

.method public final q(Lxk$a;)V
    .locals 12

    iget-object v0, p0, Lz54;->b:Ltua;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lzi;->h(ZLjava/lang/Object;)V

    iget-object v0, p1, Lxk$a;->c:Ljava/util/List;

    invoke-static {v0}, Lz54;->h(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    invoke-virtual {p1, v0}, Lxk$a;->f(I)Lxk$a;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, v0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v8, v0, Lxk$a;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxk$b;

    iget v9, v8, Lxk;->a:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_1

    iget-object v8, v8, Lxk$b;->b:Lqw7;

    invoke-static {v8}, Lz54;->D(Lqw7;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, La42;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v10, 0x6d656864

    if-ne v9, v10, :cond_2

    iget-object v5, v8, Lxk$b;->b:Lqw7;

    invoke-static {v5}, Lz54;->s(Lqw7;)J

    move-result-wide v5

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Led4;

    invoke-direct {v4}, Led4;-><init>()V

    iget v0, p0, Lz54;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    new-instance v10, Lv54;

    invoke-direct {v10, p0}, Lv54;-><init>(Lz54;)V

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v10}, Lyk;->A(Lxk$a;Led4;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLo74;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgva;

    iget-object v3, v2, Lgva;->a:Ltua;

    new-instance v4, Lz54$b;

    iget-object v5, p0, Lz54;->E:Lqk3;

    iget v6, v3, Ltua;->b:I

    invoke-interface {v5, v1, v6}, Lqk3;->track(II)Lfva;

    move-result-object v5

    iget v6, v3, Ltua;->a:I

    invoke-virtual {p0, v11, v6}, Lz54;->g(Landroid/util/SparseArray;I)La42;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lz54$b;-><init>(Lfva;Lgva;La42;)V

    iget-object v2, p0, Lz54;->d:Landroid/util/SparseArray;

    iget v5, v3, Ltua;->a:I

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v4, p0, Lz54;->x:J

    iget-wide v2, v3, Ltua;->e:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lz54;->x:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lz54;->E:Lqk3;

    invoke-interface {p0}, Lqk3;->endTracks()V

    goto :goto_7

    :cond_6
    iget-object v3, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    invoke-static {v2}, Lzi;->g(Z)V

    :goto_6
    if-ge v1, v0, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgva;

    iget-object v3, v2, Lgva;->a:Ltua;

    iget-object v4, p0, Lz54;->d:Landroid/util/SparseArray;

    iget v5, v3, Ltua;->a:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz54$b;

    iget v3, v3, Ltua;->a:I

    invoke-virtual {p0, v11, v3}, Lz54;->g(Landroid/util/SparseArray;I)La42;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lz54$b;->j(Lgva;La42;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method public final r(J)V
    .locals 13

    :cond_0
    iget-object v0, p0, Lz54;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lz54;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz54$a;

    iget v1, p0, Lz54;->v:I

    iget v2, v0, Lz54$a;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lz54;->v:I

    iget-wide v1, v0, Lz54$a;->a:J

    iget-boolean v3, v0, Lz54$a;->b:Z

    if-eqz v3, :cond_1

    add-long/2addr v1, p1

    :cond_1
    iget-object v3, p0, Lz54;->j:Lpoa;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1, v2}, Lpoa;->a(J)J

    move-result-wide v1

    :cond_2
    iget-object v10, p0, Lz54;->F:[Lfva;

    array-length v11, v10

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    iget v7, v0, Lz54$a;->c:I

    iget v8, p0, Lz54;->v:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lfva;->e(JIIILfva$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    iget-object p1, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lz54;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz54$b;

    invoke-virtual {v1}, Lz54$b;->k()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz54;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lz54;->v:I

    iput-wide p3, p0, Lz54;->w:J

    iget-object p1, p0, Lz54;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lz54;->f()V

    return-void
.end method
