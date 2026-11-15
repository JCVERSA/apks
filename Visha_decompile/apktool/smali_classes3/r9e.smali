.class public final Lr9e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Laxh;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Laxh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr9e;->a:Ljava/util/List;

    iput p2, p0, Lr9e;->b:I

    iput p3, p0, Lr9e;->c:I

    iput p6, p0, Lr9e;->d:I

    iput p7, p0, Lr9e;->e:I

    iput p8, p0, Lr9e;->f:I

    iput p9, p0, Lr9e;->g:I

    iput p10, p0, Lr9e;->h:I

    iput p11, p0, Lr9e;->i:I

    iput p12, p0, Lr9e;->j:F

    iput p13, p0, Lr9e;->k:I

    iput-object p14, p0, Lr9e;->l:Ljava/lang/String;

    iput-object p15, p0, Lr9e;->m:Laxh;

    return-void
.end method

.method public static a(Lu4h;)Lr9e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lr9e;->c(Lu4h;ZLaxh;)Lr9e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lu4h;Laxh;)Lr9e;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lr9e;->c(Lu4h;ZLaxh;)Lr9e;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lu4h;ZLaxh;)Lr9e;
    .locals 47

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Lu4h;->m(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto/16 :goto_17

    :cond_0
    const/16 v4, 0x15

    :try_start_1
    invoke-virtual {v0, v4}, Lu4h;->m(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v8, v5, :cond_2

    :try_start_2
    invoke-virtual {v0, v3}, Lu4h;->m(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v10

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    add-int/2addr v9, v13

    invoke-virtual {v0, v12}, Lu4h;->m(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lu4h;->l(I)V

    new-array v6, v9, [B

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v27, p2

    move v12, v7

    move/from16 v24, v11

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x0

    move v11, v12

    :goto_3
    if-ge v11, v5, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v13

    const/16 v14, 0x3f

    and-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v8

    move v10, v7

    move-object/from16 v14, v27

    :goto_4
    if-ge v10, v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v3

    move/from16 v28, v5

    sget-object v5, Ljzh;->a:[B

    invoke-static {v5, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v12, 0x4

    invoke-virtual/range {p0 .. p0}, Lu4h;->n()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v7

    invoke-static {v2, v7, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v13, v2, :cond_3

    if-nez v10, :cond_4

    add-int v2, v5, v3

    invoke-static {v6, v5, v2}, Ljzh;->e([BII)Laxh;

    move-result-object v14

    move/from16 v29, v8

    move/from16 v36, v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_17

    :cond_3
    move v2, v13

    :cond_4
    const/16 v7, 0x21

    move/from16 v29, v8

    const/16 v8, 0x8

    if-ne v2, v7, :cond_9

    if-nez v10, :cond_6

    add-int v2, v5, v3

    invoke-static {v6, v5, v2, v14}, Ljzh;->d([BIILaxh;)Luuh;

    move-result-object v2

    iget v7, v2, Luuh;->a:I

    const/4 v12, 0x1

    add-int/2addr v7, v12

    iget v12, v2, Luuh;->e:I

    iget v15, v2, Luuh;->f:I

    move/from16 v16, v7

    iget v7, v2, Luuh;->c:I

    add-int/2addr v7, v8

    move/from16 v17, v7

    iget v7, v2, Luuh;->d:I

    add-int/2addr v7, v8

    iget v8, v2, Luuh;->i:I

    move/from16 v18, v7

    iget v7, v2, Luuh;->j:I

    move/from16 v19, v7

    iget v7, v2, Luuh;->k:I

    move/from16 v20, v7

    iget v7, v2, Luuh;->g:F

    move/from16 v21, v7

    iget v7, v2, Luuh;->h:I

    iget-object v2, v2, Luuh;->b:Ltqh;

    if-eqz v2, :cond_5

    move/from16 v22, v7

    iget v7, v2, Ltqh;->a:I

    move/from16 v24, v8

    iget-boolean v8, v2, Ltqh;->b:Z

    move/from16 v25, v12

    iget v12, v2, Ltqh;->c:I

    move/from16 v36, v13

    iget v13, v2, Ltqh;->d:I

    move/from16 v27, v15

    iget-object v15, v2, Ltqh;->e:[I

    iget v2, v2, Ltqh;->f:I

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v12

    move/from16 v33, v13

    move-object/from16 v34, v15

    move/from16 v35, v2

    invoke-static/range {v30 .. v35}, Lvcg;->d(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    :goto_5
    move/from16 v15, v16

    move/from16 v16, v25

    const/4 v8, 0x0

    move/from16 v25, v22

    move/from16 v22, v20

    move/from16 v20, v24

    move/from16 v24, v21

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v27

    goto/16 :goto_14

    :cond_5
    move/from16 v22, v7

    move/from16 v24, v8

    move/from16 v25, v12

    move/from16 v36, v13

    move/from16 v27, v15

    goto :goto_5

    :cond_6
    move/from16 v36, v13

    :cond_7
    move/from16 v27, v10

    move/from16 v31, v15

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_9
    move/from16 v36, v13

    const/16 v7, 0x27

    if-ne v2, v7, :cond_7

    if-nez v10, :cond_7

    add-int v2, v5, v3

    add-int/lit8 v12, v12, 0x6

    const/4 v7, -0x1

    add-int/2addr v2, v7

    :goto_6
    aget-byte v13, v6, v2

    if-nez v13, :cond_b

    if-le v2, v12, :cond_a

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_a
    :goto_7
    move/from16 v27, v10

    :goto_8
    move/from16 v31, v15

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_b
    if-eqz v13, :cond_a

    if-gt v2, v12, :cond_c

    goto :goto_7

    :cond_c
    new-instance v13, Lg0i;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v13, v6, v12, v2}, Lg0i;-><init>([BII)V

    :goto_a
    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Lg0i;->g(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v13, v8}, Lg0i;->a(I)I

    move-result v2

    const/4 v12, 0x0

    :goto_b
    const/16 v7, 0xff

    if-ne v2, v7, :cond_d

    add-int/lit16 v12, v12, 0xff

    invoke-virtual {v13, v8}, Lg0i;->a(I)I

    move-result v2

    goto :goto_b

    :cond_d
    add-int/2addr v12, v2

    invoke-virtual {v13, v8}, Lg0i;->a(I)I

    move-result v2

    const/4 v8, 0x0

    :goto_c
    if-ne v2, v7, :cond_e

    add-int/lit16 v8, v8, 0xff

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lg0i;->a(I)I

    move-result v27

    move/from16 v2, v27

    goto :goto_c

    :cond_e
    const/16 v7, 0x8

    add-int/2addr v8, v2

    if-eqz v8, :cond_a

    invoke-virtual {v13, v8}, Lg0i;->g(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    const/16 v2, 0xb0

    if-ne v12, v2, :cond_18

    invoke-virtual {v13}, Lg0i;->c()I

    move-result v38

    invoke-virtual {v13}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v13}, Lg0i;->c()I

    move-result v7

    move/from16 v39, v7

    goto :goto_d

    :cond_10
    const/16 v39, 0x0

    :goto_d
    invoke-virtual {v13}, Lg0i;->c()I

    move-result v7

    const/4 v8, 0x0

    const/16 v41, -0x1

    const/16 v42, -0x1

    const/16 v43, -0x1

    const/16 v44, -0x1

    const/16 v45, -0x1

    const/16 v46, -0x1

    :goto_e
    if-gt v8, v7, :cond_17

    invoke-virtual {v13}, Lg0i;->c()I

    move-result v41

    invoke-virtual {v13}, Lg0i;->c()I

    move-result v42

    const/4 v12, 0x6

    move/from16 v27, v10

    invoke-virtual {v13, v12}, Lg0i;->a(I)I

    move-result v10

    const/16 v12, 0x3f

    if-ne v10, v12, :cond_11

    goto/16 :goto_8

    :cond_11
    if-nez v10, :cond_12

    add-int/lit8 v12, v38, -0x1e

    move/from16 v31, v15

    const/4 v15, 0x0

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_f

    :cond_12
    move/from16 v31, v15

    const/4 v15, 0x0

    add-int v12, v10, v38

    add-int/lit8 v12, v12, -0x1f

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_f
    invoke-virtual {v13, v12}, Lg0i;->a(I)I

    move-result v44

    if-eqz v2, :cond_15

    const/4 v12, 0x6

    invoke-virtual {v13, v12}, Lg0i;->a(I)I

    move-result v12

    const/16 v15, 0x3f

    if-ne v12, v15, :cond_13

    goto/16 :goto_9

    :cond_13
    if-nez v12, :cond_14

    add-int/lit8 v15, v39, -0x1e

    move/from16 v30, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_10

    :cond_14
    move/from16 v30, v2

    const/4 v2, 0x0

    add-int v15, v12, v39

    add-int/lit8 v15, v15, -0x1f

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_10
    invoke-virtual {v13, v15}, Lg0i;->a(I)I

    move-result v46

    move/from16 v45, v12

    goto :goto_11

    :cond_15
    move/from16 v30, v2

    :goto_11
    invoke-virtual {v13}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    invoke-virtual {v13, v2}, Lg0i;->f(I)V

    :cond_16
    add-int/lit8 v8, v8, 0x1

    move/from16 v43, v10

    move/from16 v10, v27

    move/from16 v2, v30

    move/from16 v15, v31

    goto :goto_e

    :cond_17
    move/from16 v27, v10

    move/from16 v31, v15

    new-instance v2, Lcuh;

    add-int/lit8 v40, v7, 0x1

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v46}, Lcuh;-><init>(IIIIIIIII)V

    goto :goto_12

    :cond_18
    move v8, v7

    const/4 v7, -0x1

    goto/16 :goto_a

    :goto_12
    if-eqz v2, :cond_8

    if-eqz v14, :cond_8

    iget v2, v2, Lcuh;->a:I

    iget-object v7, v14, Laxh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsoh;

    iget v7, v7, Lsoh;->b:I

    if-ne v2, v7, :cond_19

    move/from16 v10, v27

    move/from16 v15, v31

    const/16 v23, 0x4

    goto :goto_14

    :cond_19
    const/4 v2, 0x5

    move/from16 v23, v2

    :goto_13
    move/from16 v10, v27

    move/from16 v15, v31

    :goto_14
    add-int v12, v5, v3

    invoke-virtual {v0, v3}, Lu4h;->m(I)V

    const/4 v2, 0x1

    add-int/2addr v10, v2

    move v3, v2

    move v7, v8

    move/from16 v5, v28

    move/from16 v8, v29

    move/from16 v13, v36

    const/4 v2, 0x4

    goto/16 :goto_4

    :cond_1a
    move/from16 v28, v5

    move v8, v7

    move/from16 v31, v15

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v27, v14

    const/4 v2, 0x4

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_1b
    if-nez v9, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_15
    move-object v13, v0

    goto :goto_16

    :cond_1c
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :goto_16
    new-instance v0, Lr9e;

    const/4 v2, 0x1

    add-int/lit8 v14, v4, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v27}, Lr9e;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Laxh;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :goto_17
    if-eq v2, v1, :cond_1d

    const-string v1, "HEVC config"

    goto :goto_18

    :cond_1d
    const-string v1, "L-HEVC config"

    :goto_18
    const-string v2, "Error parsing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method
