.class public final Lyke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Lu4h;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Lble;

.field public final f:Lvge;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Lvke;

.field public k:Luke;

.field public l:Lf9e;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(IILvge;Lfch;Lble;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyke;->e:Lble;

    iput p2, p0, Lyke;->a:I

    iput-object p3, p0, Lyke;->f:Lvge;

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyke;->b:Ljava/util/List;

    new-instance p1, Lu4h;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lu4h;-><init>([BI)V

    iput-object p1, p0, Lyke;->c:Lu4h;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lyke;->h:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lyke;->i:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lyke;->g:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lyke;->d:Landroid/util/SparseIntArray;

    new-instance p4, Lvke;

    const p6, 0x1b8a0

    invoke-direct {p4, p6}, Lvke;-><init>(I)V

    iput-object p4, p0, Lyke;->j:Lvke;

    sget-object p4, Lf9e;->C6:Lf9e;

    iput-object p4, p0, Lyke;->l:Lf9e;

    const/4 p4, -0x1

    iput p4, p0, Lyke;->r:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    invoke-interface {p5}, Lble;->zza()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p5, p0, Lyke;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    invoke-virtual {p5, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyke;->g:Landroid/util/SparseArray;

    new-instance p2, Lqke;

    new-instance p4, Lwke;

    invoke-direct {p4, p0}, Lwke;-><init>(Lyke;)V

    invoke-direct {p2, p4}, Lqke;-><init>(Lpke;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a(Lyke;)I
    .locals 0

    iget p0, p0, Lyke;->m:I

    return p0
.end method

.method public static bridge synthetic c(Lyke;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lyke;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic g(Lyke;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lyke;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic h(Lyke;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lyke;->i:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic i(Lyke;)Lf9e;
    .locals 0

    iget-object p0, p0, Lyke;->l:Lf9e;

    return-object p0
.end method

.method public static bridge synthetic j(Lyke;)Lble;
    .locals 0

    iget-object p0, p0, Lyke;->e:Lble;

    return-object p0
.end method

.method public static bridge synthetic k(Lyke;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyke;->b:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic l(Lyke;I)V
    .locals 0

    iput p1, p0, Lyke;->r:I

    return-void
.end method

.method public static bridge synthetic m(Lyke;I)V
    .locals 0

    iput p1, p0, Lyke;->m:I

    return-void
.end method

.method public static bridge synthetic n(Lyke;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyke;->n:Z

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 9

    iget-object p1, p0, Lyke;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfch;

    invoke-virtual {v4}, Lfch;->f()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lfch;->d()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    cmp-long v2, v5, p3

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v4, p3, p4}, Lfch;->i(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyke;->k:Luke;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3, p4}, Li8e;->d(J)V

    :cond_3
    iget-object p1, p0, Lyke;->c:Lu4h;

    invoke-virtual {p1, v0}, Lu4h;->i(I)V

    iget-object p1, p0, Lyke;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    :goto_1
    iget-object p2, p0, Lyke;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldle;

    invoke-interface {p2}, Ldle;->zzc()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lyke;->q:I

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v11

    iget-boolean v3, v0, Lyke;->n:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    cmp-long v3, v11, v13

    if-eqz v3, :cond_1

    iget-object v3, v0, Lyke;->j:Lvke;

    invoke-virtual {v3}, Lvke;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lyke;->r:I

    invoke-virtual {v3, v1, v2, v0}, Lvke;->a(Ld9e;Ly9e;I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    iget-boolean v3, v0, Lyke;->o:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_3

    iput-boolean v15, v0, Lyke;->o:Z

    iget-object v3, v0, Lyke;->j:Lvke;

    invoke-virtual {v3}, Lvke;->b()J

    move-result-wide v4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v16

    if-eqz v4, :cond_2

    new-instance v9, Luke;

    invoke-virtual {v3}, Lvke;->c()Lfch;

    move-result-object v4

    invoke-virtual {v3}, Lvke;->b()J

    move-result-wide v5

    iget v3, v0, Lyke;->r:I

    const v16, 0x1b8a0

    move/from16 v17, v3

    move-object v3, v9

    move-wide v13, v7

    move-wide v7, v11

    move-object v15, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Luke;-><init>(Lfch;JJII)V

    iput-object v15, v0, Lyke;->k:Luke;

    iget-object v3, v0, Lyke;->l:Lf9e;

    invoke-virtual {v15}, Li8e;->b()Lkae;

    move-result-object v4

    invoke-interface {v3, v4}, Lf9e;->i(Lkae;)V

    goto :goto_1

    :cond_2
    move-wide v13, v7

    iget-object v4, v0, Lyke;->l:Lf9e;

    new-instance v5, Ljae;

    invoke-virtual {v3}, Lvke;->b()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v13, v14}, Ljae;-><init>(JJ)V

    invoke-interface {v4, v5}, Lf9e;->i(Lkae;)V

    goto :goto_1

    :cond_3
    move-wide v13, v7

    :goto_1
    iget-boolean v3, v0, Lyke;->p:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, v0, Lyke;->p:Z

    invoke-virtual {v0, v13, v14, v13, v14}, Lyke;->b(JJ)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v4

    cmp-long v4, v4, v13

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iput-wide v13, v2, Ly9e;->a:J

    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lyke;->k:Luke;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Li8e;->e()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v1, v2}, Li8e;->a(Ld9e;Ly9e;)I

    move-result v0

    return v0

    :cond_7
    move v3, v10

    :cond_8
    :goto_3
    iget-object v2, v0, Lyke;->c:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v4

    invoke-virtual {v2}, Lu4h;->w()I

    move-result v5

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-lt v5, v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lu4h;->u()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v2}, Lu4h;->w()I

    move-result v7

    invoke-static {v4, v7, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    invoke-virtual {v2, v4, v5}, Lu4h;->j([BI)V

    :goto_4
    invoke-virtual {v2}, Lu4h;->u()I

    move-result v5

    const/4 v7, -0x1

    if-ge v5, v6, :cond_e

    invoke-virtual {v2}, Lu4h;->x()I

    move-result v5

    rsub-int v8, v5, 0x24b8

    invoke-interface {v1, v4, v5, v8}, Ld9e;->b([BII)I

    move-result v8

    if-ne v8, v7, :cond_d

    move v10, v3

    :goto_5
    iget-object v1, v0, Lyke;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_c

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldle;

    instance-of v2, v1, Like;

    if-eqz v2, :cond_b

    check-cast v1, Like;

    invoke-virtual {v1, v3}, Like;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lu4h;

    invoke-direct {v2}, Lu4h;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Like;->a(Lu4h;I)V

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    return v7

    :cond_d
    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lu4h;->k(I)V

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Lu4h;->w()I

    move-result v1

    invoke-virtual {v2}, Lu4h;->x()I

    move-result v4

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v5

    invoke-static {v5, v1, v4}, Lele;->a([BII)I

    move-result v5

    invoke-virtual {v2, v5}, Lu4h;->l(I)V

    add-int/lit16 v6, v5, 0xbc

    if-le v6, v4, :cond_f

    iget v4, v0, Lyke;->q:I

    sub-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v0, Lyke;->q:I

    goto :goto_6

    :cond_f
    iput v3, v0, Lyke;->q:I

    :goto_6
    invoke-virtual {v2}, Lu4h;->x()I

    move-result v1

    if-le v6, v1, :cond_10

    return v3

    :cond_10
    invoke-virtual {v2}, Lu4h;->A()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_11

    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    return v3

    :cond_11
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    if-eqz v5, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    move v10, v3

    :goto_7
    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v8, v4, 0x20

    and-int/lit8 v9, v4, 0x10

    and-int/lit16 v5, v5, 0x1fff

    if-eqz v9, :cond_13

    iget-object v9, v0, Lyke;->g:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldle;

    goto :goto_8

    :cond_13
    const/4 v9, 0x0

    :goto_8
    if-nez v9, :cond_14

    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    return v3

    :cond_14
    and-int/lit8 v4, v4, 0xf

    iget-object v13, v0, Lyke;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    invoke-virtual {v13, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v14, v4, :cond_15

    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    return v3

    :cond_15
    const/4 v13, 0x1

    add-int/2addr v14, v13

    and-int/lit8 v13, v14, 0xf

    if-eq v4, v13, :cond_16

    invoke-interface {v9}, Ldle;->zzc()V

    :cond_16
    if-eqz v8, :cond_18

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v4

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_17

    const/4 v8, 0x2

    goto :goto_9

    :cond_17
    move v8, v3

    :goto_9
    or-int/2addr v10, v8

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Lu4h;->m(I)V

    :cond_18
    iget-boolean v4, v0, Lyke;->n:Z

    if-nez v4, :cond_19

    iget-object v7, v0, Lyke;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    invoke-virtual {v2, v6}, Lu4h;->k(I)V

    invoke-interface {v9, v2, v10}, Ldle;->a(Lu4h;I)V

    invoke-virtual {v2, v1}, Lu4h;->k(I)V

    if-nez v4, :cond_1b

    :cond_1a
    iget-boolean v1, v0, Lyke;->n:Z

    if-eqz v1, :cond_1b

    const-wide/16 v4, -0x1

    cmp-long v1, v11, v4

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyke;->p:Z

    :cond_1b
    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    return v3
.end method

.method public final e(Ld9e;)Z
    .locals 5

    iget-object p0, p0, Lyke;->c:Lu4h;

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object p0

    check-cast p1, Lm8e;

    const/16 v0, 0x3ac

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0, v1}, Lm8e;->e([BIIZ)Z

    move v0, v1

    :goto_0
    const/16 v2, 0xbc

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v0

    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1}, Lm8e;->l(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final f(Lf9e;)V
    .locals 2

    iget v0, p0, Lyke;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lyke;->f:Lvge;

    new-instance v1, Lche;

    invoke-direct {v1, p1, v0}, Lche;-><init>(Lf9e;Lvge;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lyke;->l:Lf9e;

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
