.class public abstract Ljzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljzh;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ljzh;->b:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljzh;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Ljzh;->d:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ln7g;->f(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    invoke-static {p3}, Ljzh;->i([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_4

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Ljzh;->i([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_4
    :goto_1
    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_6

    aget-byte v4, p0, p1

    if-nez v4, :cond_6

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p3}, Ljzh;->i([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    :goto_2
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_3
    if-ge p1, v4, :cond_a

    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_9

    add-int/lit8 v6, p1, -0x2

    aget-byte v7, p0, v6

    if-nez v7, :cond_8

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    if-eq v5, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p3}, Ljzh;->i([Z)V

    return v6

    :cond_8
    :goto_4
    move p1, v6

    :cond_9
    add-int/lit8 p1, p1, 0x3

    goto :goto_3

    :cond_a
    if-le v0, v3, :cond_c

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    :goto_5
    move p1, v2

    goto :goto_6

    :cond_b
    move p1, v1

    goto :goto_6

    :cond_c
    if-ne v0, v3, :cond_d

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_d
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :goto_6
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_f

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_e

    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    :goto_7
    move p1, v2

    goto :goto_8

    :cond_e
    move p1, v1

    goto :goto_8

    :cond_f
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_e

    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    goto :goto_7

    :goto_8
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_10

    move v1, v2

    :cond_10
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static b(Lerj;)I
    .locals 2

    iget-object v0, p0, Lerj;->o:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lerj;->k:Ljava/lang/String;

    invoke-static {p0, v1}, Lbue;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public static c([BI)I
    .locals 8

    sget-object v0, Ljzh;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v2, v3, :cond_1

    :try_start_0
    sget-object v6, Ljzh;->d:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    aput-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x2

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sub-int v1, p1, v5

    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_4

    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_3

    aget-byte v4, p0, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_3
    if-ge v2, p1, :cond_0

    sget-object v4, Ljzh;->d:[I

    array-length v5, v4

    if-gt v5, v3, :cond_5

    add-int/2addr v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Ljzh;->d:[I

    :cond_5
    sget-object v4, Ljzh;->d:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d([BIILaxh;)Luuh;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lg0i;

    invoke-direct {v4, v0, v1, v2}, Lg0i;-><init>([BII)V

    invoke-static {v4}, Ljzh;->m(Lg0i;)Lrph;

    move-result-object v6

    new-instance v4, Lg0i;

    const/4 v5, 0x2

    add-int/2addr v1, v5

    invoke-direct {v4, v0, v1, v2}, Lg0i;-><init>([BII)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lg0i;->f(I)V

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lg0i;->a(I)I

    move-result v2

    iget v7, v6, Lrph;->b:I

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v10, 0x7

    if-ne v2, v10, :cond_0

    move v2, v10

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, -0x1

    if-eqz v3, :cond_1

    iget-object v12, v3, Laxh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsoh;

    iget v7, v7, Lsoh;->a:I

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v12, 0x0

    if-nez v10, :cond_2

    invoke-virtual {v4}, Lg0i;->e()V

    invoke-static {v4, v8, v2, v12}, Ljzh;->n(Lg0i;ZILtqh;)Ltqh;

    move-result-object v12

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    iget-object v13, v3, Laxh;->b:Ltrh;

    iget-object v14, v13, Ltrh;->b:[I

    aget v14, v14, v7

    iget-object v13, v13, Ltrh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v15

    if-le v15, v14, :cond_3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltqh;

    :cond_3
    :goto_2
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v13

    const/16 v14, 0x8

    if-eqz v10, :cond_7

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4, v14}, Lg0i;->a(I)I

    move-result v15

    goto :goto_3

    :cond_4
    move v15, v11

    :goto_3
    if-eqz v3, :cond_6

    iget-object v9, v3, Laxh;->c:Lith;

    if-eqz v9, :cond_6

    if-ne v15, v11, :cond_5

    iget-object v15, v9, Lith;->b:[I

    aget v15, v15, v7

    :cond_5
    if-eq v15, v11, :cond_6

    iget-object v9, v9, Lith;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-le v11, v15, :cond_6

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Losh;

    iget v11, v9, Losh;->a:I

    iget v15, v9, Losh;->d:I

    iget v14, v9, Losh;->e:I

    iget v5, v9, Losh;->b:I

    iget v9, v9, Losh;->c:I

    move v0, v5

    move/from16 v33, v11

    move v11, v9

    move/from16 v9, v33

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v5

    if-ne v5, v1, :cond_8

    invoke-virtual {v4}, Lg0i;->e()V

    move v9, v1

    goto :goto_4

    :cond_8
    move v9, v5

    :goto_4
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v11

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v14

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v15

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v1

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v0

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v8

    invoke-static {v11, v9, v15, v1}, Ljzh;->l(IIII)I

    move-result v11

    invoke-static {v14, v9, v0, v8}, Ljzh;->k(IIII)I

    move-result v0

    move v14, v0

    :cond_9
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v0

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v1

    move v9, v5

    move v15, v11

    move v11, v1

    :goto_5
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v1

    if-nez v10, :cond_c

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v5

    const/4 v8, 0x1

    if-eq v8, v5, :cond_a

    move v5, v2

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    const/4 v8, -0x1

    :goto_7
    if-gt v5, v2, :cond_b

    invoke-virtual {v4}, Lg0i;->c()I

    move/from16 v20, v15

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v15

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v4}, Lg0i;->c()I

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v20

    goto :goto_7

    :cond_b
    move/from16 v20, v15

    move/from16 v21, v8

    goto :goto_8

    :cond_c
    move/from16 v20, v15

    const/16 v21, -0x1

    :goto_8
    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x6

    if-eqz v10, :cond_e

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v4, v5}, Lg0i;->f(I)V

    :cond_d
    move/from16 v18, v13

    const/4 v5, 0x2

    goto :goto_e

    :cond_e
    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x4

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v8, :cond_d

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v5, :cond_13

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v18

    if-nez v18, :cond_10

    invoke-virtual {v4}, Lg0i;->c()I

    move/from16 v18, v13

    :cond_f
    const/4 v5, 0x3

    goto :goto_c

    :cond_10
    add-int v18, v10, v10

    add-int/lit8 v18, v18, 0x4

    const/4 v5, 0x1

    shl-int v8, v5, v18

    move/from16 v18, v13

    const/16 v13, 0x40

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-le v10, v5, :cond_11

    invoke-virtual {v4}, Lg0i;->b()I

    :cond_11
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v8, :cond_f

    invoke-virtual {v4}, Lg0i;->b()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :goto_c
    if-ne v10, v5, :cond_12

    const/4 v5, 0x3

    goto :goto_d

    :cond_12
    const/4 v5, 0x1

    :goto_d
    add-int/2addr v15, v5

    move/from16 v13, v18

    const/4 v5, 0x6

    const/4 v8, 0x4

    goto :goto_a

    :cond_13
    move/from16 v18, v13

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x6

    const/4 v8, 0x4

    goto :goto_9

    :goto_e
    invoke-virtual {v4, v5}, Lg0i;->f(I)V

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lg0i;->f(I)V

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->e()V

    :cond_14
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v5

    const/4 v8, 0x0

    new-array v10, v8, [I

    new-array v13, v8, [I

    move v15, v8

    move/from16 v22, v11

    const/4 v8, -0x1

    const/4 v11, -0x1

    :goto_f
    if-ge v15, v5, :cond_26

    if-eqz v15, :cond_21

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v23

    if-eqz v23, :cond_21

    move/from16 v23, v5

    add-int v5, v8, v11

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v24

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v25

    const/16 v19, 0x1

    add-int/lit8 v25, v25, 0x1

    add-int v24, v24, v24

    rsub-int/lit8 v24, v24, 0x1

    move/from16 v26, v0

    add-int/lit8 v0, v5, 0x1

    move/from16 v27, v9

    new-array v9, v0, [Z

    move-object/from16 v28, v12

    const/4 v12, 0x0

    :goto_10
    if-gt v12, v5, :cond_16

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v29

    if-nez v29, :cond_15

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v29

    aput-boolean v29, v9, v12

    goto :goto_11

    :cond_15
    aput-boolean v19, v9, v12

    :goto_11
    add-int/lit8 v12, v12, 0x1

    const/16 v19, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v12, v11, -0x1

    move/from16 v29, v12

    new-array v12, v0, [I

    new-array v0, v0, [I

    const/16 v30, 0x0

    :goto_12
    mul-int v31, v24, v25

    if-ltz v29, :cond_18

    aget v32, v13, v29

    add-int v32, v32, v31

    if-gez v32, :cond_17

    add-int v31, v8, v29

    aget-boolean v31, v9, v31

    if-eqz v31, :cond_17

    add-int/lit8 v31, v30, 0x1

    aput v32, v12, v30

    move/from16 v30, v31

    :cond_17
    add-int/lit8 v29, v29, -0x1

    goto :goto_12

    :cond_18
    if-gez v31, :cond_19

    aget-boolean v24, v9, v5

    if-eqz v24, :cond_19

    add-int/lit8 v24, v30, 0x1

    aput v31, v12, v30

    move/from16 v30, v24

    :cond_19
    move/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v2, v30

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v8, :cond_1b

    aget v29, v10, v6

    add-int v29, v29, v31

    if-gez v29, :cond_1a

    aget-boolean v30, v9, v6

    if-eqz v30, :cond_1a

    add-int/lit8 v30, v2, 0x1

    aput v29, v12, v2

    move/from16 v2, v30

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1b
    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    add-int/lit8 v12, v8, -0x1

    const/16 v29, 0x0

    :goto_14
    if-ltz v12, :cond_1d

    aget v30, v10, v12

    add-int v30, v30, v31

    if-lez v30, :cond_1c

    aget-boolean v32, v9, v12

    if-eqz v32, :cond_1c

    add-int/lit8 v32, v29, 0x1

    aput v30, v0, v29

    move/from16 v29, v32

    :cond_1c
    add-int/lit8 v12, v12, -0x1

    goto :goto_14

    :cond_1d
    if-lez v31, :cond_1e

    aget-boolean v5, v9, v5

    if-eqz v5, :cond_1e

    add-int/lit8 v5, v29, 0x1

    aput v31, v0, v29

    move/from16 v29, v5

    :cond_1e
    move/from16 v5, v29

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v11, :cond_20

    aget v12, v13, v10

    add-int v12, v12, v31

    if-lez v12, :cond_1f

    add-int v29, v8, v10

    aget-boolean v29, v9, v29

    if-eqz v29, :cond_1f

    add-int/lit8 v29, v5, 0x1

    aput v12, v0, v5

    move/from16 v5, v29

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_20
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move-object v13, v0

    move v8, v2

    move v11, v5

    move-object v10, v6

    goto :goto_1a

    :cond_21
    move/from16 v26, v0

    move/from16 v24, v2

    move/from16 v23, v5

    move-object/from16 v25, v6

    move/from16 v27, v9

    move-object/from16 v28, v12

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v0

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v2

    new-array v5, v0, [I

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v0, :cond_23

    if-lez v6, :cond_22

    add-int/lit8 v8, v6, -0x1

    aget v8, v5, v8

    goto :goto_17

    :cond_22
    const/4 v8, 0x0

    :goto_17
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v5, v6

    invoke-virtual {v4}, Lg0i;->e()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_23
    new-array v6, v2, [I

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v2, :cond_25

    if-lez v8, :cond_24

    add-int/lit8 v9, v8, -0x1

    aget v9, v6, v9

    goto :goto_19

    :cond_24
    const/4 v9, 0x0

    :goto_19
    invoke-virtual {v4}, Lg0i;->c()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    aput v9, v6, v8

    invoke-virtual {v4}, Lg0i;->e()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_25
    move v8, v0

    move v11, v2

    move-object v10, v5

    move-object v13, v6

    :goto_1a
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v23

    move/from16 v2, v24

    move-object/from16 v6, v25

    move/from16 v0, v26

    move/from16 v9, v27

    move-object/from16 v12, v28

    goto/16 :goto_f

    :cond_26
    move/from16 v26, v0

    move/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v27, v9

    move-object/from16 v28, v12

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v4}, Lg0i;->c()I

    move-result v0

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v0, :cond_27

    add-int/lit8 v2, v1, 0x5

    invoke-virtual {v4, v2}, Lg0i;->f(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_27
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lg0i;->f(I)V

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_32

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Lg0i;->a(I)I

    move-result v5

    const/16 v1, 0xff

    if-ne v5, v1, :cond_28

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Lg0i;->a(I)I

    move-result v5

    invoke-virtual {v4, v1}, Lg0i;->a(I)I

    move-result v1

    if-eqz v5, :cond_2a

    if-eqz v1, :cond_2a

    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1c

    :cond_28
    const/16 v1, 0x11

    if-ge v5, v1, :cond_29

    sget-object v1, Ljzh;->b:[F

    aget v2, v1, v5

    goto :goto_1c

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_1c
    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v4}, Lg0i;->e()V

    :cond_2b
    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lg0i;->f(I)V

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_2c

    move v5, v0

    goto :goto_1d

    :cond_2c
    move v5, v3

    :goto_1d
    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lg0i;->a(I)I

    move-result v1

    invoke-virtual {v4, v0}, Lg0i;->a(I)I

    move-result v3

    invoke-virtual {v4, v0}, Lg0i;->f(I)V

    invoke-static {v1}, Lh6j;->a(I)I

    move-result v11

    invoke-static {v3}, Lh6j;->b(I)I

    move-result v0

    goto :goto_1f

    :cond_2d
    const/4 v0, -0x1

    :goto_1e
    const/4 v11, -0x1

    goto :goto_1f

    :cond_2e
    if-eqz v3, :cond_2f

    iget-object v0, v3, Laxh;->d:Lewh;

    if-eqz v0, :cond_2f

    iget-object v1, v0, Lewh;->b:[I

    aget v1, v1, v7

    iget-object v0, v0, Lewh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-le v3, v1, :cond_2f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvh;

    iget v11, v0, Ljvh;->a:I

    iget v1, v0, Ljvh;->b:I

    iget v0, v0, Ljvh;->c:I

    move v5, v1

    goto :goto_1f

    :cond_2f
    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_1e

    :goto_1f
    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v4}, Lg0i;->c()I

    invoke-virtual {v4}, Lg0i;->c()I

    :cond_30
    invoke-virtual {v4}, Lg0i;->e()V

    invoke-virtual {v4}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/2addr v14, v14

    :cond_31
    move/from16 v19, v0

    move v15, v2

    move v0, v5

    move/from16 v17, v11

    goto :goto_20

    :cond_32
    move v15, v2

    const/4 v0, -0x1

    const/16 v17, -0x1

    const/16 v19, -0x1

    :goto_20
    new-instance v1, Luuh;

    move-object v5, v1

    move-object/from16 v6, v25

    move/from16 v7, v24

    move-object/from16 v8, v28

    move/from16 v9, v27

    move/from16 v10, v26

    move/from16 v11, v22

    move/from16 v12, v18

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v18, v0

    invoke-direct/range {v5 .. v19}, Luuh;-><init>(Lrph;ILtqh;IIIIIIFIIII)V

    return-object v1
.end method

.method public static e([BII)Laxh;
    .locals 36

    new-instance v0, Lg0i;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lg0i;-><init>([BII)V

    invoke-static {v0}, Ljzh;->m(Lg0i;)Lrph;

    move-result-object v2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg0i;->f(I)V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v3

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lg0i;->a(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lg0i;->a(I)I

    move-result v9

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Lg0i;->f(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v10, v9, v11}, Ljzh;->n(Lg0i;ZILtqh;)Ltqh;

    move-result-object v12

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v13

    const/4 v14, 0x0

    if-eq v10, v13, :cond_0

    move v13, v9

    goto :goto_0

    :cond_0
    move v13, v14

    :goto_0
    if-gt v13, v9, :cond_1

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lg0i;->a(I)I

    move-result v13

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v11

    new-instance v5, Ltrh;

    new-array v8, v10, [I

    invoke-direct {v5, v11, v8}, Ltrh;-><init>(Ljava/util/List;[I)V

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    if-lt v15, v8, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v14

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    add-int/lit8 v4, v13, 0x1

    if-eqz v11, :cond_4

    if-eqz v3, :cond_4

    if-ge v4, v7, :cond_5

    :cond_4
    move-object/from16 v22, v2

    goto/16 :goto_5a

    :cond_5
    new-array v3, v8, [I

    aput v4, v3, v10

    aput v15, v3, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    new-array v11, v15, [I

    new-array v8, v15, [I

    aget-object v16, v3, v14

    aput v14, v16, v14

    aput v10, v11, v14

    aput v14, v8, v14

    :goto_3
    if-ge v10, v15, :cond_8

    move/from16 v18, v14

    :goto_4
    if-gt v14, v13, :cond_7

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v19

    if-eqz v19, :cond_6

    aget-object v19, v3, v10

    add-int/lit8 v20, v18, 0x1

    aput v14, v19, v18

    aput v14, v8, v10

    move/from16 v18, v20

    :cond_6
    aput v18, v11, v10

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x40

    invoke-virtual {v0, v10}, Lg0i;->f(I)V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0}, Lg0i;->c()I

    :cond_9
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v10

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v10, :cond_17

    invoke-virtual {v0}, Lg0i;->c()I

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v19

    if-eqz v19, :cond_a

    goto :goto_6

    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_b
    const/16 v21, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v19

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v20

    if-nez v19, :cond_d

    if-eqz v20, :cond_b

    :cond_d
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v14, 0x13

    invoke-virtual {v0, v14}, Lg0i;->f(I)V

    :cond_e
    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Lg0i;->f(I)V

    if-eqz v21, :cond_f

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Lg0i;->f(I)V

    :cond_f
    const/16 v14, 0xf

    invoke-virtual {v0, v14}, Lg0i;->f(I)V

    :goto_7
    const/4 v14, 0x0

    :goto_8
    if-gt v14, v9, :cond_16

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v22

    if-nez v22, :cond_11

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v22

    if-eqz v22, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v22, v8

    move/from16 v23, v10

    const/4 v10, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    invoke-virtual {v0}, Lg0i;->c()I

    :cond_12
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v22

    move/from16 v23, v10

    move/from16 v10, v22

    move-object/from16 v22, v8

    :goto_a
    add-int v8, v19, v20

    move-object/from16 v24, v3

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v8, :cond_15

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_c
    if-gt v8, v10, :cond_14

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    if-eqz v21, :cond_13

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    :cond_13
    invoke-virtual {v0}, Lg0i;->e()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v25

    goto :goto_b

    :cond_15
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v22

    move/from16 v10, v23

    move-object/from16 v3, v24

    goto :goto_8

    :cond_16
    move-object/from16 v24, v3

    move-object/from16 v22, v8

    move/from16 v23, v10

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_17
    move-object/from16 v24, v3

    move-object/from16 v22, v8

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_18
    invoke-virtual {v0}, Lg0i;->d()V

    const/4 v1, 0x0

    invoke-static {v0, v1, v9, v12}, Ljzh;->n(Lg0i;ZILtqh;)Ltqh;

    move-result-object v3

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    const/16 v8, 0x10

    new-array v10, v8, [Z

    move-object/from16 v19, v3

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v8, :cond_1a

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v20

    aput-boolean v20, v10, v14

    if-eqz v20, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 v14, 0x1

    aget-boolean v20, v10, v14

    if-nez v20, :cond_1c

    :cond_1b
    move-object/from16 v22, v2

    goto/16 :goto_59

    :cond_1c
    add-int/lit8 v14, v3, 0x1

    new-array v8, v3, [I

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :goto_e
    sub-int v11, v3, v1

    if-ge v12, v11, :cond_1d

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lg0i;->a(I)I

    move-result v25

    aput v25, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1d
    new-array v11, v14, [I

    if-eqz v1, :cond_20

    const/4 v12, 0x1

    :goto_f
    if-ge v12, v3, :cond_1f

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v12, :cond_1e

    aget v25, v11, v12

    aget v26, v8, v14

    const/16 v16, 0x1

    add-int/lit8 v26, v26, 0x1

    add-int v25, v25, v26

    aput v25, v11, v12

    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_1e
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_1f
    const/4 v12, 0x6

    aput v12, v11, v3

    :cond_20
    const/4 v12, 0x2

    new-array v14, v12, [I

    const/4 v12, 0x1

    aput v3, v14, v12

    const/4 v12, 0x0

    aput v7, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    new-array v14, v7, [I

    const/16 v17, 0x0

    aput v17, v14, v17

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v25

    move/from16 v26, v9

    move/from16 v27, v15

    const/4 v9, 0x1

    :goto_11
    if-ge v9, v7, :cond_25

    if-eqz v25, :cond_21

    const/4 v15, 0x6

    invoke-virtual {v0, v15}, Lg0i;->a(I)I

    move-result v29

    aput v29, v14, v9

    goto :goto_12

    :cond_21
    const/4 v15, 0x6

    aput v9, v14, v9

    :goto_12
    if-nez v1, :cond_23

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v3, :cond_22

    aget-object v28, v12, v9

    aget v29, v8, v15

    move/from16 v30, v1

    const/16 v16, 0x1

    add-int/lit8 v1, v29, 0x1

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v1

    aput v1, v28, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v30

    goto :goto_13

    :cond_22
    move/from16 v30, v1

    goto :goto_15

    :cond_23
    move/from16 v30, v1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_24

    aget-object v15, v12, v9

    aget v29, v14, v9

    add-int/lit8 v31, v1, 0x1

    aget v32, v11, v31

    const/16 v16, 0x1

    shl-int v32, v16, v32

    const/16 v28, -0x1

    add-int/lit8 v32, v32, -0x1

    and-int v29, v29, v32

    aget v32, v11, v1

    shr-int v29, v29, v32

    aput v29, v15, v1

    move/from16 v1, v31

    goto :goto_14

    :cond_24
    :goto_15
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v30

    goto :goto_11

    :cond_25
    new-array v1, v4, [I

    const/4 v3, 0x1

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_2c

    aget v9, v14, v8

    const/4 v11, -0x1

    aput v11, v1, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_17
    const/16 v15, 0x10

    if-ge v9, v15, :cond_28

    aget-boolean v15, v10, v9

    if-eqz v15, :cond_27

    const/4 v15, 0x1

    if-ne v9, v15, :cond_26

    aget v9, v14, v8

    aget-object v16, v12, v8

    aget v16, v16, v11

    aput v16, v1, v9

    move/from16 v16, v15

    goto :goto_18

    :cond_26
    move/from16 v16, v9

    :goto_18
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v16

    goto :goto_19

    :cond_27
    const/4 v15, 0x1

    :goto_19
    add-int/2addr v9, v15

    goto :goto_17

    :cond_28
    if-lez v8, :cond_2b

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v8, :cond_2a

    aget v11, v14, v8

    aget v11, v1, v11

    aget v15, v14, v9

    aget v15, v1, v15

    if-ne v11, v15, :cond_29

    goto :goto_1b

    :cond_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    :cond_2b
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2c
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lg0i;->a(I)I

    move-result v9

    const/4 v8, 0x2

    if-lt v3, v8, :cond_2d

    if-nez v9, :cond_2e

    :cond_2d
    move-object/from16 v22, v2

    goto/16 :goto_58

    :cond_2e
    new-array v8, v3, [I

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v3, :cond_2f

    invoke-virtual {v0, v9}, Lg0i;->a(I)I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_2f
    new-array v9, v4, [I

    const/4 v10, 0x0

    :goto_1d
    if-ge v10, v7, :cond_30

    aget v11, v14, v10

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v10, v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_30
    new-instance v10, Ll4i;

    invoke-direct {v10}, Ll4i;-><init>()V

    const/4 v11, 0x0

    :goto_1e
    if-gt v11, v13, :cond_32

    aget v12, v1, v11

    move-object/from16 v25, v1

    const/4 v15, -0x1

    add-int/lit8 v1, v3, -0x1

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_31

    aget v1, v8, v1

    goto :goto_1f

    :cond_31
    const/4 v1, -0x1

    :goto_1f
    new-instance v12, Lsoh;

    aget v15, v9, v11

    invoke-direct {v12, v15, v1}, Lsoh;-><init>(II)V

    invoke-virtual {v10, v12}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v25

    goto :goto_1e

    :cond_32
    invoke-virtual {v10}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsoh;

    iget v1, v8, Lsoh;->b:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_33

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_33
    const/4 v1, 0x1

    :goto_20
    if-gt v1, v13, :cond_35

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsoh;

    iget v8, v8, Lsoh;->b:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_34

    goto :goto_21

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_35
    const/4 v9, -0x1

    move v1, v9

    :goto_21
    if-ne v1, v9, :cond_36

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_36
    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x1

    aput v7, v9, v10

    const/4 v11, 0x0

    aput v7, v9, v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    new-array v13, v8, [I

    aput v7, v13, v10

    aput v7, v13, v11

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    const/4 v10, 0x1

    :goto_22
    if-ge v10, v7, :cond_38

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v10, :cond_37

    aget-object v12, v9, v10

    aget-object v13, v8, v10

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v15

    aput-boolean v15, v13, v11

    aput-boolean v15, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_37
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_38
    const/4 v10, 0x1

    :goto_24
    if-ge v10, v7, :cond_3c

    const/4 v11, 0x0

    :goto_25
    if-ge v11, v6, :cond_3b

    const/4 v12, 0x0

    :goto_26
    if-ge v12, v10, :cond_3a

    aget-object v13, v8, v10

    aget-boolean v15, v13, v12

    if-eqz v15, :cond_39

    aget-object v15, v8, v12

    aget-boolean v15, v15, v11

    if-eqz v15, :cond_39

    const/4 v15, 0x1

    aput-boolean v15, v13, v11

    goto :goto_27

    :cond_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    :cond_3a
    :goto_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_3c
    new-array v10, v4, [I

    const/4 v11, 0x0

    :goto_28
    if-ge v11, v7, :cond_3e

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_29
    if-ge v12, v11, :cond_3d

    aget-object v15, v9, v11

    aget-boolean v15, v15, v12

    add-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    :cond_3d
    aget v12, v14, v11

    aput v13, v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :cond_3e
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2a
    if-ge v11, v7, :cond_40

    aget v13, v14, v11

    aget v13, v10, v13

    if-nez v13, :cond_3f

    add-int/lit8 v12, v12, 0x1

    :cond_3f
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    :cond_40
    const/4 v11, 0x1

    if-le v12, v11, :cond_41

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_41
    new-array v11, v7, [I

    move/from16 v15, v27

    new-array v12, v15, [I

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v13

    if-eqz v13, :cond_43

    const/4 v13, 0x0

    :goto_2b
    if-ge v13, v7, :cond_42

    move-object/from16 v25, v14

    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Lg0i;->a(I)I

    move-result v27

    aput v27, v11, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v25

    goto :goto_2b

    :cond_42
    move-object/from16 v25, v14

    move/from16 v13, v26

    :goto_2c
    const/4 v14, 0x0

    goto :goto_2d

    :cond_43
    move-object/from16 v25, v14

    move/from16 v13, v26

    const/4 v14, 0x0

    invoke-static {v11, v14, v7, v13}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2c

    :goto_2d
    if-ge v14, v15, :cond_45

    move/from16 v27, v1

    move-object/from16 p1, v8

    move-object/from16 v26, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2e
    aget v1, v23, v14

    if-ge v10, v1, :cond_44

    aget-object v1, v24, v14

    aget v1, v1, v10

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoh;

    iget v1, v1, Lsoh;->a:I

    aget v1, v11, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_44
    add-int/lit8 v8, v8, 0x1

    aput v8, v12, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, v26

    move/from16 v1, v27

    goto :goto_2d

    :cond_45
    move/from16 v27, v1

    move-object/from16 p1, v8

    move-object/from16 v26, v10

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v6, :cond_48

    add-int/lit8 v8, v1, 0x1

    move v10, v8

    :goto_30
    if-ge v10, v7, :cond_47

    aget-object v11, v9, v10

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_46

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lg0i;->f(I)V

    :cond_46
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_47
    move v1, v8

    goto :goto_2f

    :cond_48
    invoke-virtual {v0}, Lg0i;->e()V

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v1

    const/4 v6, 0x1

    add-int/2addr v1, v6

    new-instance v8, Ll4i;

    invoke-direct {v8}, Ll4i;-><init>()V

    move-object/from16 v10, v21

    invoke-virtual {v8, v10}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    if-le v1, v6, :cond_49

    move-object/from16 v6, v19

    invoke-virtual {v8, v6}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    const/4 v10, 0x2

    :goto_31
    if-ge v10, v1, :cond_49

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v11

    invoke-static {v0, v11, v13, v6}, Ljzh;->n(Lg0i;ZILtqh;)Ltqh;

    move-result-object v6

    invoke-virtual {v8, v6}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_49
    invoke-virtual {v8}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v6

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v8

    add-int/2addr v8, v15

    if-le v8, v15, :cond_4a

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_4a
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lg0i;->a(I)I

    move-result v11

    new-array v13, v10, [I

    const/4 v10, 0x1

    aput v4, v13, v10

    const/4 v10, 0x0

    aput v8, v13, v10

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Z

    new-array v14, v8, [I

    new-array v10, v8, [I

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v15, :cond_4f

    move/from16 v21, v15

    const/4 v15, 0x0

    aput v15, v14, v6

    aget v15, v22, v6

    aput v15, v10, v6

    if-nez v11, :cond_4b

    aget-object v15, v13, v6

    move-object/from16 v28, v9

    aget v9, v23, v6

    move/from16 v30, v7

    move-object/from16 v29, v12

    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-static {v15, v7, v9, v12}, Ljava/util/Arrays;->fill([ZIIZ)V

    aget v7, v23, v6

    aput v7, v14, v6

    move v7, v12

    :goto_33
    const/4 v9, 0x0

    goto :goto_36

    :cond_4b
    move/from16 v30, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4e

    const/4 v7, 0x0

    :goto_34
    aget v9, v23, v6

    if-ge v7, v9, :cond_4d

    aget-object v9, v13, v6

    aget-object v12, v24, v6

    aget v12, v12, v7

    if-ne v12, v15, :cond_4c

    const/4 v12, 0x1

    goto :goto_35

    :cond_4c
    const/4 v12, 0x0

    :goto_35
    aput-boolean v12, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_4d
    const/4 v7, 0x1

    aput v7, v14, v6

    goto :goto_33

    :cond_4e
    move v7, v12

    const/4 v9, 0x0

    aget-object v12, v13, v9

    aput-boolean v7, v12, v9

    aput v7, v14, v9

    :goto_36
    add-int/lit8 v6, v6, 0x1

    move/from16 v15, v21

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move/from16 v7, v30

    goto :goto_32

    :cond_4f
    move/from16 v30, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v12

    move/from16 v21, v15

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-array v6, v4, [I

    const/4 v12, 0x2

    new-array v15, v12, [I

    aput v4, v15, v7

    aput v8, v15, v9

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_37
    if-ge v9, v8, :cond_5c

    if-ne v11, v12, :cond_51

    const/4 v12, 0x0

    :goto_38
    aget v15, v23, v9

    if-ge v12, v15, :cond_51

    aget-object v15, v13, v9

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v22

    aput-boolean v22, v15, v12

    aget v15, v14, v9

    aget-object v22, v13, v9

    aget-boolean v22, v22, v12

    add-int v15, v15, v22

    aput v15, v14, v9

    if-eqz v22, :cond_50

    aget-object v15, v24, v9

    aget v15, v15, v12

    aput v15, v10, v9

    :cond_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    :cond_51
    if-nez v7, :cond_53

    aget-object v7, v24, v9

    const/4 v12, 0x0

    aget v7, v7, v12

    if-nez v7, :cond_54

    aget-object v7, v13, v9

    aget-boolean v7, v7, v12

    if-eqz v7, :cond_54

    move v7, v12

    const/4 v15, 0x1

    :goto_39
    aget v12, v23, v9

    if-ge v15, v12, :cond_53

    aget-object v12, v24, v9

    aget v12, v12, v15

    move/from16 v22, v11

    move/from16 v11, v27

    if-ne v12, v11, :cond_52

    aget-object v12, v13, v9

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_52

    move v7, v9

    :cond_52
    add-int/lit8 v15, v15, 0x1

    move/from16 v27, v11

    move/from16 v11, v22

    goto :goto_39

    :cond_53
    move/from16 v22, v11

    move/from16 v11, v27

    goto :goto_3a

    :cond_54
    move/from16 v22, v11

    move/from16 v11, v27

    const/4 v7, 0x0

    :goto_3a
    const/4 v12, 0x0

    :goto_3b
    aget v15, v23, v9

    if-ge v12, v15, :cond_5a

    const/4 v15, 0x1

    if-le v1, v15, :cond_58

    aget-object v15, v4, v9

    aget-object v27, v13, v9

    aget-boolean v27, v27, v12

    aput-boolean v27, v15, v12

    move-object v15, v10

    move/from16 v27, v11

    int-to-double v10, v1

    move/from16 v31, v1

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v1}, Lj6i;->a(DLjava/math/RoundingMode;)I

    move-result v1

    aget-object v10, v4, v9

    aget-boolean v10, v10, v12

    if-nez v10, :cond_56

    aget-object v10, v24, v9

    aget v10, v10, v12

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsoh;

    iget v10, v10, Lsoh;->a:I

    const/4 v11, 0x0

    :goto_3c
    if-ge v11, v12, :cond_56

    aget-object v32, v24, v9

    move-object/from16 v33, v13

    aget v13, v32, v11

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsoh;

    iget v13, v13, Lsoh;->a:I

    aget-object v32, p1, v10

    aget-boolean v13, v32, v13

    if-eqz v13, :cond_55

    aget-object v10, v4, v9

    const/4 v11, 0x1

    aput-boolean v11, v10, v12

    goto :goto_3d

    :cond_55
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v33

    goto :goto_3c

    :cond_56
    move-object/from16 v33, v13

    :goto_3d
    aget-object v10, v4, v9

    aget-boolean v10, v10, v12

    if-eqz v10, :cond_59

    if-lez v7, :cond_57

    if-ne v9, v7, :cond_57

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v1

    aput v1, v6, v12

    goto :goto_3e

    :cond_57
    invoke-virtual {v0, v1}, Lg0i;->f(I)V

    goto :goto_3e

    :cond_58
    move/from16 v31, v1

    move-object v15, v10

    move/from16 v27, v11

    move-object/from16 v33, v13

    :cond_59
    :goto_3e
    add-int/lit8 v12, v12, 0x1

    move-object v10, v15

    move/from16 v11, v27

    move/from16 v1, v31

    move-object/from16 v13, v33

    goto :goto_3b

    :cond_5a
    move/from16 v31, v1

    move-object v15, v10

    move/from16 v27, v11

    move-object/from16 v33, v13

    aget v1, v14, v9

    const/4 v10, 0x1

    if-ne v1, v10, :cond_5b

    aget v1, v15, v9

    aget v1, v26, v1

    if-lez v1, :cond_5b

    invoke-virtual {v0}, Lg0i;->e()V

    :cond_5b
    add-int/lit8 v9, v9, 0x1

    move-object v10, v15

    move/from16 v11, v22

    move/from16 v1, v31

    move-object/from16 v13, v33

    const/4 v12, 0x2

    goto/16 :goto_37

    :cond_5c
    if-nez v7, :cond_5d

    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto/16 :goto_5b

    :cond_5d
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfww;->zzi(I)Ll4i;

    move-result-object v7

    move/from16 v9, v30

    new-array v10, v9, [I

    const/4 v11, 0x0

    :goto_3f
    if-ge v11, v5, :cond_61

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, Lg0i;->a(I)I

    move-result v13

    invoke-virtual {v0, v12}, Lg0i;->a(I)I

    move-result v14

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v15

    if-eqz v15, :cond_5f

    const/4 v15, 0x2

    invoke-virtual {v0, v15}, Lg0i;->a(I)I

    move-result v12

    const/4 v15, 0x3

    if-ne v12, v15, :cond_5e

    invoke-virtual {v0}, Lg0i;->e()V

    :cond_5e
    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Lg0i;->a(I)I

    move-result v22

    invoke-virtual {v0, v15}, Lg0i;->a(I)I

    move-result v24

    move/from16 v32, v22

    move/from16 v33, v24

    goto :goto_40

    :cond_5f
    const/4 v12, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_40
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v15

    if-eqz v15, :cond_60

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v15

    move-object/from16 p1, v3

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v3

    move-object/from16 v22, v2

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v2

    move-object/from16 v24, v6

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v6

    invoke-static {v13, v12, v15, v3}, Ljzh;->l(IIII)I

    move-result v13

    invoke-static {v14, v12, v2, v6}, Ljzh;->k(IIII)I

    move-result v14

    :goto_41
    move/from16 v34, v13

    move/from16 v35, v14

    goto :goto_42

    :cond_60
    move-object/from16 v22, v2

    move-object/from16 p1, v3

    move-object/from16 v24, v6

    goto :goto_41

    :goto_42
    new-instance v2, Losh;

    move-object/from16 v30, v2

    move/from16 v31, v12

    invoke-direct/range {v30 .. v35}, Losh;-><init>(IIIII)V

    invoke-virtual {v7, v2}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, v22

    move-object/from16 v6, v24

    goto :goto_3f

    :cond_61
    move-object/from16 v22, v2

    move-object/from16 p1, v3

    move-object/from16 v24, v6

    const/4 v2, 0x1

    if-le v5, v2, :cond_62

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_62

    int-to-double v1, v5

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3}, Lj6i;->a(DLjava/math/RoundingMode;)I

    move-result v1

    const/4 v2, 0x1

    :goto_43
    if-ge v2, v9, :cond_63

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v3

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_62
    const/4 v2, 0x1

    :goto_44
    if-ge v2, v9, :cond_63

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_63
    new-instance v5, Lith;

    invoke-virtual {v7}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Lith;-><init>(Ljava/util/List;[I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lg0i;->f(I)V

    const/4 v1, 0x1

    :goto_45
    if-ge v1, v9, :cond_65

    aget v2, v25, v1

    aget v2, v26, v2

    if-nez v2, :cond_64

    invoke-virtual {v0}, Lg0i;->e()V

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_65
    const/4 v1, 0x1

    :goto_46
    if-ge v1, v8, :cond_6c

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    const/4 v3, 0x0

    :goto_47
    aget v6, v29, v1

    if-ge v3, v6, :cond_6b

    if-lez v3, :cond_66

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v6

    goto :goto_48

    :cond_66
    if-nez v3, :cond_67

    const/4 v6, 0x1

    goto :goto_48

    :cond_67
    const/4 v6, 0x0

    :goto_48
    if-eqz v6, :cond_6a

    const/4 v6, 0x0

    :goto_49
    aget v7, v23, v1

    if-ge v6, v7, :cond_69

    aget-object v7, v4, v1

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_68

    invoke-virtual {v0}, Lg0i;->c()I

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_69
    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_6c
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v1

    const/4 v14, 0x2

    add-int/2addr v1, v14

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v0, v1}, Lg0i;->f(I)V

    goto :goto_4c

    :cond_6d
    const/4 v2, 0x1

    :goto_4a
    if-ge v2, v9, :cond_70

    const/4 v3, 0x0

    :goto_4b
    if-ge v3, v2, :cond_6f

    aget-object v4, v28, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_6e

    invoke-virtual {v0, v1}, Lg0i;->f(I)V

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_70
    :goto_4c
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v1

    const/4 v2, 0x1

    :goto_4d
    if-gt v2, v1, :cond_71

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lg0i;->f(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_71
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Lg0i;->d()V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_73

    :cond_72
    invoke-virtual {v0}, Lg0i;->e()V

    :cond_73
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-nez v1, :cond_74

    if-eqz v2, :cond_7a

    :cond_74
    move/from16 v15, v21

    const/4 v3, 0x0

    :goto_4e
    if-ge v3, v15, :cond_7a

    const/4 v4, 0x0

    :goto_4f
    aget v6, v29, v3

    if-ge v4, v6, :cond_79

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v6

    goto :goto_50

    :cond_75
    const/4 v6, 0x0

    :goto_50
    if-eqz v2, :cond_76

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v7

    goto :goto_51

    :cond_76
    const/4 v7, 0x0

    :goto_51
    if-eqz v6, :cond_77

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Lg0i;->f(I)V

    :cond_77
    if-eqz v7, :cond_78

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Lg0i;->f(I)V

    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_7a
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lg0i;->a(I)I

    move-result v3

    const/4 v2, 0x1

    add-int/2addr v3, v2

    goto :goto_52

    :cond_7b
    const/4 v2, 0x1

    move v3, v9

    :goto_52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzi(I)Ll4i;

    move-result-object v4

    new-array v6, v9, [I

    const/4 v7, 0x0

    :goto_53
    if-ge v7, v3, :cond_7d

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lg0i;->f(I)V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v10

    if-eq v2, v10, :cond_7c

    move v2, v14

    :goto_54
    const/16 v10, 0x8

    goto :goto_55

    :cond_7c
    const/4 v2, 0x1

    goto :goto_54

    :goto_55
    invoke-virtual {v0, v10}, Lg0i;->a(I)I

    move-result v11

    invoke-static {v11}, Lh6j;->a(I)I

    move-result v11

    invoke-virtual {v0, v10}, Lg0i;->a(I)I

    move-result v12

    invoke-static {v12}, Lh6j;->b(I)I

    move-result v12

    invoke-virtual {v0, v10}, Lg0i;->f(I)V

    new-instance v13, Ljvh;

    invoke-direct {v13, v11, v2, v12}, Ljvh;-><init>(III)V

    invoke-virtual {v4, v13}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    goto :goto_53

    :cond_7d
    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    if-le v3, v1, :cond_7e

    const/4 v14, 0x0

    :goto_56
    if-ge v14, v9, :cond_7e

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v2

    aput v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    :cond_7e
    new-instance v0, Lewh;

    invoke-virtual {v4}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lewh;-><init>(Ljava/util/List;[I)V

    move-object v6, v0

    goto :goto_57

    :cond_7f
    const/4 v6, 0x0

    :goto_57
    new-instance v0, Laxh;

    new-instance v4, Ltrh;

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v4, v1, v2}, Ltrh;-><init>(Ljava/util/List;[I)V

    move-object v1, v0

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto :goto_5b

    :goto_58
    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto :goto_5b

    :goto_59
    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    goto :goto_5b

    :goto_5a
    new-instance v0, Laxh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Laxh;-><init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V

    :goto_5b
    return-object v0
.end method

.method public static f([BII)Lwxh;
    .locals 1

    new-instance p1, Lg0i;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lg0i;-><init>([BII)V

    invoke-virtual {p1}, Lg0i;->c()I

    move-result p0

    invoke-virtual {p1}, Lg0i;->c()I

    move-result p2

    invoke-virtual {p1}, Lg0i;->e()V

    invoke-virtual {p1}, Lg0i;->h()Z

    move-result p1

    new-instance v0, Lwxh;

    invoke-direct {v0, p0, p2, p1}, Lwxh;-><init>(IIZ)V

    return-object v0
.end method

.method public static g([BII)Loyh;
    .locals 32

    new-instance v0, Lg0i;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lg0i;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v5

    invoke-virtual {v0, v1}, Lg0i;->a(I)I

    move-result v6

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v7

    const/16 v3, 0x56

    const/16 v4, 0x2c

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-eq v2, v15, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v13, 0x53

    if-eq v2, v13, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v13, 0x76

    if-eq v2, v13, :cond_1

    const/16 v13, 0x80

    if-eq v2, v13, :cond_1

    const/16 v13, 0x8a

    if-ne v2, v13, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v13, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_6

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v13

    if-ne v13, v11, :cond_2

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v16

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v13

    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v17

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v18

    invoke-virtual {v0}, Lg0i;->e()V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eq v1, v11, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/16 v1, 0xc

    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v1, :cond_8

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v8, 0x6

    if-ge v10, v8, :cond_4

    move v8, v12

    goto :goto_4

    :cond_4
    const/16 v8, 0x40

    :goto_4
    const/4 v9, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    :goto_5
    if-ge v9, v8, :cond_7

    if-eqz v20, :cond_5

    invoke-virtual {v0}, Lg0i;->b()I

    move-result v20

    add-int v15, v21, v20

    add-int/lit16 v15, v15, 0x100

    rem-int/lit16 v15, v15, 0x100

    move/from16 v20, v15

    :cond_5
    if-eqz v20, :cond_6

    move/from16 v21, v20

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x64

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v15, 0x64

    goto :goto_3

    :cond_8
    :goto_6
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    move/from16 v24, v8

    move/from16 v25, v9

    :goto_7
    const/16 v26, 0x0

    goto :goto_9

    :cond_9
    if-ne v8, v14, :cond_b

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v8

    invoke-virtual {v0}, Lg0i;->b()I

    invoke-virtual {v0}, Lg0i;->b()I

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v9

    int-to-long v9, v9

    const/4 v15, 0x0

    :goto_8
    int-to-long v3, v15

    cmp-long v3, v3, v9

    if-gez v3, :cond_a

    invoke-virtual {v0}, Lg0i;->c()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_a
    move/from16 v26, v8

    move/from16 v24, v14

    const/16 v25, 0x0

    goto :goto_9

    :cond_b
    move/from16 v24, v8

    const/16 v25, 0x0

    goto :goto_7

    :goto_9
    invoke-virtual {v0}, Lg0i;->c()I

    move-result v8

    invoke-virtual {v0}, Lg0i;->e()V

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v4

    add-int/2addr v4, v14

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v15

    rsub-int/lit8 v9, v15, 0x2

    if-nez v15, :cond_c

    invoke-virtual {v0}, Lg0i;->e()V

    :cond_c
    mul-int/2addr v4, v9

    invoke-virtual {v0}, Lg0i;->e()V

    mul-int/2addr v3, v12

    mul-int/2addr v4, v12

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v10

    const/16 v27, 0x2

    if-eqz v10, :cond_10

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v10

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v28

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v29

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v30

    if-nez v13, :cond_d

    move/from16 v31, v14

    goto :goto_c

    :cond_d
    if-ne v13, v11, :cond_e

    move/from16 v31, v14

    goto :goto_a

    :cond_e
    move/from16 v31, v27

    :goto_a
    if-ne v13, v14, :cond_f

    move/from16 v13, v27

    goto :goto_b

    :cond_f
    move v13, v14

    :goto_b
    mul-int/2addr v9, v13

    :goto_c
    add-int v10, v10, v28

    mul-int v10, v10, v31

    sub-int/2addr v3, v10

    add-int v29, v29, v30

    mul-int v29, v29, v9

    sub-int v4, v4, v29

    :cond_10
    move v9, v3

    move v10, v4

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_12

    const/16 v3, 0x56

    if-eq v2, v3, :cond_12

    const/16 v3, 0x64

    if-eq v2, v3, :cond_12

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_12

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_12

    const/16 v3, 0xf4

    if-ne v2, v3, :cond_11

    move v2, v3

    goto :goto_d

    :cond_11
    move v4, v2

    move v13, v12

    goto :goto_e

    :cond_12
    :goto_d
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_11

    move v4, v2

    const/4 v13, 0x0

    :goto_e
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    const/16 v19, -0x1

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lg0i;->a(I)I

    move-result v3

    const/16 v2, 0xff

    if-ne v3, v2, :cond_14

    invoke-virtual {v0, v12}, Lg0i;->a(I)I

    move-result v2

    invoke-virtual {v0, v12}, Lg0i;->a(I)I

    move-result v3

    if-eqz v2, :cond_13

    if-eqz v3, :cond_13

    int-to-float v2, v2

    int-to-float v3, v3

    div-float v3, v2, v3

    goto :goto_10

    :cond_13
    :goto_f
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_14
    const/16 v2, 0x11

    if-ge v3, v2, :cond_15

    sget-object v2, Ljzh;->b:[F

    aget v3, v2, v3

    goto :goto_10

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :goto_10
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lg0i;->e()V

    :cond_16
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, v11}, Lg0i;->f(I)V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eq v14, v2, :cond_17

    move/from16 v14, v27

    :cond_17
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lg0i;->a(I)I

    move-result v11

    invoke-virtual {v0, v2}, Lg0i;->a(I)I

    move-result v12

    invoke-virtual {v0, v2}, Lg0i;->f(I)V

    invoke-static {v11}, Lh6j;->a(I)I

    move-result v19

    invoke-static {v12}, Lh6j;->b(I)I

    move-result v2

    move v11, v2

    move/from16 v2, v19

    :goto_11
    move/from16 v19, v14

    goto :goto_12

    :cond_18
    move/from16 v2, v19

    move v11, v2

    goto :goto_11

    :cond_19
    move/from16 v2, v19

    move v11, v2

    :goto_12
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    :cond_1a
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v12

    if-eqz v12, :cond_1b

    const/16 v12, 0x41

    invoke-virtual {v0, v12}, Lg0i;->f(I)V

    :cond_1b
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-static {v0}, Ljzh;->o(Lg0i;)V

    :cond_1c
    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-static {v0}, Ljzh;->o(Lg0i;)V

    :cond_1d
    if-nez v12, :cond_1e

    if-eqz v14, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Lg0i;->e()V

    :cond_1f
    invoke-virtual {v0}, Lg0i;->e()V

    invoke-virtual {v0}, Lg0i;->h()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-virtual {v0}, Lg0i;->e()V

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    invoke-virtual {v0}, Lg0i;->c()I

    move-result v12

    invoke-virtual {v0}, Lg0i;->c()I

    move/from16 v20, v2

    move/from16 v22, v11

    move/from16 v23, v12

    :goto_13
    move/from16 v21, v19

    move v11, v3

    goto :goto_14

    :cond_20
    move/from16 v20, v2

    move/from16 v22, v11

    move/from16 v23, v13

    goto :goto_13

    :cond_21
    move/from16 v23, v13

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_14
    new-instance v0, Loyh;

    move-object v3, v0

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v16

    move/from16 v16, v1

    move/from16 v17, v24

    move/from16 v18, v25

    move/from16 v19, v26

    invoke-direct/range {v3 .. v23}, Loyh;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v0
.end method

.method public static h(Ljava/util/List;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v6, v4

    if-le v6, v0, :cond_4

    new-array v7, v0, [Z

    sget v8, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v8, Ll4i;

    invoke-direct {v8}, Ll4i;-><init>()V

    move v9, v2

    :goto_1
    array-length v10, v4

    if-ge v9, v10, :cond_1

    invoke-static {v4, v9, v10, v7}, Ljzh;->a([BII[Z)I

    move-result v9

    if-eq v9, v10, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    :cond_0
    add-int/2addr v9, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v7

    move v8, v2

    :goto_2
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v0

    if-ge v9, v6, :cond_3

    new-instance v9, Lg0i;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v0

    invoke-direct {v9, v4, v10, v6}, Lg0i;-><init>([BII)V

    invoke-static {v9}, Ljzh;->m(Lg0i;)Lrph;

    move-result-object v10

    iget v11, v10, Lrph;->a:I

    const/16 v12, 0x21

    if-ne v11, v12, :cond_3

    iget v10, v10, Lrph;->b:I

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x4

    invoke-virtual {v9, p0}, Lg0i;->f(I)V

    invoke-virtual {v9, v0}, Lg0i;->a(I)I

    move-result p0

    invoke-virtual {v9}, Lg0i;->e()V

    invoke-static {v9, v1, p0, v5}, Ljzh;->n(Lg0i;ZILtqh;)Ltqh;

    move-result-object p0

    iget v0, p0, Ltqh;->a:I

    iget-boolean v1, p0, Ltqh;->b:Z

    iget v2, p0, Ltqh;->c:I

    iget v3, p0, Ltqh;->d:I

    iget-object v4, p0, Ltqh;->e:[I

    iget v5, p0, Ltqh;->f:I

    invoke-static/range {v0 .. v5}, Lvcg;->d(IZII[II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    add-int/2addr v8, v1

    goto :goto_2

    :cond_4
    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method public static i([Z)V
    .locals 2

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static j([BIILerj;)Z
    .locals 5

    iget-object p1, p3, Lerj;->o:Ljava/lang/String;

    const-string v0, "video/avc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    aget-byte p0, p0, v2

    and-int/lit8 p1, p0, 0x60

    shr-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    move v3, v4

    goto :goto_1

    :cond_1
    and-int/lit8 p0, p0, 0x1f

    if-ne p0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    const-string v0, "video/hevc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr p2, v2

    new-instance p1, Lg0i;

    invoke-direct {p1, p0, v2, p2}, Lg0i;-><init>([BII)V

    invoke-static {p1}, Ljzh;->m(Lg0i;)Lrph;

    move-result-object p0

    iget p1, p0, Lrph;->a:I

    const/16 p2, 0x23

    if-ne p1, p2, :cond_6

    goto :goto_1

    :cond_6
    if-gt p1, v1, :cond_0

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iget p0, p0, Lrph;->c:I

    iget p1, p3, Lerj;->D:I

    add-int/lit8 p1, p1, -0x1

    if-eq p0, p1, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    return v3
.end method

.method public static k(IIII)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static l(IIII)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static m(Lg0i;)Lrph;
    .locals 3

    invoke-virtual {p0}, Lg0i;->e()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lg0i;->a(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lg0i;->a(I)I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lg0i;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance v2, Lrph;

    invoke-direct {v2, v1, v0, p0}, Lrph;-><init>(III)V

    return-object v2
.end method

.method public static n(Lg0i;ZILtqh;)Ltqh;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    new-array v4, v3, [I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lg0i;->a(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lg0i;->h()Z

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lg0i;->a(I)I

    move-result v8

    move v9, v6

    move v10, v9

    :goto_0
    const/16 v11, 0x20

    if-ge v9, v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lg0i;->h()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    shl-int/2addr v11, v9

    or-int/2addr v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_1
    if-ge v9, v3, :cond_2

    invoke-virtual {v0, v5}, Lg0i;->a(I)I

    move-result v11

    aput v11, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_2
    move-object/from16 v16, v4

    move v13, v7

    move v14, v8

    move v15, v10

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    iget v3, v2, Ltqh;->a:I

    iget-boolean v7, v2, Ltqh;->b:Z

    iget v8, v2, Ltqh;->c:I

    iget v10, v2, Ltqh;->d:I

    iget-object v4, v2, Ltqh;->e:[I

    move v12, v3

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    move v12, v6

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_3
    invoke-virtual {v0, v5}, Lg0i;->a(I)I

    move-result v17

    move v2, v6

    :goto_4
    if-ge v6, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lg0i;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x58

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lg0i;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Lg0i;->f(I)V

    if-lez v1, :cond_8

    sub-int/2addr v5, v1

    add-int/2addr v5, v5

    invoke-virtual {v0, v5}, Lg0i;->f(I)V

    :cond_8
    new-instance v0, Ltqh;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Ltqh;-><init>(IZII[II)V

    return-object v0
.end method

.method public static o(Lg0i;)V
    .locals 2

    invoke-virtual {p0}, Lg0i;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lg0i;->f(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lg0i;->c()I

    invoke-virtual {p0}, Lg0i;->c()I

    invoke-virtual {p0}, Lg0i;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lg0i;->f(I)V

    return-void
.end method
