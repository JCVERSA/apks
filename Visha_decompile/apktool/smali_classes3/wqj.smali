.class public abstract Lwqj;
.super Lzqj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzqj;-><init>()V

    return-void
.end method


# virtual methods
.method public final f([Laaj;Lnpj;Lbnj;Lw4f;)Larj;
    .locals 17

    move-object/from16 v0, p2

    const/4 v1, 0x3

    new-array v2, v1, [I

    new-array v3, v1, [[Ln5f;

    new-array v11, v1, [[[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    iget v5, v0, Lnpj;->a:I

    new-array v6, v5, [Ln5f;

    aput-object v6, v3, v4

    new-array v5, v5, [[I

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v13, v1, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    invoke-interface {v5}, Laaj;->zze()I

    move-result v5

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v5, v0, Lnpj;->a:I

    if-ge v4, v5, :cond_9

    invoke-virtual {v0, v4}, Lnpj;->b(I)Ln5f;

    move-result-object v5

    iget v6, v5, Ln5f;->c:I

    move v8, v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_3
    if-ge v7, v1, :cond_6

    aget-object v15, p1, v7

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    iget v1, v5, Ln5f;->a:I

    if-ge v12, v1, :cond_2

    invoke-virtual {v5, v12}, Ln5f;->b(I)Lerj;

    move-result-object v1

    invoke-interface {v15, v1}, Laaj;->g(Lerj;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_2
    aget v1, v2, v7

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v14, v9, :cond_4

    if-ne v14, v9, :cond_5

    const/4 v12, 0x5

    if-ne v6, v12, :cond_5

    if-nez v10, :cond_5

    if-eqz v1, :cond_5

    move v8, v7

    move v9, v14

    const/4 v10, 0x1

    goto :goto_6

    :cond_4
    move v10, v1

    move v8, v7

    move v9, v14

    :cond_5
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    if-ne v8, v1, :cond_7

    iget v1, v5, Ln5f;->a:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_7
    aget-object v1, p1, v8

    iget v6, v5, Ln5f;->a:I

    new-array v7, v6, [I

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v6, :cond_8

    invoke-virtual {v5, v9}, Ln5f;->b(I)Lerj;

    move-result-object v10

    invoke-interface {v1, v10}, Laaj;->g(Lerj;)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    move-object v1, v7

    :goto_8
    aget v6, v2, v8

    aget-object v7, v3, v8

    aput-object v5, v7, v6

    aget-object v5, v11, v8

    aput-object v1, v5, v6

    const/4 v1, 0x1

    add-int/2addr v6, v1

    aput v6, v2, v8

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    move v4, v1

    const/4 v1, 0x1

    new-array v7, v4, [Lnpj;

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [I

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v4, :cond_a

    aget v4, v2, v0

    new-instance v8, Lnpj;

    aget-object v9, v3, v0

    invoke-static {v9, v4}, Lkfh;->q([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ln5f;

    invoke-direct {v8, v9}, Lnpj;-><init>([Ln5f;)V

    aput-object v8, v7, v0

    aget-object v8, v11, v0

    invoke-static {v8, v4}, Lkfh;->q([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v11, v0

    aget-object v4, p1, v0

    invoke-interface {v4}, Laaj;->zzU()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    aget-object v4, p1, v0

    invoke-interface {v4}, Laaj;->zzb()I

    move-result v4

    aput v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x2

    goto :goto_9

    :cond_a
    move v0, v4

    aget v2, v2, v0

    new-instance v10, Lnpj;

    aget-object v3, v3, v0

    invoke-static {v3, v2}, Lkfh;->q([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln5f;

    invoke-direct {v10, v0}, Lnpj;-><init>([Ln5f;)V

    new-instance v0, Lvqj;

    move-object v4, v0

    move-object v8, v13

    move-object v9, v11

    invoke-direct/range {v4 .. v10}, Lvqj;-><init>([Ljava/lang/String;[I[Lnpj;[I[[[ILnpj;)V

    move-object/from16 v4, p0

    move-object v5, v0

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lwqj;->k(Lvqj;[[[I[ILbnj;Lw4f;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Lxqj;

    array-length v4, v3

    new-array v4, v4, [Ljava/util/List;

    const/4 v5, 0x0

    :goto_a
    array-length v6, v3

    if-ge v5, v6, :cond_c

    aget-object v6, v3, v5

    if-eqz v6, :cond_b

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    goto :goto_b

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    :goto_b
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    new-instance v3, Ll4i;

    invoke-direct {v3}, Ll4i;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_12

    invoke-virtual {v0, v6}, Lvqj;->d(I)Lnpj;

    move-result-object v7

    aget-object v8, v4, v6

    const/4 v9, 0x0

    :goto_d
    iget v10, v7, Lnpj;->a:I

    if-ge v9, v10, :cond_11

    invoke-virtual {v7, v9}, Lnpj;->b(I)Ln5f;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v9, v11}, Lvqj;->a(IIZ)I

    move-result v12

    if-eqz v12, :cond_d

    move v11, v1

    goto :goto_e

    :cond_d
    const/4 v11, 0x0

    :goto_e
    iget v12, v10, Ln5f;->a:I

    new-array v13, v12, [I

    new-array v14, v12, [Z

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v12, :cond_10

    invoke-virtual {v0, v6, v9, v15}, Lvqj;->b(III)I

    move-result v16

    and-int/lit8 v16, v16, 0x7

    aput v16, v13, v15

    const/4 v1, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxqj;

    move-object/from16 p0, v4

    invoke-interface {v5}, Lxqj;->zzg()Ln5f;

    move-result-object v4

    invoke-virtual {v4, v10}, Ln5f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v5, v15}, Lxqj;->a(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    const/4 v1, 0x1

    goto :goto_11

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, p0

    goto :goto_10

    :cond_f
    move-object/from16 p0, v4

    const/4 v1, 0x0

    :goto_11
    aput-boolean v1, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p0

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto :goto_f

    :cond_10
    move-object/from16 p0, v4

    new-instance v1, Lx9f;

    invoke-direct {v1, v10, v11, v13, v14}, Lx9f;-><init>(Ln5f;Z[I[Z)V

    invoke-virtual {v3, v1}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto :goto_d

    :cond_11
    move-object/from16 p0, v4

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto :goto_c

    :cond_12
    invoke-virtual {v0}, Lvqj;->e()Lnpj;

    move-result-object v1

    const/4 v11, 0x0

    :goto_12
    iget v4, v1, Lnpj;->a:I

    if-ge v11, v4, :cond_13

    invoke-virtual {v1, v11}, Lnpj;->b(I)Ln5f;

    move-result-object v4

    iget v5, v4, Ln5f;->a:I

    new-array v6, v5, [I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    new-array v5, v5, [Z

    new-instance v8, Lx9f;

    invoke-direct {v8, v4, v7, v6, v5}, Lx9f;-><init>(Ln5f;Z[I[Z)V

    invoke-virtual {v3, v8}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_13
    new-instance v1, Lnaf;

    invoke-virtual {v3}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    invoke-direct {v1, v3}, Lnaf;-><init>(Ljava/util/List;)V

    new-instance v3, Larj;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lbaj;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ltqj;

    invoke-direct {v3, v4, v2, v1, v0}, Larj;-><init>([Lbaj;[Ltqj;Lnaf;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lvqj;

    return-void
.end method

.method public abstract k(Lvqj;[[[I[ILbnj;Lw4f;)Landroid/util/Pair;
.end method
