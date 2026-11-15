.class public final Loge;
.super Lmge;
.source "SourceFile"


# instance fields
.field public n:Lnge;

.field public o:I

.field public p:Z

.field public q:Lwae;

.field public r:Luae;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmge;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)J
    .locals 12

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Loge;->n:Lnge;

    invoke-static {v3}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v3, Lnge;->e:I

    shr-int/2addr v0, v2

    iget-object v5, v3, Lnge;->d:[Lvae;

    const/16 v6, 0xff

    const/16 v7, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    aget-object v0, v5, v0

    iget-boolean v0, v0, Lvae;->a:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lnge;->a:Lwae;

    iget v0, v0, Lwae;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lnge;->a:Lwae;

    iget v0, v0, Lwae;->f:I

    :goto_0
    iget-boolean v3, p0, Loge;->p:Z

    if-eqz v3, :cond_2

    iget v1, p0, Loge;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    invoke-virtual {p1}, Lu4h;->v()I

    move-result v3

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v3

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {p1, v3, v4}, Lu4h;->j([BI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lu4h;->x()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v3}, Lu4h;->k(I)V

    :goto_1
    int-to-long v3, v1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const-wide/16 v8, 0xff

    and-long v10, v3, v8

    long-to-int v6, v10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    ushr-long v6, v3, v7

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lu4h;->x()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, p1

    iput-boolean v2, p0, Loge;->p:Z

    iput v0, p0, Loge;->o:I

    return-wide v3
.end method

.method public final b(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmge;->b(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Loge;->n:Lnge;

    iput-object p1, p0, Loge;->q:Lwae;

    iput-object p1, p0, Loge;->r:Luae;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Loge;->o:I

    iput-boolean p1, p0, Loge;->p:Z

    return-void
.end method

.method public final c(Lu4h;JLjge;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Loge;->n:Lnge;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v2, Ljge;->a:Lerj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v4

    :cond_0
    iget-object v6, v0, Loge;->q:Lwae;

    const/4 v5, 0x4

    const/4 v11, 0x1

    if-nez v6, :cond_5

    invoke-static {v11, v1, v4}, Lxae;->d(ILu4h;Z)Z

    invoke-virtual/range {p1 .. p1}, Lu4h;->D()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lu4h;->D()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lu4h;->C()I

    move-result v6

    if-gtz v6, :cond_1

    const/16 v16, -0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu4h;->C()I

    move-result v6

    if-gtz v6, :cond_2

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v17, v6

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lu4h;->C()I

    move-result v6

    if-gtz v6, :cond_3

    const/16 v18, -0x1

    goto :goto_2

    :cond_3
    move/from16 v18, v6

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v3

    and-int/lit8 v6, v3, 0xf

    int-to-double v8, v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v6, v8

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v5

    int-to-double v8, v3

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v5

    const/4 v8, 0x1

    and-int/2addr v5, v8

    if-eq v8, v5, :cond_4

    move/from16 v21, v4

    goto :goto_3

    :cond_4
    const/16 v21, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v1

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v22

    new-instance v1, Lwae;

    move-object v12, v1

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-direct/range {v12 .. v22}, Lwae;-><init>(IIIIIIIIZ[B)V

    iput-object v1, v0, Loge;->q:Lwae;

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_21

    :cond_5
    iget-object v8, v0, Loge;->r:Luae;

    if-nez v8, :cond_6

    const/4 v9, 0x1

    invoke-static {v1, v9, v9}, Lxae;->c(Lu4h;ZZ)Luae;

    move-result-object v1

    iput-object v1, v0, Loge;->r:Luae;

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v9

    new-array v9, v9, [B

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v11

    invoke-static {v10, v4, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v6, Lwae;->a:I

    const/4 v11, 0x5

    invoke-static {v11, v1, v4}, Lxae;->d(ILu4h;Z)Z

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    new-instance v13, Ltae;

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ltae;-><init>([B)V

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v1

    const/16 v14, 0x8

    mul-int/2addr v1, v14

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    move v1, v4

    :goto_5
    const/16 v15, 0x18

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-ge v1, v12, :cond_11

    invoke-virtual {v13, v15}, Ltae;->b(I)I

    move-result v14

    const v7, 0x564342

    if-ne v14, v7, :cond_10

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v4

    invoke-virtual {v13, v15}, Ltae;->b(I)I

    move-result v7

    invoke-virtual {v13}, Ltae;->d()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v13}, Ltae;->d()Z

    move-result v14

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v7, :cond_a

    if-eqz v14, :cond_7

    invoke-virtual {v13}, Ltae;->d()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v13, v11}, Ltae;->c(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v13, v11}, Ltae;->c(I)V

    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v13, v11}, Ltae;->c(I)V

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v7, :cond_a

    sub-int v15, v7, v14

    invoke-static {v15}, Lxae;->a(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ltae;->b(I)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_8

    :cond_a
    invoke-virtual {v13, v5}, Ltae;->b(I)I

    move-result v14

    if-gt v14, v3, :cond_f

    const/4 v15, 0x1

    if-eq v14, v15, :cond_c

    if-ne v14, v3, :cond_b

    goto :goto_9

    :cond_b
    move-object/from16 v18, v6

    goto :goto_b

    :cond_c
    move v3, v14

    :goto_9
    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ltae;->c(I)V

    invoke-virtual {v13, v14}, Ltae;->c(I)V

    invoke-virtual {v13, v5}, Ltae;->b(I)I

    move-result v14

    add-int/2addr v14, v15

    invoke-virtual {v13, v15}, Ltae;->c(I)V

    if-ne v3, v15, :cond_e

    if-eqz v4, :cond_d

    move-object/from16 v18, v6

    int-to-long v5, v7

    int-to-long v3, v4

    long-to-double v3, v3

    long-to-double v5, v5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v3, v20, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    goto :goto_a

    :cond_d
    move-object/from16 v18, v6

    const-wide/16 v3, 0x0

    goto :goto_a

    :cond_e
    move-object/from16 v18, v6

    int-to-long v3, v4

    int-to-long v5, v7

    mul-long/2addr v3, v5

    :goto_a
    int-to-long v5, v14

    mul-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v13, v3}, Ltae;->c(I)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v18

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v14, 0x8

    goto/16 :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v13}, Ltae;->a()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_11
    move-object/from16 v18, v6

    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_13

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v7

    if-nez v7, :cond_12

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_12
    const-string v0, "placeholder of time domain transforms not zeroed out"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_13
    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_d
    const/4 v12, 0x3

    if-ge v7, v5, :cond_1d

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v14

    if-eqz v14, :cond_1b

    if-ne v14, v6, :cond_1a

    invoke-virtual {v13, v11}, Ltae;->b(I)I

    move-result v6

    new-array v14, v6, [I

    const/4 v11, 0x0

    const/4 v15, -0x1

    :goto_e
    if-ge v11, v6, :cond_15

    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v4

    aput v4, v14, v11

    if-le v4, v15, :cond_14

    move v15, v4

    :cond_14
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x6

    const/16 v4, 0x10

    goto :goto_e

    :cond_15
    add-int/lit8 v15, v15, 0x1

    new-array v1, v15, [I

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v15, :cond_18

    invoke-virtual {v13, v12}, Ltae;->b(I)I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v4

    invoke-virtual {v13, v3}, Ltae;->b(I)I

    move-result v11

    if-lez v11, :cond_16

    const/16 v12, 0x8

    invoke-virtual {v13, v12}, Ltae;->c(I)V

    :goto_10
    move/from16 v24, v5

    const/4 v3, 0x0

    goto :goto_11

    :cond_16
    const/16 v12, 0x8

    goto :goto_10

    :goto_11
    shl-int v5, v23, v11

    if-ge v3, v5, :cond_17

    invoke-virtual {v13, v12}, Ltae;->c(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v12, 0x8

    const/16 v23, 0x1

    goto :goto_11

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v24

    const/4 v3, 0x2

    const/4 v12, 0x3

    goto :goto_f

    :cond_18
    move/from16 v24, v5

    invoke-virtual {v13, v3}, Ltae;->c(I)V

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Ltae;->b(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_12
    if-ge v3, v6, :cond_1c

    aget v12, v14, v3

    aget v12, v1, v12

    add-int/2addr v5, v12

    :goto_13
    if-ge v11, v5, :cond_19

    invoke-virtual {v13, v4}, Ltae;->c(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1b
    move/from16 v24, v5

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    const/16 v3, 0x10

    invoke-virtual {v13, v3}, Ltae;->c(I)V

    invoke-virtual {v13, v3}, Ltae;->c(I)V

    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Ltae;->c(I)V

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Ltae;->b(I)I

    move-result v4

    const/4 v3, 0x1

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_1c

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    goto :goto_14

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v24

    const/4 v1, 0x6

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/4 v6, 0x1

    const/4 v11, 0x5

    const/16 v15, 0x18

    goto/16 :goto_d

    :cond_1d
    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_24

    const/16 v6, 0x10

    invoke-virtual {v13, v6}, Ltae;->b(I)I

    move-result v7

    const/4 v6, 0x2

    if-gt v7, v6, :cond_23

    const/16 v6, 0x18

    invoke-virtual {v13, v6}, Ltae;->c(I)V

    invoke-virtual {v13, v6}, Ltae;->c(I)V

    invoke-virtual {v13, v6}, Ltae;->c(I)V

    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v7

    add-int/2addr v7, v4

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    new-array v4, v7, [I

    const/4 v11, 0x0

    :goto_16
    if-ge v11, v7, :cond_1f

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Ltae;->b(I)I

    move-result v14

    invoke-virtual {v13}, Ltae;->d()Z

    move-result v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Ltae;->b(I)I

    move-result v20

    goto :goto_17

    :cond_1e
    const/4 v15, 0x5

    const/16 v20, 0x0

    :goto_17
    mul-int/lit8 v20, v20, 0x8

    add-int v20, v20, v14

    aput v20, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_1f
    const/4 v12, 0x3

    const/4 v15, 0x5

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v7, :cond_22

    const/4 v14, 0x0

    :goto_19
    if-ge v14, v1, :cond_21

    aget v20, v4, v11

    const/16 v21, 0x1

    shl-int v23, v21, v14

    and-int v20, v20, v23

    if-eqz v20, :cond_20

    invoke-virtual {v13, v1}, Ltae;->c(I)V

    :cond_20
    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x8

    goto :goto_19

    :cond_21
    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x8

    goto :goto_18

    :cond_22
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    const/4 v4, 0x1

    goto :goto_15

    :cond_23
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_24
    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_2b

    const/16 v4, 0x10

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v5

    if-eqz v5, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lzrg;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v7, 0x4

    goto :goto_1f

    :cond_25
    invoke-virtual {v13}, Ltae;->d()Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v5

    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto :goto_1b

    :cond_26
    const/4 v4, 0x1

    move v5, v4

    :goto_1b
    invoke-virtual {v13}, Ltae;->d()Z

    move-result v6

    if-eqz v6, :cond_27

    const/16 v6, 0x8

    invoke-virtual {v13, v6}, Ltae;->b(I)I

    move-result v7

    add-int/2addr v7, v4

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v7, :cond_27

    add-int/lit8 v6, v10, -0x1

    invoke-static {v6}, Lxae;->a(I)I

    move-result v11

    invoke-virtual {v13, v11}, Ltae;->c(I)V

    invoke-static {v6}, Lxae;->a(I)I

    move-result v6

    invoke-virtual {v13, v6}, Ltae;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_27
    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ltae;->b(I)I

    move-result v6

    if-nez v6, :cond_2a

    const/4 v6, 0x1

    if-le v5, v6, :cond_28

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v10, :cond_28

    const/4 v7, 0x4

    invoke-virtual {v13, v7}, Ltae;->c(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_28
    const/4 v7, 0x4

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v5, :cond_29

    const/16 v11, 0x8

    invoke-virtual {v13, v11}, Ltae;->c(I)V

    invoke-virtual {v13, v11}, Ltae;->c(I)V

    invoke-virtual {v13, v11}, Ltae;->c(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_29
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_2b
    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Ltae;->b(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Lvae;

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v3, :cond_2c

    invoke-virtual {v13}, Ltae;->d()Z

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v13, v7}, Ltae;->b(I)I

    move-result v10

    invoke-virtual {v13, v7}, Ltae;->b(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-virtual {v13, v12}, Ltae;->b(I)I

    move-result v14

    new-instance v15, Lvae;

    invoke-direct {v15, v6, v10, v11, v14}, Lvae;-><init>(ZIII)V

    aput-object v15, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2c
    invoke-virtual {v13}, Ltae;->d()Z

    move-result v3

    if-eqz v3, :cond_2e

    new-instance v3, Lnge;

    invoke-static {v1}, Lxae;->a(I)I

    move-result v10

    move-object v5, v3

    move-object/from16 v6, v18

    move-object v7, v8

    move-object v8, v9

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lnge;-><init>(Lwae;Luae;[B[Lvae;I)V

    move-object v7, v3

    :goto_21
    iput-object v7, v0, Loge;->n:Lnge;

    if-nez v7, :cond_2d

    const/4 v0, 0x1

    return v0

    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lnge;->a:Lwae;

    iget-object v3, v1, Lwae;->g:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lnge;->c:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lnge;->b:Luae;

    iget-object v3, v3, Luae;->a:[Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    invoke-static {v3}, Lxae;->b(Ljava/util/List;)Lhre;

    move-result-object v3

    new-instance v4, Lgpj;

    invoke-direct {v4}, Lgpj;-><init>()V

    const-string v5, "audio/ogg"

    invoke-virtual {v4, v5}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v5, "audio/vorbis"

    invoke-virtual {v4, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v5, v1, Lwae;->d:I

    invoke-virtual {v4, v5}, Lgpj;->a(I)Lgpj;

    iget v5, v1, Lwae;->c:I

    invoke-virtual {v4, v5}, Lgpj;->y(I)Lgpj;

    iget v5, v1, Lwae;->a:I

    invoke-virtual {v4, v5}, Lgpj;->b(I)Lgpj;

    iget v1, v1, Lwae;->b:I

    invoke-virtual {v4, v1}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v4, v0}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v4, v3}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {v4}, Lgpj;->K()Lerj;

    move-result-object v0

    iput-object v0, v2, Ljge;->a:Lerj;

    const/4 v0, 0x1

    return v0

    :cond_2e
    const-string v0, "framing bit after modes not set as expected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public final h(J)V
    .locals 2

    invoke-super {p0, p1, p2}, Lmge;->h(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Loge;->p:Z

    iget-object p1, p0, Loge;->q:Lwae;

    if-eqz p1, :cond_1

    iget p2, p1, Lwae;->e:I

    :cond_1
    iput p2, p0, Loge;->o:I

    return-void
.end method
