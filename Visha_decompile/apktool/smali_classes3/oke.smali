.class public final Loke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lfch;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lu4h;

.field public final d:Lmke;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Llke;

.field public j:Lf9e;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lfch;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lfch;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loke;->a:Lfch;

    new-instance v0, Lu4h;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Loke;->c:Lu4h;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loke;->b:Landroid/util/SparseArray;

    new-instance v0, Lmke;

    invoke-direct {v0}, Lmke;-><init>()V

    iput-object v0, p0, Loke;->d:Lmke;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 4

    iget-object p1, p0, Loke;->a:Lfch;

    invoke-virtual {p1}, Lfch;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lfch;->d()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    cmp-long p2, v0, p3

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, p3, p4}, Lfch;->i(J)V

    :cond_1
    iget-object p1, p0, Loke;->i:Llke;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p4}, Li8e;->d(J)V

    :cond_2
    :goto_0
    iget-object p1, p0, Loke;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnke;

    invoke-virtual {p1}, Lnke;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Loke;->j:Lf9e;

    invoke-static {v3}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    iget-object v4, v0, Loke;->d:Lmke;

    invoke-virtual {v4}, Lmke;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1, v2}, Lmke;->a(Ld9e;Ly9e;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    iget-boolean v4, v0, Loke;->k:Z

    const/4 v14, 0x1

    if-nez v4, :cond_3

    iput-boolean v14, v0, Loke;->k:Z

    iget-object v4, v0, Loke;->d:Lmke;

    invoke-virtual {v4}, Lmke;->b()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    new-instance v15, Llke;

    invoke-virtual {v4}, Lmke;->d()Lfch;

    move-result-object v5

    invoke-virtual {v4}, Lmke;->b()J

    move-result-wide v6

    move-object v4, v15

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Llke;-><init>(Lfch;JJ)V

    iput-object v15, v0, Loke;->i:Llke;

    iget-object v4, v0, Loke;->j:Lf9e;

    invoke-virtual {v15}, Li8e;->b()Lkae;

    move-result-object v5

    invoke-interface {v4, v5}, Lf9e;->i(Lkae;)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Loke;->j:Lf9e;

    new-instance v6, Ljae;

    invoke-virtual {v4}, Lmke;->b()J

    move-result-wide v7

    const-wide/16 v14, 0x0

    invoke-direct {v6, v7, v8, v14, v15}, Ljae;-><init>(JJ)V

    invoke-interface {v5, v6}, Lf9e;->i(Lkae;)V

    :cond_3
    :goto_1
    iget-object v5, v0, Loke;->i:Llke;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Li8e;->e()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1, v2}, Li8e;->a(Ld9e;Ly9e;)I

    move-result v0

    return v0

    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Ld9e;->zze()J

    move-result-wide v2

    sub-long/2addr v10, v2

    goto :goto_3

    :cond_6
    move-wide v10, v12

    :goto_3
    cmp-long v2, v10, v12

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    const-wide/16 v5, 0x4

    cmp-long v2, v10, v5

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    return v3

    :cond_8
    :goto_4
    iget-object v2, v0, Loke;->c:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v5, v7, v6, v4}, Ld9e;->e([BIIZ)Z

    move-result v5

    if-nez v5, :cond_9

    return v3

    :cond_9
    invoke-virtual {v2, v7}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v5

    const/16 v6, 0x1b9

    if-ne v5, v6, :cond_a

    return v3

    :cond_a
    const/16 v3, 0x1ba

    if-ne v5, v3, :cond_b

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v0

    const/16 v3, 0xa

    invoke-interface {v1, v0, v7, v3}, Ld9e;->i([BII)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-interface {v1, v0}, Ld9e;->f(I)V

    return v7

    :cond_b
    const/16 v3, 0x1bb

    const/4 v6, 0x2

    const/4 v8, 0x6

    if-ne v5, v3, :cond_c

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v0

    invoke-interface {v1, v0, v7, v6}, Ld9e;->i([BII)V

    invoke-virtual {v2, v7}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->K()I

    move-result v0

    add-int/2addr v0, v8

    invoke-interface {v1, v0}, Ld9e;->f(I)V

    return v7

    :cond_c
    shr-int/lit8 v3, v5, 0x8

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    invoke-interface {v1, v4}, Ld9e;->f(I)V

    return v7

    :cond_d
    and-int/lit16 v3, v5, 0xff

    iget-object v9, v0, Loke;->b:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnke;

    iget-boolean v11, v0, Loke;->e:Z

    if-nez v11, :cond_13

    if-nez v10, :cond_11

    const/16 v11, 0xbd

    const-string v12, "video/mp2p"

    const/4 v13, 0x0

    if-ne v3, v11, :cond_e

    new-instance v5, Lbje;

    invoke-direct {v5, v13, v7, v12}, Lbje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Loke;->f:Z

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Loke;->h:J

    :goto_5
    move-object v13, v5

    goto :goto_6

    :cond_e
    const/4 v4, 0x1

    and-int/lit16 v11, v5, 0xe0

    const/16 v14, 0xc0

    if-ne v11, v14, :cond_f

    new-instance v5, Lxje;

    invoke-direct {v5, v13, v7, v12}, Lxje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v4, v0, Loke;->f:Z

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Loke;->h:J

    goto :goto_5

    :cond_f
    and-int/lit16 v5, v5, 0xf0

    const/16 v11, 0xe0

    if-ne v5, v11, :cond_10

    new-instance v5, Lnje;

    invoke-direct {v5, v13, v12}, Lnje;-><init>(Lfle;Ljava/lang/String;)V

    iput-boolean v4, v0, Loke;->g:Z

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Loke;->h:J

    goto :goto_5

    :cond_10
    :goto_6
    if-eqz v13, :cond_11

    new-instance v5, Lcle;

    const/high16 v10, -0x80000000

    const/16 v11, 0x100

    invoke-direct {v5, v10, v3, v11}, Lcle;-><init>(III)V

    iget-object v10, v0, Loke;->j:Lf9e;

    invoke-interface {v13, v10, v5}, Llje;->c(Lf9e;Lcle;)V

    iget-object v5, v0, Loke;->a:Lfch;

    new-instance v10, Lnke;

    invoke-direct {v10, v13, v5}, Lnke;-><init>(Llje;Lfch;)V

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iget-boolean v3, v0, Loke;->f:Z

    const-wide/32 v11, 0x100000

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Loke;->g:Z

    if-eqz v3, :cond_12

    iget-wide v11, v0, Loke;->h:J

    const-wide/16 v13, 0x2000

    add-long/2addr v11, v13

    :cond_12
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v13

    cmp-long v3, v13, v11

    if-lez v3, :cond_13

    const/4 v3, 0x1

    iput-boolean v3, v0, Loke;->e:Z

    iget-object v0, v0, Loke;->j:Lf9e;

    invoke-interface {v0}, Lf9e;->zzG()V

    :cond_13
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v0

    invoke-interface {v1, v0, v7, v6}, Ld9e;->i([BII)V

    invoke-virtual {v2, v7}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->K()I

    move-result v0

    add-int/2addr v0, v8

    if-nez v10, :cond_14

    invoke-interface {v1, v0}, Ld9e;->f(I)V

    goto :goto_7

    :cond_14
    invoke-virtual {v2, v0}, Lu4h;->i(I)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    invoke-interface {v1, v3, v7, v0}, Ld9e;->h([BII)V

    invoke-virtual {v2, v8}, Lu4h;->l(I)V

    invoke-virtual {v10, v2}, Lnke;->a(Lu4h;)V

    invoke-virtual {v2}, Lu4h;->v()I

    move-result v0

    invoke-virtual {v2, v0}, Lu4h;->k(I)V

    :goto_7
    return v7
.end method

.method public final e(Ld9e;)Z
    .locals 8

    const/16 p0, 0xe

    new-array v0, p0, [B

    check-cast p1, Lm8e;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, v1}, Lm8e;->e([BIIZ)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/16 v3, 0x8

    shl-int/2addr v5, v3

    or-int/2addr p0, v5

    or-int/2addr p0, v7

    const/16 v5, 0x1ba

    if-eq p0, v5, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    aget-byte v5, v0, p0

    and-int/lit16 v5, v5, 0xc4

    const/16 v7, 0x44

    if-eq v5, v7, :cond_1

    return v1

    :cond_1
    const/4 v5, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, p0

    if-eq v5, p0, :cond_2

    return v1

    :cond_2
    aget-byte v5, v0, v3

    and-int/2addr v5, p0

    if-eq v5, p0, :cond_3

    return v1

    :cond_3
    const/16 p0, 0x9

    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xc

    aget-byte p0, v0, p0

    and-int/2addr p0, v6

    if-eq p0, v6, :cond_5

    return v1

    :cond_5
    const/16 p0, 0xd

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0, v1}, Lm8e;->k(IZ)Z

    invoke-virtual {p1, v0, v1, v6, v1}, Lm8e;->e([BIIZ)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    if-ne p0, v2, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public final f(Lf9e;)V
    .locals 0

    iput-object p1, p0, Loke;->j:Lf9e;

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
