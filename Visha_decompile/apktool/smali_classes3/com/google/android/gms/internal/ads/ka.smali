.class public final Lcom/google/android/gms/internal/ads/ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcui;


# static fields
.field public static final m:[I

.field public static final n:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lrti;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lpui;

.field public final l:Lfsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/ka;->m:[I

    invoke-static {}, Lvui;->q()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILrti;Z[IIILtti;Lcti;Lpui;Lfsi;Lmti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ka;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/ka;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/ka;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/ia;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ka;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    iput p8, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/ka;->l:Lfsi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ka;->e:Lrti;

    return-void
.end method

.method public static final A(ILjava/lang/Object;Lbvi;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lbvi;->s(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {p2, p0, p1}, Lbvi;->v(ILcom/google/android/gms/internal/ads/zzgwn;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)Lqui;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-static {}, Lqui;->c()Lqui;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lqui;->f()Lqui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    :cond_0
    return-object v0
.end method

.method public static D(Ljava/lang/Class;Loti;Ltti;Lcti;Lpui;Lfsi;Lmti;)Lcom/google/android/gms/internal/ads/ka;
    .locals 34

    move-object/from16 v0, p1

    instance-of v1, v0, Lzti;

    if-eqz v1, :cond_37

    check-cast v0, Lzti;

    invoke-virtual {v0}, Lzti;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/ka;->m:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lzti;->b()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0}, Lzti;->zza()Lrti;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1c

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1d

    :cond_1c
    const/4 v14, 0x1

    goto :goto_14

    :cond_1d
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    invoke-virtual {v0}, Lzti;->zzc()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1f

    if-eqz v2, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v24

    :goto_13
    move v9, v13

    goto :goto_15

    :goto_14
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    aget-object v13, v15, v6

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/ka;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v15, v6

    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    aget-object v14, v15, v6

    move/from16 v28, v2

    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    check-cast v14, Ljava/lang/reflect/Field;

    :goto_17
    move v2, v13

    goto :goto_18

    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/ka;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v15, v6

    goto :goto_17

    :goto_18
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move v13, v9

    move/from16 v29, v27

    move/from16 v27, v4

    move v9, v6

    const/4 v6, 0x0

    move-object v4, v1

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_24

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    aget-object v14, v15, v9

    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/ka;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move/from16 v27, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_24

    const/16 v4, 0x11

    if-ne v5, v4, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v4, 0x1b

    if-eq v5, v4, :cond_2d

    const/16 v4, 0x31

    if-ne v5, v4, :cond_26

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_26
    const/16 v4, 0xc

    if-eq v5, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v5, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v4, 0x32

    if-ne v5, v4, :cond_29

    add-int/lit8 v4, v9, 0x2

    add-int/lit8 v28, v21, 0x1

    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_28

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v9, 0x3

    aget-object v4, v15, v4

    aput-object v4, v12, v21

    move-object v4, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1f

    :cond_28
    move v13, v4

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    :goto_19
    move-object v4, v1

    goto :goto_1f

    :cond_29
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_19

    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lzti;->zzc()I

    move-result v4

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2c

    if-eqz v2, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object v4, v1

    const/4 v2, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    aget-object v13, v15, v13

    aput-object v13, v12, v4

    :goto_1c
    move-object v4, v1

    move v13, v9

    goto :goto_1f

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v9, v9, 0x2

    :goto_1d
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    aget-object v13, v15, v13

    aput-object v13, v12, v4

    goto :goto_1c

    :goto_1e
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v12, v4

    goto :goto_19

    :goto_1f
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xd800

    if-lt v6, v14, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_20
    add-int/lit8 v23, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v14, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    add-int/lit8 v9, v9, 0xd

    move/from16 v1, v23

    goto :goto_20

    :cond_2e
    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    move/from16 v1, v23

    :cond_2f
    add-int v9, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v9, v9, v23

    aget-object v14, v15, v9

    move/from16 v29, v1

    instance-of v1, v14, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v14, Ljava/lang/reflect/Field;

    :goto_21
    move/from16 v30, v2

    goto :goto_22

    :cond_30
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/ka;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v15, v9

    goto :goto_21

    :goto_22
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    goto :goto_23

    :cond_31
    move/from16 v30, v2

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_23
    const/16 v1, 0x12

    if-lt v5, v1, :cond_32

    const/16 v1, 0x31

    if-gt v5, v1, :cond_32

    add-int/lit8 v1, v22, 0x1

    aput v0, v16, v22

    move/from16 v22, v1

    :cond_32
    move/from16 v2, v30

    :goto_24
    add-int/lit8 v1, v20, 0x1

    aput v27, v11, v20

    add-int/lit8 v14, v20, 0x2

    move-object/from16 v27, v3

    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_33

    const/high16 v3, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v3, 0x0

    :goto_25
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v8, 0x0

    :goto_26
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v2, 0x0

    :goto_27
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    or-int/2addr v0, v2

    aput v0, v11, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v6, 0x14

    or-int/2addr v0, v9

    aput v0, v11, v14

    move-object v1, v4

    move v9, v13

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual/range {v28 .. v28}, Lzti;->zza()Lrti;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/ads/ka;-><init>([I[Ljava/lang/Object;IILrti;Z[IIILtti;Lcti;Lpui;Lfsi;Lmti;)V

    return-object v0

    :cond_37
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static E(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static F(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static G(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static K(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static M(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static k(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static t(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/Object;ILcui;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcui;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static z(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;[BIIILmri;)I
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ka;->k(Ljava/lang/Object;)V

    sget-object v14, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v13, -0x1

    move/from16 v8, p3

    move v9, v13

    move/from16 v10, v16

    move/from16 v17, v10

    move/from16 v18, v17

    const v11, 0xfffff

    :goto_0
    if-ge v8, v4, :cond_69

    add-int/lit8 v3, v8, 0x1

    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    invoke-static {v8, v15, v3, v2}, Lnri;->i(I[BILmri;)I

    move-result v3

    iget v8, v2, Lmri;->a:I

    :cond_0
    ushr-int/lit8 v12, v8, 0x3

    if-le v12, v9, :cond_2

    div-int/2addr v10, v1

    iget v9, v6, Lcom/google/android/gms/internal/ads/ka;->c:I

    if-lt v12, v9, :cond_1

    iget v9, v6, Lcom/google/android/gms/internal/ads/ka;->d:I

    if-gt v12, v9, :cond_1

    invoke-virtual {v6, v12, v10}, Lcom/google/android/gms/internal/ads/ka;->J(II)I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v13

    :goto_1
    move v10, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->H(I)I

    move-result v9

    goto :goto_1

    :goto_2
    if-ne v10, v13, :cond_3

    move/from16 v21, v1

    move v9, v5

    move v0, v8

    move/from16 v19, v11

    move v11, v12

    move/from16 v20, v13

    move-object v12, v14

    move/from16 v10, v16

    move/from16 v30, v3

    move-object v3, v2

    move/from16 v2, v30

    goto/16 :goto_3d

    :cond_3
    and-int/lit8 v9, v8, 0x7

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/ka;->a:[I

    add-int/lit8 v18, v10, 0x1

    aget v1, v13, v18

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v0

    const v18, 0xfffff

    and-int v4, v1, v18

    int-to-long v4, v4

    move/from16 p3, v8

    const-wide/16 v24, 0x0

    const-string v8, ""

    move-object/from16 v26, v8

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v8

    const/16 v8, 0x11

    if-gt v0, v8, :cond_15

    const/16 v18, 0x2

    add-int/lit8 v8, v10, 0x2

    aget v8, v13, v8

    ushr-int/lit8 v13, v8, 0x14

    const/16 v19, 0x1

    shl-int v13, v19, v13

    move/from16 v23, v1

    const v1, 0xfffff

    and-int/2addr v8, v1

    if-eq v8, v11, :cond_6

    if-eq v11, v1, :cond_4

    int-to-long v1, v11

    move/from16 v11, v17

    invoke-virtual {v14, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v1, 0xfffff

    :cond_4
    if-ne v8, v1, :cond_5

    move/from16 v1, v16

    goto :goto_3

    :cond_5
    int-to-long v1, v8

    invoke-virtual {v14, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :goto_3
    move/from16 v17, v8

    goto :goto_4

    :cond_6
    move/from16 v1, v17

    move/from16 v17, v11

    :goto_4
    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x3

    if-ne v9, v2, :cond_7

    or-int v0, v1, v13

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/internal/ads/ka;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v4, v12, 0x3

    or-int/lit8 v13, v4, 0x4

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v9

    move/from16 v4, p3

    move-object v8, v1

    move v5, v10

    move-object/from16 v10, p2

    move v11, v3

    move v3, v12

    move/from16 v12, p4

    const/16 v20, -0x1

    move-object/from16 p3, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lnri;->l(Ljava/lang/Object;Lcui;[BIIILmri;)I

    move-result v8

    invoke-virtual {v6, v7, v5, v1}, Lcom/google/android/gms/internal/ads/ka;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v14, p3

    move v1, v2

    move v9, v3

    move/from16 v18, v4

    move v10, v5

    move/from16 v11, v17

    move/from16 v13, v20

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    move/from16 v17, v0

    move/from16 v0, v19

    goto/16 :goto_0

    :cond_7
    move/from16 v4, p3

    move-object/from16 p3, v14

    const/16 v20, -0x1

    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    move v12, v4

    goto/16 :goto_11

    :pswitch_0
    const/4 v2, 0x3

    const/16 v20, -0x1

    move/from16 v30, v12

    move/from16 v12, p3

    move-object/from16 p3, v14

    move/from16 v14, v30

    if-nez v9, :cond_8

    or-int v8, v1, v13

    move-object/from16 v9, p6

    invoke-static {v15, v3, v9}, Lnri;->k([BILmri;)I

    move-result v11

    iget-wide v0, v9, Lmri;->b:J

    invoke-static {v0, v1}, Lvri;->d(J)J

    move-result-wide v21

    move/from16 v13, v19

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v30, v18

    move/from16 v18, v14

    move/from16 v14, v30

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v14, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v9

    move v0, v13

    move/from16 v9, v18

    move/from16 v13, v20

    const/4 v1, 0x3

    move/from16 v18, v12

    move/from16 v30, v17

    move/from16 v17, v8

    move v8, v11

    :goto_5
    move/from16 v11, v30

    goto/16 :goto_0

    :cond_8
    move/from16 v30, v18

    move/from16 v18, v14

    move/from16 v14, v30

    move-object/from16 v14, p3

    move-object/from16 v8, p6

    move/from16 v11, v19

    goto/16 :goto_11

    :pswitch_1
    move-object/from16 v8, p6

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v30, v12

    move/from16 v12, p3

    move-object/from16 p3, v14

    move/from16 v14, v18

    move/from16 v18, v30

    if-nez v9, :cond_9

    or-int v0, v1, v13

    invoke-static {v15, v3, v8}, Lnri;->h([BILmri;)I

    move-result v1

    iget v2, v8, Lmri;->a:I

    invoke-static {v2}, Lvri;->c(I)I

    move-result v2

    move-object/from16 v9, p3

    invoke-virtual {v9, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move-object v14, v9

    :goto_6
    move/from16 v9, v18

    move/from16 v13, v20

    move v8, v1

    move/from16 v18, v12

    const/4 v1, 0x3

    move/from16 v30, v17

    move/from16 v17, v0

    move v0, v11

    goto :goto_5

    :cond_9
    move-object/from16 v14, p3

    goto/16 :goto_11

    :pswitch_2
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v18, v12

    move/from16 v12, p3

    if-nez v9, :cond_c

    invoke-static {v15, v3, v8}, Lnri;->h([BILmri;)I

    move-result v0

    iget v3, v8, Lmri;->a:I

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v9

    const/high16 v19, -0x80000000

    and-int v19, v23, v19

    if-eqz v19, :cond_b

    if-eqz v9, :cond_b

    invoke-interface {v9, v3}, Lusi;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_a

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ka;->C(Ljava/lang/Object;)Lqui;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v12, v3}, Lqui;->j(ILjava/lang/Object;)V

    :goto_7
    move-object/from16 v15, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v14, v2

    :goto_8
    move-object v2, v8

    move/from16 v9, v18

    move/from16 v13, v20

    move v8, v0

    move v0, v11

    move/from16 v18, v12

    move/from16 v11, v17

    move/from16 v17, v1

    :goto_9
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_b
    :goto_a
    or-int/2addr v1, v13

    invoke-virtual {v2, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_c
    move-object/from16 v15, p2

    :cond_d
    move-object v14, v2

    goto/16 :goto_11

    :pswitch_3
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v0, v18

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v18, v12

    move/from16 v12, p3

    if-ne v9, v0, :cond_c

    or-int/2addr v1, v13

    move-object/from16 v15, p2

    invoke-static {v15, v3, v8}, Lnri;->a([BILmri;)I

    move-result v3

    iget-object v9, v8, Lmri;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v14, v2

    move-object v2, v8

    move v0, v11

    move/from16 v11, v17

    move/from16 v9, v18

    move/from16 v13, v20

    move/from16 v17, v1

    move v8, v3

    move/from16 v18, v12

    goto :goto_9

    :pswitch_4
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v0, v18

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v18, v12

    move/from16 v12, p3

    if-ne v9, v0, :cond_d

    or-int v9, v1, v13

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/internal/ads/ka;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    move-object v0, v13

    move-object v14, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->m(Ljava/lang/Object;Lcui;[BIILmri;)I

    move-result v0

    invoke-virtual {v6, v7, v10, v13}, Lcom/google/android/gms/internal/ads/ka;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p5

    move-object v2, v8

    move/from16 v13, v20

    const/4 v1, 0x3

    move v8, v0

    move v0, v11

    move/from16 v11, v17

    :goto_b
    move/from16 v17, v9

    move/from16 v9, v18

    move/from16 v18, v12

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v8, p6

    move/from16 v0, v18

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v18, v12

    move/from16 v12, p3

    if-ne v9, v0, :cond_14

    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/ka;->t(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v15, v3, v8}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v8, Lmri;->a:I

    if-ltz v2, :cond_f

    or-int/2addr v1, v13

    if-nez v2, :cond_e

    move-object/from16 v9, v26

    iput-object v9, v8, Lmri;->c:Ljava/lang/Object;

    goto :goto_d

    :cond_e
    invoke-static {v15, v0, v2}, Lcom/google/android/gms/internal/ads/ra;->h([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lmri;->c:Ljava/lang/Object;

    add-int/2addr v0, v2

    goto :goto_d

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    move-object/from16 v2, v27

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v9, v26

    move-object/from16 v2, v27

    or-int v0, v1, v13

    invoke-static {v15, v3, v8}, Lnri;->h([BILmri;)I

    move-result v1

    iget v3, v8, Lmri;->a:I

    if-ltz v3, :cond_12

    if-nez v3, :cond_11

    iput-object v9, v8, Lmri;->c:Ljava/lang/Object;

    :goto_c
    move/from16 v30, v1

    move v1, v0

    move/from16 v0, v30

    goto :goto_d

    :cond_11
    new-instance v2, Ljava/lang/String;

    sget-object v9, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v15, v1, v3, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v8, Lmri;->c:Ljava/lang/Object;

    add-int/2addr v1, v3

    goto :goto_c

    :goto_d
    iget-object v2, v8, Lmri;->c:Ljava/lang/Object;

    invoke-virtual {v14, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_e
    move/from16 v4, p4

    move/from16 v5, p5

    goto/16 :goto_8

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v12, p3

    if-nez v9, :cond_14

    or-int v0, v1, v13

    invoke-static {v15, v3, v8}, Lnri;->k([BILmri;)I

    move-result v1

    iget-wide v2, v8, Lmri;->b:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_13

    move v2, v11

    goto :goto_f

    :cond_13
    move/from16 v2, v16

    :goto_f
    invoke-static {v7, v4, v5, v2}, Lvui;->x(Ljava/lang/Object;JZ)V

    :goto_10
    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/4 v0, 0x5

    const/16 v20, -0x1

    move/from16 v12, p3

    if-ne v9, v0, :cond_14

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v1, v13

    invoke-static {v15, v3}, Lnri;->b([BI)I

    move-result v2

    invoke-virtual {v14, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e

    :pswitch_8
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v12, p3

    if-ne v9, v11, :cond_14

    add-int/lit8 v9, v3, 0x8

    or-int/2addr v13, v1

    invoke-static {v15, v3}, Lnri;->n([BI)J

    move-result-wide v21

    move-object v0, v14

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v8, v9

    move v0, v11

    move/from16 v11, v17

    move/from16 v9, v18

    const/4 v1, 0x3

    move/from16 v18, v12

    move/from16 v17, v13

    move/from16 v13, v20

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v12, p3

    if-nez v9, :cond_14

    or-int v0, v1, v13

    invoke-static {v15, v3, v8}, Lnri;->h([BILmri;)I

    move-result v1

    iget v2, v8, Lmri;->a:I

    invoke-virtual {v14, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_10

    :pswitch_a
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v12, p3

    if-nez v9, :cond_14

    or-int v9, v1, v13

    invoke-static {v15, v3, v8}, Lnri;->k([BILmri;)I

    move-result v13

    iget-wide v2, v8, Lmri;->b:J

    move-object v0, v14

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v0, v11

    move v8, v13

    move/from16 v11, v17

    move/from16 v13, v20

    const/4 v1, 0x3

    goto/16 :goto_b

    :pswitch_b
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/4 v0, 0x5

    const/16 v20, -0x1

    move/from16 v12, p3

    if-ne v9, v0, :cond_14

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v1, v13

    invoke-static {v15, v3}, Lnri;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v7, v4, v5, v2}, Lvui;->A(Ljava/lang/Object;JF)V

    goto/16 :goto_e

    :pswitch_c
    move-object/from16 v8, p6

    move/from16 v18, v12

    move/from16 v11, v19

    const/16 v20, -0x1

    move/from16 v12, p3

    if-ne v9, v11, :cond_14

    add-int/lit8 v0, v3, 0x8

    or-int/2addr v1, v13

    invoke-static {v15, v3}, Lnri;->n([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v7, v4, v5, v2, v3}, Lvui;->z(Ljava/lang/Object;JD)V

    goto/16 :goto_e

    :cond_14
    :goto_11
    move/from16 v9, p5

    move v2, v3

    move-object v3, v8

    move v0, v12

    move-object v12, v14

    move/from16 v19, v17

    move/from16 v11, v18

    const/16 v21, 0x3

    move/from16 v17, v1

    goto/16 :goto_3d

    :cond_15
    move/from16 v23, v1

    move/from16 v18, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    const/16 v20, -0x1

    move/from16 v12, p3

    const/16 v8, 0x1b

    if-ne v0, v8, :cond_19

    const/4 v8, 0x2

    if-ne v9, v8, :cond_18

    invoke-virtual {v14, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lysi;

    invoke-interface {v0}, Lysi;->zzc()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0xa

    goto :goto_12

    :cond_16
    add-int/2addr v1, v1

    :goto_12
    invoke-interface {v0, v1}, Lysi;->e(I)Lysi;

    move-result-object v0

    invoke-virtual {v14, v7, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_17
    move-object v13, v0

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    move-object/from16 v1, p6

    move v2, v8

    move-object v8, v0

    move v9, v12

    move v0, v10

    move-object/from16 v10, p2

    move/from16 v19, v11

    move v11, v3

    move v4, v12

    move/from16 v12, p4

    move v3, v2

    move-object v2, v14

    move/from16 v5, v18

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lnri;->e(Lcui;I[BIILysi;Lmri;)I

    move-result v8

    move v10, v0

    move-object v14, v2

    move/from16 v18, v4

    move v9, v5

    move/from16 v11, v19

    move/from16 v13, v20

    const/4 v0, 0x1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v1

    goto/16 :goto_9

    :cond_18
    move/from16 v19, v11

    move-object v2, v14

    move-object/from16 v14, p6

    move-object v11, v2

    move v1, v3

    move v0, v8

    move v2, v12

    move/from16 v3, v18

    move/from16 v8, p4

    move v12, v10

    goto/16 :goto_33

    :cond_19
    move/from16 v19, v11

    move-object/from16 v21, v13

    move-object v11, v14

    move/from16 v8, v18

    move v14, v10

    move v10, v12

    move-object/from16 v12, p6

    const/16 v13, 0x31

    move-object/from16 v26, v1

    const-string v1, "Protocol message had invalid UTF-8."

    const/16 v22, 0x0

    if-gt v0, v13, :cond_55

    move-object/from16 p3, v1

    move-object/from16 v27, v2

    move/from16 v13, v23

    int-to-long v1, v13

    invoke-virtual {v11, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lysi;

    invoke-interface {v13}, Lysi;->zzc()Z

    move-result v21

    if-nez v21, :cond_1a

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    move-wide/from16 v28, v1

    add-int v1, v21, v21

    invoke-interface {v13, v1}, Lysi;->e(I)Lysi;

    move-result-object v1

    invoke-virtual {v11, v7, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v1

    goto :goto_13

    :cond_1a
    move-wide/from16 v28, v1

    :goto_13
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v0, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v9, v5, :cond_1d

    and-int/lit8 v0, v10, -0x8

    or-int/lit8 v9, v0, 0x4

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move v2, v3

    move v4, v3

    move/from16 v3, p4

    move v7, v4

    move v4, v9

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->c(Lcui;[BIIILmri;)I

    move-result v0

    iget-object v1, v12, Lmri;->c:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p4

    :goto_14
    if-ge v0, v5, :cond_1b

    invoke-static {v15, v0, v12}, Lnri;->h([BILmri;)I

    move-result v2

    iget v1, v12, Lmri;->a:I

    if-ne v10, v1, :cond_1b

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v4, v9

    move-object/from16 v23, v11

    move v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->c(Lcui;[BIIILmri;)I

    move-result v0

    iget-object v1, v12, Lmri;->c:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v11

    move-object/from16 v11, v23

    goto :goto_14

    :cond_1b
    move-object/from16 v23, v11

    move v11, v5

    :cond_1c
    :goto_15
    move v3, v8

    :goto_16
    move v8, v11

    move-object/from16 v11, v23

    const/4 v6, 0x1

    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    goto/16 :goto_31

    :cond_1d
    move v7, v3

    move v3, v8

    const/4 v6, 0x1

    move/from16 v8, p4

    :goto_17
    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    goto/16 :goto_30

    :pswitch_d
    move v7, v3

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move/from16 v11, p4

    if-ne v9, v0, :cond_20

    sget v0, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v12, Lmri;->a:I

    add-int/2addr v2, v0

    :goto_18
    if-ge v0, v2, :cond_1e

    invoke-static {v15, v0, v12}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v3, v12, Lmri;->b:J

    invoke-static {v3, v4}, Lvri;->d(J)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Leti;->i(J)V

    goto :goto_18

    :cond_1e
    if-ne v0, v2, :cond_1f

    goto :goto_15

    :cond_1f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-nez v9, :cond_21

    sget v0, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7, v12}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v1, v12, Lmri;->b:J

    invoke-static {v1, v2}, Lvri;->d(J)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Leti;->i(J)V

    :goto_19
    if-ge v0, v11, :cond_1c

    invoke-static {v15, v0, v12}, Lnri;->h([BILmri;)I

    move-result v1

    iget v2, v12, Lmri;->a:I

    if-ne v10, v2, :cond_1c

    invoke-static {v15, v1, v12}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v1, v12, Lmri;->b:J

    invoke-static {v1, v2}, Lvri;->d(J)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Leti;->i(J)V

    goto :goto_19

    :cond_21
    move v3, v8

    move v8, v11

    move-object/from16 v11, v23

    const/4 v6, 0x1

    goto :goto_17

    :pswitch_e
    move v7, v3

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move/from16 v11, p4

    if-ne v9, v0, :cond_24

    sget v0, Lnri;->a:I

    check-cast v13, Losi;

    invoke-static {v15, v7, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v12, Lmri;->a:I

    add-int/2addr v2, v0

    :goto_1a
    if-ge v0, v2, :cond_22

    invoke-static {v15, v0, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v3, v12, Lmri;->a:I

    invoke-static {v3}, Lvri;->c(I)I

    move-result v3

    invoke-virtual {v13, v3}, Losi;->zzi(I)V

    goto :goto_1a

    :cond_22
    if-ne v0, v2, :cond_23

    goto/16 :goto_15

    :cond_23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez v9, :cond_21

    sget v0, Lnri;->a:I

    check-cast v13, Losi;

    invoke-static {v15, v7, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v1, v12, Lmri;->a:I

    invoke-static {v1}, Lvri;->c(I)I

    move-result v1

    invoke-virtual {v13, v1}, Losi;->zzi(I)V

    :goto_1b
    if-ge v0, v11, :cond_1c

    invoke-static {v15, v0, v12}, Lnri;->h([BILmri;)I

    move-result v1

    iget v2, v12, Lmri;->a:I

    if-ne v10, v2, :cond_1c

    invoke-static {v15, v1, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v1, v12, Lmri;->a:I

    invoke-static {v1}, Lvri;->c(I)I

    move-result v1

    invoke-virtual {v13, v1}, Losi;->zzi(I)V

    goto :goto_1b

    :pswitch_f
    move v7, v3

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move/from16 v11, p4

    if-ne v9, v0, :cond_25

    invoke-static {v15, v7, v13, v12}, Lnri;->f([BILysi;Lmri;)I

    move-result v0

    :goto_1c
    move v9, v0

    goto :goto_1d

    :cond_25
    if-nez v9, :cond_21

    move v0, v10

    move-object/from16 v1, p2

    move v2, v7

    move/from16 v3, p4

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->j(I[BIILysi;Lmri;)I

    move-result v0

    goto :goto_1c

    :goto_1d
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    move-object/from16 v0, p1

    move v1, v8

    move-object v2, v13

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pa;->x(Ljava/lang/Object;ILjava/util/List;Lusi;Ljava/lang/Object;Lpui;)Ljava/lang/Object;

    move v3, v8

    move v0, v9

    goto/16 :goto_16

    :pswitch_10
    move v7, v3

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move/from16 v11, p4

    if-ne v9, v0, :cond_21

    invoke-static {v15, v7, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v12, Lmri;->a:I

    if-ltz v2, :cond_2b

    array-length v3, v15

    sub-int/2addr v3, v0

    if-gt v2, v3, :cond_2a

    if-nez v2, :cond_26

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_26
    invoke-static {v15, v0, v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/2addr v0, v2

    :goto_1f
    if-ge v0, v11, :cond_1c

    invoke-static {v15, v0, v12}, Lnri;->h([BILmri;)I

    move-result v2

    iget v3, v12, Lmri;->a:I

    if-ne v10, v3, :cond_1c

    invoke-static {v15, v2, v12}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v12, Lmri;->a:I

    if-ltz v2, :cond_29

    array-length v3, v15

    sub-int/2addr v3, v0

    if-gt v2, v3, :cond_28

    if-nez v2, :cond_27

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_27
    invoke-static {v15, v0, v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move-object/from16 v1, v27

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    move v7, v3

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move/from16 v11, p4

    if-ne v9, v0, :cond_21

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    move v5, v8

    move-object v8, v1

    move v9, v10

    move v4, v10

    move-object/from16 v10, p2

    move v3, v11

    move-object/from16 v2, v23

    move v11, v7

    move-object v1, v12

    move/from16 v12, p4

    move v6, v0

    move v0, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lnri;->e(Lcui;I[BIILysi;Lmri;)I

    move-result v8

    move v12, v0

    move-object v14, v1

    :goto_20
    move-object v11, v2

    move v10, v4

    move v0, v8

    const/4 v6, 0x1

    move v8, v3

    :goto_21
    move v3, v5

    goto/16 :goto_31

    :pswitch_12
    move v7, v3

    move v5, v8

    move v4, v10

    move-object v2, v11

    move v0, v14

    move-object/from16 v1, v27

    const/4 v6, 0x2

    move/from16 v3, p4

    move-object v14, v12

    if-ne v9, v6, :cond_38

    const-wide/32 v8, 0x20000000

    and-long v8, v28, v8

    cmp-long v8, v8, v24

    if-nez v8, :cond_31

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v8

    iget v9, v14, Lmri;->a:I

    if-ltz v9, :cond_30

    if-nez v9, :cond_2c

    move-object/from16 v10, v26

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2c
    move-object/from16 v10, v26

    new-instance v11, Ljava/lang/String;

    sget-object v12, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v8, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v8, v9

    :goto_23
    if-ge v8, v3, :cond_2f

    invoke-static {v15, v8, v14}, Lnri;->h([BILmri;)I

    move-result v9

    iget v11, v14, Lmri;->a:I

    if-ne v4, v11, :cond_2f

    invoke-static {v15, v9, v14}, Lnri;->h([BILmri;)I

    move-result v8

    iget v9, v14, Lmri;->a:I

    if-ltz v9, :cond_2e

    if-nez v9, :cond_2d

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2d
    new-instance v11, Ljava/lang/String;

    sget-object v12, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v8, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move v12, v0

    goto :goto_20

    :cond_30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v10, v26

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v8

    iget v9, v14, Lmri;->a:I

    if-ltz v9, :cond_37

    if-nez v9, :cond_32

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    add-int v11, v8, v9

    invoke-static {v15, v8, v11}, Lcom/google/android/gms/internal/ads/ra;->i([BII)Z

    move-result v12

    if-eqz v12, :cond_36

    new-instance v12, Ljava/lang/String;

    sget-object v6, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v12, v15, v8, v9, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v11

    :goto_24
    if-ge v8, v3, :cond_2f

    invoke-static {v15, v8, v14}, Lnri;->h([BILmri;)I

    move-result v6

    iget v9, v14, Lmri;->a:I

    if-ne v4, v9, :cond_2f

    invoke-static {v15, v6, v14}, Lnri;->h([BILmri;)I

    move-result v8

    iget v6, v14, Lmri;->a:I

    if-ltz v6, :cond_35

    if-nez v6, :cond_33

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_33
    add-int v9, v8, v6

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/ra;->i([BII)Z

    move-result v11

    if-eqz v11, :cond_34

    new-instance v11, Ljava/lang/String;

    sget-object v12, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v8, v6, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v9

    goto :goto_24

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 v1, p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_25
    move v12, v0

    move-object v11, v2

    move v8, v3

    move v10, v4

    move v3, v5

    const/4 v6, 0x1

    goto/16 :goto_30

    :pswitch_13
    move v7, v3

    move v5, v8

    move v4, v10

    move-object v2, v11

    move v0, v14

    const/4 v6, 0x2

    move/from16 v3, p4

    move-object v14, v12

    if-ne v9, v6, :cond_3b

    sget v6, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v6

    iget v8, v14, Lmri;->a:I

    add-int/2addr v8, v6

    if-lt v6, v8, :cond_3a

    if-ne v6, v8, :cond_39

    :goto_26
    move v12, v0

    move-object v11, v2

    move v8, v3

    move v10, v4

    move v3, v5

    move v0, v6

    :goto_27
    const/4 v6, 0x1

    goto/16 :goto_31

    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-static {v15, v6, v14}, Lnri;->k([BILmri;)I

    throw v22

    :cond_3b
    if-eqz v9, :cond_3c

    goto :goto_25

    :cond_3c
    sget v0, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7, v14}, Lnri;->k([BILmri;)I

    iget-wide v0, v14, Lmri;->b:J

    throw v22

    :pswitch_14
    move v7, v3

    move v5, v8

    move v4, v10

    move-object v2, v11

    move v0, v14

    const/4 v6, 0x2

    move/from16 v3, p4

    move-object v14, v12

    if-ne v9, v6, :cond_40

    sget v6, Lnri;->a:I

    check-cast v13, Losi;

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v6

    iget v8, v14, Lmri;->a:I

    add-int v9, v6, v8

    array-length v10, v15

    if-gt v9, v10, :cond_3f

    invoke-virtual {v13}, Losi;->size()I

    move-result v10

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v10, v8

    invoke-virtual {v13, v10}, Losi;->j(I)V

    :goto_28
    if-ge v6, v9, :cond_3d

    invoke-static {v15, v6}, Lnri;->b([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Losi;->zzi(I)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_28

    :cond_3d
    if-ne v6, v9, :cond_3e

    :goto_29
    goto :goto_26

    :cond_3e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    const/4 v1, 0x5

    if-ne v9, v1, :cond_38

    add-int/lit8 v1, v7, 0x4

    sget v6, Lnri;->a:I

    check-cast v13, Losi;

    invoke-static {v15, v7}, Lnri;->b([BI)I

    move-result v6

    invoke-virtual {v13, v6}, Losi;->zzi(I)V

    :goto_2a
    if-ge v1, v3, :cond_41

    invoke-static {v15, v1, v14}, Lnri;->h([BILmri;)I

    move-result v6

    iget v8, v14, Lmri;->a:I

    if-ne v4, v8, :cond_41

    invoke-static {v15, v6}, Lnri;->b([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Losi;->zzi(I)V

    add-int/lit8 v1, v6, 0x4

    goto :goto_2a

    :cond_41
    move v12, v0

    move v0, v1

    move-object v11, v2

    move v8, v3

    move v10, v4

    move v3, v5

    goto/16 :goto_27

    :pswitch_15
    move v7, v3

    move v5, v8

    move v4, v10

    move-object v2, v11

    move v0, v14

    const/4 v6, 0x2

    move/from16 v3, p4

    move-object v14, v12

    if-ne v9, v6, :cond_45

    sget v6, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v6

    iget v8, v14, Lmri;->a:I

    add-int v9, v6, v8

    array-length v10, v15

    if-gt v9, v10, :cond_44

    invoke-virtual {v13}, Leti;->size()I

    move-result v10

    div-int/lit8 v8, v8, 0x8

    add-int/2addr v10, v8

    invoke-virtual {v13, v10}, Leti;->zzi(I)V

    :goto_2b
    if-ge v6, v9, :cond_42

    invoke-static {v15, v6}, Lnri;->n([BI)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Leti;->i(J)V

    add-int/lit8 v6, v6, 0x8

    goto :goto_2b

    :cond_42
    if-ne v6, v9, :cond_43

    goto :goto_29

    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/4 v6, 0x1

    if-ne v9, v6, :cond_47

    add-int/lit8 v1, v7, 0x8

    sget v8, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7}, Lnri;->n([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Leti;->i(J)V

    :goto_2c
    if-ge v1, v3, :cond_46

    invoke-static {v15, v1, v14}, Lnri;->h([BILmri;)I

    move-result v8

    iget v9, v14, Lmri;->a:I

    if-ne v4, v9, :cond_46

    invoke-static {v15, v8}, Lnri;->n([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Leti;->i(J)V

    add-int/lit8 v1, v8, 0x8

    goto :goto_2c

    :cond_46
    :goto_2d
    move v12, v0

    move v0, v1

    move-object v11, v2

    move v8, v3

    move v10, v4

    goto/16 :goto_21

    :cond_47
    move v12, v0

    move-object v11, v2

    move v8, v3

    move v10, v4

    move v3, v5

    goto/16 :goto_30

    :pswitch_16
    move v7, v3

    move v5, v8

    move v4, v10

    move-object v2, v11

    move v0, v14

    const/4 v1, 0x2

    const/4 v6, 0x1

    move/from16 v3, p4

    move-object v14, v12

    if-ne v9, v1, :cond_48

    invoke-static {v15, v7, v13, v14}, Lnri;->f([BILysi;Lmri;)I

    move-result v1

    goto :goto_2d

    :cond_48
    if-nez v9, :cond_47

    move v12, v0

    move v0, v4

    move-object/from16 v1, p2

    move-object v11, v2

    move v2, v7

    move v8, v3

    move/from16 v3, p4

    move v10, v4

    move-object v4, v13

    move v9, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->j(I[BIILysi;Lmri;)I

    move-result v0

    move v3, v9

    goto/16 :goto_31

    :pswitch_17
    move v7, v3

    move v3, v8

    const/4 v0, 0x2

    const/4 v6, 0x1

    move/from16 v8, p4

    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    if-ne v9, v0, :cond_4b

    sget v0, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v14, Lmri;->a:I

    add-int/2addr v2, v0

    :goto_2e
    if-ge v0, v2, :cond_49

    invoke-static {v15, v0, v14}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v4, v14, Lmri;->b:J

    invoke-virtual {v13, v4, v5}, Leti;->i(J)V

    goto :goto_2e

    :cond_49
    if-ne v0, v2, :cond_4a

    goto/16 :goto_31

    :cond_4a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    if-nez v9, :cond_51

    sget v0, Lnri;->a:I

    check-cast v13, Leti;

    invoke-static {v15, v7, v14}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v1, v14, Lmri;->b:J

    invoke-virtual {v13, v1, v2}, Leti;->i(J)V

    :goto_2f
    if-ge v0, v8, :cond_52

    invoke-static {v15, v0, v14}, Lnri;->h([BILmri;)I

    move-result v1

    iget v2, v14, Lmri;->a:I

    if-ne v10, v2, :cond_52

    invoke-static {v15, v1, v14}, Lnri;->k([BILmri;)I

    move-result v0

    iget-wide v1, v14, Lmri;->b:J

    invoke-virtual {v13, v1, v2}, Leti;->i(J)V

    goto :goto_2f

    :pswitch_18
    move v7, v3

    move v3, v8

    const/4 v0, 0x2

    const/4 v6, 0x1

    move/from16 v8, p4

    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    if-ne v9, v0, :cond_4d

    sget v0, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v14, Lmri;->a:I

    add-int/2addr v0, v2

    array-length v2, v15

    if-le v0, v2, :cond_4c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    throw v22

    :cond_4d
    const/4 v0, 0x5

    if-eq v9, v0, :cond_4e

    goto :goto_30

    :cond_4e
    sget v0, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7}, Lnri;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v22

    :pswitch_19
    move v7, v3

    move v3, v8

    const/4 v0, 0x2

    const/4 v6, 0x1

    move/from16 v8, p4

    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    if-ne v9, v0, :cond_50

    sget v0, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7, v14}, Lnri;->h([BILmri;)I

    move-result v0

    iget v2, v14, Lmri;->a:I

    add-int/2addr v0, v2

    array-length v2, v15

    if-le v0, v2, :cond_4f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    throw v22

    :cond_50
    if-eq v9, v6, :cond_54

    :cond_51
    :goto_30
    move v0, v7

    :cond_52
    :goto_31
    if-eq v0, v7, :cond_53

    move-object/from16 v7, p1

    move/from16 v5, p5

    move v9, v3

    move v4, v8

    move/from16 v18, v10

    move v10, v12

    move-object v2, v14

    move/from16 v13, v20

    const/4 v1, 0x3

    move v8, v0

    move v0, v6

    move-object v14, v11

    move/from16 v11, v19

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_53
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p5

    move v2, v0

    move v0, v10

    move v10, v12

    const/16 v21, 0x3

    :goto_32
    move-object v12, v11

    move v11, v3

    move-object v3, v14

    goto/16 :goto_3d

    :cond_54
    sget v0, Lnri;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v15, v7}, Lnri;->n([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v22

    :cond_55
    move v7, v3

    move v3, v8

    move v2, v10

    move/from16 v13, v23

    move-object/from16 v10, v26

    move/from16 v8, p4

    move/from16 v30, v14

    move-object v14, v12

    move/from16 v12, v30

    const/16 v6, 0x32

    if-ne v0, v6, :cond_58

    const/4 v6, 0x2

    if-ne v9, v6, :cond_57

    move-object/from16 v6, p0

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v7, p1

    invoke-virtual {v11, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmti;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zza()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgza;->zzb()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v2

    invoke-static {v2, v1}, Lmti;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_56
    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    throw v22

    :cond_57
    move v0, v6

    move v1, v7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    :goto_33
    move/from16 v9, p5

    move v0, v2

    move v10, v12

    const/16 v21, 0x3

    move v2, v1

    goto :goto_32

    :cond_58
    move-object/from16 v6, p0

    move-object/from16 v18, v1

    move/from16 p3, v7

    const/4 v1, 0x2

    move-object/from16 v7, p1

    add-int/lit8 v22, v12, 0x2

    aget v21, v21, v22

    const v1, 0xfffff

    and-int v8, v21, v1

    move/from16 v21, v2

    int-to-long v1, v8

    packed-switch v0, :pswitch_data_2

    move/from16 v18, v12

    move/from16 v0, v21

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    goto/16 :goto_3a

    :pswitch_1a
    const/4 v0, 0x3

    if-ne v9, v0, :cond_59

    and-int/lit8 v1, v21, -0x8

    or-int/lit8 v13, v1, 0x4

    invoke-virtual {v6, v7, v3, v12}, Lcom/google/android/gms/internal/ads/ka;->i(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v9

    move/from16 v2, p4

    move-object v8, v1

    move-object/from16 v10, p2

    move-object v4, v11

    move/from16 v11, p3

    move v5, v12

    move/from16 v12, p4

    move-object v0, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lnri;->l(Ljava/lang/Object;Lcui;[BIIILmri;)I

    move-result v8

    invoke-virtual {v6, v7, v3, v5, v1}, Lcom/google/android/gms/internal/ads/ka;->r(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v14, p3

    move v11, v3

    move-object v12, v4

    move/from16 v18, v5

    :goto_34
    move-object v3, v0

    move/from16 v0, v21

    const/16 v21, 0x3

    goto/16 :goto_3b

    :cond_59
    move/from16 v2, p4

    move/from16 v18, v12

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    move/from16 v30, v21

    move/from16 v21, v0

    move/from16 v0, v30

    goto/16 :goto_3a

    :pswitch_1b
    move v8, v12

    move-object v0, v14

    move-object v12, v11

    move/from16 v11, p4

    if-nez v9, :cond_5a

    move/from16 v14, p3

    invoke-static {v15, v14, v0}, Lnri;->k([BILmri;)I

    move-result v9

    move/from16 p3, v9

    iget-wide v9, v0, Lmri;->b:J

    invoke-static {v9, v10}, Lvri;->d(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v11, v3

    move/from16 v18, v8

    move/from16 v8, p3

    goto :goto_34

    :cond_5a
    move/from16 v14, p3

    :cond_5b
    move v11, v3

    move/from16 v18, v8

    move-object v3, v0

    move/from16 v0, v21

    const/16 v21, 0x3

    goto/16 :goto_3a

    :pswitch_1c
    move v8, v12

    move-object v0, v14

    move/from16 v14, p3

    move-object v12, v11

    move/from16 v11, p4

    if-nez v9, :cond_5b

    invoke-static {v15, v14, v0}, Lnri;->h([BILmri;)I

    move-result v9

    iget v10, v0, Lmri;->a:I

    invoke-static {v10}, Lvri;->c(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v7, v4, v5, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v11, v3

    move/from16 v18, v8

    move v8, v9

    goto :goto_34

    :pswitch_1d
    move v8, v12

    move-object v0, v14

    move/from16 v14, p3

    move-object v12, v11

    move/from16 v11, p4

    if-nez v9, :cond_5b

    invoke-static {v15, v14, v0}, Lnri;->h([BILmri;)I

    move-result v9

    iget v10, v0, Lmri;->a:I

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v13

    if-eqz v13, :cond_5c

    invoke-interface {v13, v10}, Lusi;->zza(I)Z

    move-result v13

    if-eqz v13, :cond_5d

    :cond_5c
    move/from16 v13, v21

    goto :goto_35

    :cond_5d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ka;->C(Ljava/lang/Object;)Lqui;

    move-result-object v1

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v13, v21

    invoke-virtual {v1, v13, v2}, Lqui;->j(ILjava/lang/Object;)V

    goto :goto_36

    :goto_35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v7, v4, v5, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_36
    move v11, v3

    move/from16 v18, v8

    move v8, v9

    const/16 v21, 0x3

    move-object v3, v0

    move v0, v13

    goto/16 :goto_3b

    :pswitch_1e
    move v8, v12

    move-object v0, v14

    move/from16 v13, v21

    const/4 v10, 0x2

    move/from16 v14, p3

    move-object v12, v11

    move/from16 v11, p4

    if-ne v9, v10, :cond_5e

    invoke-static {v15, v14, v0}, Lnri;->a([BILmri;)I

    move-result v9

    iget-object v10, v0, Lmri;->c:Ljava/lang/Object;

    invoke-virtual {v12, v7, v4, v5, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_36

    :cond_5e
    move v11, v3

    move/from16 v18, v8

    const/16 v21, 0x3

    move-object v3, v0

    move v0, v13

    goto/16 :goto_3a

    :pswitch_1f
    move v8, v12

    move-object v0, v14

    move/from16 v13, v21

    const/4 v1, 0x2

    move/from16 v14, p3

    move-object v12, v11

    move/from16 v11, p4

    if-ne v9, v1, :cond_5f

    invoke-virtual {v6, v7, v3, v8}, Lcom/google/android/gms/internal/ads/ka;->i(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    move-object v10, v0

    const/16 v21, 0x3

    move-object v0, v9

    move v4, v1

    const v5, 0xfffff

    move-object v1, v2

    move-object/from16 v2, p2

    move v11, v3

    move v3, v14

    move/from16 p3, v13

    move v13, v4

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->m(Ljava/lang/Object;Lcui;[BIILmri;)I

    move-result v0

    invoke-virtual {v6, v7, v11, v8, v9}, Lcom/google/android/gms/internal/ads/ka;->r(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v18, v8

    move-object v3, v10

    move v8, v0

    move/from16 v0, p3

    goto/16 :goto_3b

    :cond_5f
    move v11, v3

    move/from16 p3, v13

    const/16 v21, 0x3

    move-object v3, v0

    move/from16 v18, v8

    move/from16 v0, p3

    goto/16 :goto_3a

    :pswitch_20
    move v8, v12

    move/from16 v22, v13

    move/from16 v0, v21

    const/4 v13, 0x2

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-ne v9, v13, :cond_63

    invoke-static {v15, v14, v3}, Lnri;->h([BILmri;)I

    move-result v9

    iget v13, v3, Lmri;->a:I

    if-nez v13, :cond_60

    invoke-virtual {v12, v7, v4, v5, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v18, v8

    goto :goto_38

    :cond_60
    add-int v10, v9, v13

    const/high16 v24, 0x20000000

    and-int v22, v22, v24

    if-eqz v22, :cond_61

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ra;->i([BII)Z

    move-result v22

    if-eqz v22, :cond_62

    :cond_61
    move/from16 v18, v8

    goto :goto_37

    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_37
    new-instance v8, Ljava/lang/String;

    move/from16 p3, v10

    sget-object v10, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v15, v9, v13, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v7, v4, v5, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v9, p3

    :goto_38
    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v8, v9

    goto/16 :goto_3b

    :cond_63
    move/from16 v18, v8

    goto/16 :goto_3a

    :pswitch_21
    move/from16 v18, v12

    move/from16 v0, v21

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-nez v9, :cond_65

    invoke-static {v15, v14, v3}, Lnri;->k([BILmri;)I

    move-result v8

    iget-wide v9, v3, Lmri;->b:J

    cmp-long v9, v9, v24

    if-eqz v9, :cond_64

    const/4 v9, 0x1

    goto :goto_39

    :cond_64
    move/from16 v9, v16

    :goto_39
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_22
    move/from16 v18, v12

    move/from16 v0, v21

    const/4 v8, 0x5

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-ne v9, v8, :cond_65

    add-int/lit8 v8, v14, 0x4

    invoke-static {v15, v14}, Lnri;->b([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_23
    move/from16 v18, v12

    move/from16 v0, v21

    const/4 v8, 0x1

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-ne v9, v8, :cond_65

    add-int/lit8 v8, v14, 0x8

    invoke-static {v15, v14}, Lnri;->n([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_24
    move/from16 v18, v12

    move/from16 v0, v21

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-nez v9, :cond_65

    invoke-static {v15, v14, v3}, Lnri;->h([BILmri;)I

    move-result v8

    iget v9, v3, Lmri;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_25
    move/from16 v18, v12

    move/from16 v0, v21

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-nez v9, :cond_65

    invoke-static {v15, v14, v3}, Lnri;->k([BILmri;)I

    move-result v8

    iget-wide v9, v3, Lmri;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_26
    move/from16 v18, v12

    move/from16 v0, v21

    const/4 v8, 0x5

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-ne v9, v8, :cond_65

    add-int/lit8 v8, v14, 0x4

    invoke-static {v15, v14}, Lnri;->b([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_27
    move/from16 v18, v12

    move/from16 v0, v21

    const/4 v8, 0x1

    const/16 v21, 0x3

    move-object v12, v11

    move v11, v3

    move-object v3, v14

    move/from16 v14, p3

    if-ne v9, v8, :cond_65

    add-int/lit8 v8, v14, 0x8

    invoke-static {v15, v14}, Lnri;->n([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v12, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :cond_65
    :goto_3a
    move v8, v14

    :goto_3b
    if-eq v8, v14, :cond_66

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v3

    move v9, v11

    move-object v14, v12

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v13, v20

    move/from16 v1, v21

    move/from16 v18, v0

    :goto_3c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_66
    move/from16 v9, p5

    move v2, v8

    move/from16 v10, v18

    :goto_3d
    if-ne v0, v9, :cond_67

    if-eqz v9, :cond_67

    move v10, v0

    move v8, v2

    move/from16 v0, v17

    move/from16 v11, v19

    :goto_3e
    const v1, 0xfffff

    goto :goto_40

    :cond_67
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-eqz v1, :cond_68

    iget-object v1, v3, Lmri;->d:Lesi;

    sget-object v4, Lesi;->b:Lesi;

    sget-object v4, Lxti;->c:Lxti;

    sget-object v4, Lesi;->c:Lesi;

    if-eq v1, v4, :cond_68

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/ka;->e:Lrti;

    sget v5, Lnri;->a:I

    invoke-virtual {v1, v4, v11}, Lesi;->c(Lrti;I)Lnsi;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ka;->C(Ljava/lang/Object;)Lqui;

    move-result-object v4

    move v8, v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->g(I[BIILqui;Lmri;)I

    move-result v0

    goto :goto_3f

    :cond_68
    move v8, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ka;->C(Ljava/lang/Object;)Lqui;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnri;->g(I[BIILqui;Lmri;)I

    move-result v0

    :goto_3f
    move/from16 v4, p4

    move-object/from16 v2, p6

    move/from16 v18, v8

    move v5, v9

    move v9, v11

    move-object v14, v12

    move/from16 v11, v19

    move/from16 v13, v20

    move/from16 v1, v21

    move v8, v0

    goto :goto_3c

    :cond_69
    move v9, v5

    move/from16 v19, v11

    move-object v12, v14

    move/from16 v0, v17

    move/from16 v10, v18

    goto :goto_3e

    :goto_40
    if-eq v11, v1, :cond_6a

    int-to-long v1, v11

    invoke-virtual {v12, v7, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6a
    iget v0, v6, Lcom/google/android/gms/internal/ads/ka;->i:I

    move v11, v0

    :goto_41
    iget v0, v6, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge v11, v0, :cond_6b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/ka;->h:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    aget v2, v0, v11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    add-int/2addr v11, v0

    goto :goto_41

    :cond_6b
    const-string v0, "Failed to parse the message."

    if-nez v9, :cond_6d

    move/from16 v1, p4

    if-ne v8, v1, :cond_6c

    goto :goto_42

    :cond_6c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6d
    move/from16 v1, p4

    if-gt v8, v1, :cond_6e

    if-ne v10, v9, :cond_6e

    :goto_42
    return v8

    :cond_6e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final H(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ka;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ka;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->J(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final I(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public final J(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final L(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public final N(I)Lusi;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->b:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lusi;

    return-object p0
.end method

.method public final O(I)Lcui;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, p0, p1

    check-cast v0, Lcui;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v1

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    aget p4, p4, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result p4

    const p5, 0xfffff

    and-int/2addr p4, p5

    int-to-long p4, p4

    invoke-static {p1, p4, p5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object p4

    if-nez p4, :cond_1

    :goto_0
    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgza;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Q(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->B()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->A()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->E()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgza;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgza;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lysi;

    invoke-interface {v2}, Lysi;->zzb()V

    goto :goto_1

    :cond_2
    aget v2, v0, v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcui;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcui;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    invoke-virtual {v0, p1}, Lpui;->i(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->l:Lfsi;

    invoke-virtual {p0, p1}, Lfsi;->a(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ka;->k(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->m(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->m(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-static {p1, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lmti;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lysi;

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lysi;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Lysi;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    invoke-interface {v1, v6}, Lysi;->e(I)Lysi;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {p1, v3, v4, v2}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->l(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->l(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->x(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->k(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lvui;->A(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lvui;->z(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->A(Lpui;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->l:Lfsi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->z(Lfsi;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lbvi;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/ka;->f:Z

    const/4 v9, 0x0

    if-nez v0, :cond_7

    iget-object v10, v6, Lcom/google/android/gms/internal/ads/ka;->a:[I

    sget-object v11, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    const v12, 0xfffff

    move v0, v12

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v2, v10

    if-ge v14, v2, :cond_6

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v3

    aget v15, v10, v14

    const/16 v4, 0x11

    const/4 v5, 0x1

    if-gt v3, v4, :cond_2

    add-int/lit8 v4, v14, 0x2

    aget v4, v10, v4

    and-int v13, v4, v12

    if-eq v13, v0, :cond_1

    if-ne v13, v12, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v13

    invoke-virtual {v11, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v5, v4

    move v13, v0

    move/from16 v16, v1

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    move v13, v0

    move/from16 v16, v1

    const/16 v17, 0x0

    :goto_2
    and-int v0, v2, v12

    int-to-long v1, v0

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_3
    move-object/from16 v18, v10

    const/16 v19, 0x0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lbvi;->H(ILjava/lang/Object;Lcui;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->u(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->w(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->J(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->G(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->h(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->y(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {v8, v15, v0}, Lbvi;->v(ILcom/google/android/gms/internal/ads/zzgwn;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lbvi;->F(ILjava/lang/Object;Lcui;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/ads/ka;->A(ILjava/lang/Object;Lbvi;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->z(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->c(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->f(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->l(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->b(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->D(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->n(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->F(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->j(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ka;->E(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->e(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    throw v9

    :pswitch_13
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/pa;->I(ILjava/util/List;Lbvi;Lcui;)V

    goto/16 :goto_3

    :pswitch_14
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->f(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_15
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->e(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_16
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->d(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_17
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->c(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_18
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->E(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_19
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->h(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1a
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->B(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1b
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->F(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1c
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->G(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1d
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->J(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1e
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->i(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_1f
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->a(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_20
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->H(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_21
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->D(ILjava/util/List;Lbvi;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->f(ILjava/util/List;Lbvi;Z)V

    :goto_4
    move/from16 v19, v3

    :goto_5
    move-object/from16 v18, v10

    goto/16 :goto_7

    :pswitch_23
    const/4 v3, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->e(ILjava/util/List;Lbvi;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v3, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->d(ILjava/util/List;Lbvi;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v3, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->c(ILjava/util/List;Lbvi;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v3, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->E(ILjava/util/List;Lbvi;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v3, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/ads/pa;->h(ILjava/util/List;Lbvi;Z)V

    goto :goto_4

    :pswitch_28
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/pa;->C(ILjava/util/List;Lbvi;)V

    goto/16 :goto_3

    :pswitch_29
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/pa;->b(ILjava/util/List;Lbvi;Lcui;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/pa;->g(ILjava/util/List;Lbvi;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->B(ILjava/util/List;Lbvi;Z)V

    :goto_6
    move/from16 v19, v5

    goto :goto_5

    :pswitch_2c
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->F(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_2d
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->G(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_2e
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->J(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_2f
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->i(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_30
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->a(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_31
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->H(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_32
    const/4 v5, 0x0

    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/ads/pa;->D(ILjava/util/List;Lbvi;Z)V

    goto :goto_6

    :pswitch_33
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v18, v10

    move-wide v9, v3

    move v3, v13

    move/from16 v4, v16

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lbvi;->H(ILjava/lang/Object;Lcui;)V

    goto/16 :goto_7

    :pswitch_34
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->u(IJ)V

    goto/16 :goto_7

    :pswitch_35
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->w(II)V

    goto/16 :goto_7

    :pswitch_36
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->J(IJ)V

    goto/16 :goto_7

    :pswitch_37
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->G(II)V

    goto/16 :goto_7

    :pswitch_38
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->h(II)V

    goto/16 :goto_7

    :pswitch_39
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->y(II)V

    goto/16 :goto_7

    :pswitch_3a
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {v8, v15, v0}, Lbvi;->v(ILcom/google/android/gms/internal/ads/zzgwn;)V

    goto/16 :goto_7

    :pswitch_3b
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lbvi;->F(ILjava/lang/Object;Lcui;)V

    goto/16 :goto_7

    :pswitch_3c
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/ads/ka;->A(ILjava/lang/Object;Lbvi;)V

    goto/16 :goto_7

    :pswitch_3d
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->c(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->f(II)V

    goto/16 :goto_7

    :pswitch_3f
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->l(IJ)V

    goto/16 :goto_7

    :pswitch_40
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->b(II)V

    goto/16 :goto_7

    :pswitch_41
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->D(IJ)V

    goto/16 :goto_7

    :pswitch_42
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->n(IJ)V

    goto :goto_7

    :pswitch_43
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lvui;->k(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v15, v0}, Lbvi;->j(IF)V

    goto :goto_7

    :pswitch_44
    move-object/from16 v18, v10

    const/16 v19, 0x0

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lbvi;->e(ID)V

    :cond_5
    :goto_7
    add-int/lit8 v14, v14, 0x3

    move v0, v13

    move/from16 v1, v16

    move-object/from16 v10, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0, v8}, Lqui;->k(Lbvi;)V

    return-void

    :cond_7
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;[BIILmri;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ka;->B(Ljava/lang/Object;[BIIILmri;)I

    return-void
.end method

.method public final e(Ljava/lang/Object;Laui;Lesi;)V
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ka;->k(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ka;->k:Lpui;

    const/4 v7, 0x0

    move-object v8, v7

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Laui;->zzc()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->H(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-gez v0, :cond_4

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge p2, p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->e:Lrti;

    invoke-virtual {p3, v0, v1}, Lesi;->c(Lrti;I)Lnsi;

    :goto_2
    if-nez v8, :cond_3

    invoke-virtual {v6, p1}, Lpui;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_3
    invoke-virtual {v6, v8, p2, v9}, Lpui;->k(Ljava/lang/Object;Laui;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge p2, p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_9

    :cond_4
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v3

    const v4, 0xfffff

    packed-switch v3, :pswitch_data_0

    if-nez v8, :cond_5

    invoke-virtual {v6, p1}, Lpui;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_5
    invoke-virtual {v6, v8, p2, v9}, Lpui;->k(Ljava/lang/Object;Laui;I)Z

    move-result v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzgyj; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    :goto_4
    iget p3, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge p2, p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :pswitch_0
    :try_start_4
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->i(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrti;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v3

    invoke-interface {p2, v2, v3, p3}, Laui;->l(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/ka;->r(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzm()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2}, Laui;->zze()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5, v3}, Lusi;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/pa;->y(Ljava/lang/Object;IILjava/lang/Object;Lpui;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    :goto_5
    and-int/2addr v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzj()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzp()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->i(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrti;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v3

    invoke-interface {p2, v2, v3, p3}, Laui;->q(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/ka;->r(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/ka;->n(Ljava/lang/Object;ILaui;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zzb()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v2, v4

    invoke-interface {p2}, Laui;->zza()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v0

    and-int/2addr v0, v4

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lmti;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zza()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgza;->zzb()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v4

    invoke-static {v4, v0}, Lmti;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v4

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zza()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgza;->zzb()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v0

    invoke-static {p1, v2, v3, v0}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    :goto_6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgza;

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    throw v7

    :pswitch_13
    and-int v1, v2, v4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1, v0, p3}, Laui;->e(Ljava/util/List;Lcui;Lesi;)V

    goto/16 :goto_0

    :pswitch_14
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Laui;->a(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pa;->x(Ljava/lang/Object;ILjava/util/List;Lusi;Ljava/lang/Object;Lpui;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_19
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->k(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->f(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->r(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->h(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->m(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->s(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Laui;->a(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pa;->x(Ljava/lang/Object;ILjava/util/List;Lusi;Ljava/lang/Object;Lpui;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_27
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->k(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    and-int v1, v2, v4

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1, v0, p3}, Laui;->d(Ljava/util/List;Lcui;Lesi;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->t(I)Z

    move-result v0

    if-eqz v0, :cond_a

    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lwri;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lwri;->t(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_a
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lwri;

    invoke-virtual {v1, v0, v9}, Lwri;->t(Ljava/util/List;Z)V

    goto/16 :goto_0

    :pswitch_2b
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->f(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->r(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->h(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->m(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->s(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcti;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Laui;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrti;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    invoke-interface {p2, v1, v2, p3}, Laui;->l(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ka;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzn()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzi()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzm()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzh()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_38
    invoke-interface {p2}, Laui;->zze()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->N(I)Lusi;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {v5, v3}, Lusi;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/pa;->y(Ljava/lang/Object;IILjava/lang/Object;Lpui;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    :goto_7
    and-int v1, v2, v4

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v3}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzj()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzp()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrti;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v2

    invoke-interface {p2, v1, v2, p3}, Laui;->q(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ka;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/ka;->n(Ljava/lang/Object;ILaui;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzN()Z

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->x(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzf()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzk()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzg()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->B(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzo()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzl()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->C(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zzb()F

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lvui;->A(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v2, v4

    invoke-interface {p2}, Laui;->zza()D

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lvui;->z(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzgyj; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    if-nez v8, :cond_d

    :try_start_5
    invoke-virtual {v6, p1}, Lpui;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_d
    invoke-virtual {v6, v8, p2, v9}, Lpui;->k(Ljava/lang/Object;Laui;I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    :goto_8
    iget p3, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge p2, p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v6, p1, v8}, Lpui;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-void

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/ka;->i:I

    :goto_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/ka;->j:I

    if-ge p3, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->h:[I

    aget v2, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->P(Ljava/lang/Object;ILjava/lang/Object;Lpui;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_10
    if-eqz v8, :cond_11

    invoke-virtual {v6, p1, v8}, Lpui;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ka;->I(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/pa;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->k(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lvui;->k(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ka;->s(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/ia;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    check-cast p2, Lcom/google/android/gms/internal/ads/ia;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/ads/ka;->i:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/ka;->h:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/ka;->a:[I

    aget v12, v2, v10

    aget v13, v4, v12

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v14

    add-int/lit8 v2, v12, 0x2

    aget v2, v4, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgza;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    throw v11

    :cond_6
    invoke-virtual {v6, v7, v13, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/ka;->w(Ljava/lang/Object;ILcui;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v14, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcui;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/ka;->w(Ljava/lang/Object;ILcui;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    throw v11
.end method

.method public final h(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, v1

    sget-object p0, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final i(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v1, p0

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    new-instance p1, Ljava/lang/IllegalStateException;

    aget p0, p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->x(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v2}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    aget p1, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(Ljava/lang/Object;ILaui;)V
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ka;->t(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Laui;->zzs()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, v2, p0}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ka;->g:Z

    if-eqz p0, :cond_1

    invoke-interface {p3}, Laui;->zzr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, v2, p0}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Laui;->zzp()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p0

    invoke-static {p1, v1, v2, p0}, Lvui;->D(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->I(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lvui;->B(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final p(Ljava/lang/Object;II)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->I(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lvui;->B(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final q(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ka;->o(Ljava/lang/Object;I)V

    return-void
.end method

.method public final r(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ka;->p(Ljava/lang/Object;II)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Ljava/lang/Object;I)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->I(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result p0

    and-int p2, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result p0

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-static {p1, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwn;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzgwn;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwn;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {p1, v0, v1}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lvui;->k(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p1, v2, v3}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ka;->u(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final y(Ljava/lang/Object;II)Z
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ka;->I(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lvui;->l(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gms/internal/ads/ka;->n:Lsun/misc/Unsafe;

    const v11, 0xfffff

    move v0, v11

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/ka;->a:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v12, v3, :cond_1c

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v5

    aget v14, v2, v12

    add-int/lit8 v15, v12, 0x2

    aget v2, v2, v15

    and-int v15, v2, v11

    const/16 v10, 0x11

    if-gt v5, v10, :cond_2

    if-eq v15, v0, :cond_1

    if-ne v15, v11, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v15

    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v15

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v8, v2

    move v10, v0

    move v15, v1

    move/from16 v16, v2

    goto :goto_2

    :cond_2
    move v10, v0

    move v15, v1

    const/16 v16, 0x0

    :goto_2
    and-int v0, v3, v11

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zzJ:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxl;->zza()I

    move-result v1

    if-lt v5, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zzW:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxl;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v5, :pswitch_data_0

    :goto_3
    goto :goto_5

    :pswitch_0
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrti;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->B(ILrti;Lcui;)I

    move-result v0

    :goto_4
    add-int/2addr v13, v0

    :cond_4
    :goto_5
    move/from16 v17, v12

    const/16 v19, 0x0

    goto/16 :goto_25

    :pswitch_1
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    goto :goto_4

    :pswitch_2
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    goto :goto_6

    :pswitch_3
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    :goto_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_4

    :pswitch_4
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    :goto_8
    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    :pswitch_5
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto :goto_6

    :pswitch_6
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    goto :goto_6

    :pswitch_7
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    :goto_9
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->r(ILjava/lang/Object;Lcui;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgwn;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_9

    :cond_5
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->d(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr v0, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_6

    :pswitch_10
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->Q(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgza;

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgza;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    throw v4

    :pswitch_13
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    :goto_a
    const/4 v4, 0x0

    goto :goto_c

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrti;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/ads/ha;->B(ILrti;Lcui;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_b

    :cond_8
    :goto_c
    add-int/2addr v13, v4

    goto/16 :goto_5

    :pswitch_14
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->t(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    :goto_d
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_e
    add-int/2addr v13, v1

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->s(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_d

    :pswitch_16
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->o(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_d

    :pswitch_17
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_d

    :pswitch_18
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_d

    :pswitch_19
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->u(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_d

    :pswitch_1a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_1b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_1c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->o(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_1d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->p(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_1e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->v(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_1f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->q(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_20
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_21
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->o(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_22
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->t(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    :goto_10
    mul-int/2addr v1, v2

    goto/16 :goto_6

    :pswitch_23
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_f

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->s(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_10

    :pswitch_24
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->n(ILjava/util/List;Z)I

    move-result v0

    :goto_11
    add-int/2addr v13, v0

    move/from16 v19, v1

    :goto_12
    move/from16 v17, v12

    goto/16 :goto_25

    :pswitch_25
    const/4 v1, 0x0

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->l(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_f

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->k(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_10

    :pswitch_27
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_f

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->u(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_10

    :pswitch_28
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v2, 0x0

    goto :goto_14

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v1, v8

    goto :goto_13

    :cond_e
    :goto_14
    add-int/2addr v13, v2

    goto/16 :goto_5

    :pswitch_29
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_a

    :cond_f
    shl-int/lit8 v3, v14, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v3

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrti;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/ha;->b(Lrti;Lcui;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_15

    :pswitch_2a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v3, 0x0

    goto :goto_1a

    :cond_10
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lbti;

    if-eqz v3, :cond_12

    check-cast v0, Lbti;

    move v3, v2

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_14

    invoke-interface {v0}, Lbti;->zzc()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgwn;

    if-eqz v5, :cond_11

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_17

    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ha;->d(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_17
    add-int/2addr v2, v8

    goto :goto_16

    :cond_12
    move v3, v2

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_14

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgwn;

    if-eqz v5, :cond_13

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_19

    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ha;->d(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_19
    add-int/2addr v2, v8

    goto :goto_18

    :cond_14
    :goto_1a
    add-int/2addr v13, v3

    goto/16 :goto_5

    :pswitch_2b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_f

    :cond_15
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v0, v1

    goto/16 :goto_4

    :pswitch_2c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->l(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_11

    :pswitch_2d
    const/4 v1, 0x0

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->n(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    :goto_1b
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->p(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    :goto_1c
    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    goto/16 :goto_e

    :pswitch_2f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1b

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->v(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    goto :goto_1c

    :pswitch_30
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1b

    :cond_18
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pa;->q(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int v1, v2, v0

    goto/16 :goto_e

    :pswitch_31
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v14, v0, v5}, Lcom/google/android/gms/internal/ads/pa;->l(ILjava/util/List;Z)I

    move-result v0

    :goto_1d
    add-int/2addr v13, v0

    move/from16 v19, v5

    goto/16 :goto_12

    :pswitch_32
    const/4 v5, 0x0

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v5}, Lcom/google/android/gms/internal/ads/pa;->n(ILjava/util/List;Z)I

    move-result v0

    goto :goto_1d

    :pswitch_33
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v12

    move/from16 v18, v12

    move-wide v11, v3

    move v3, v10

    move v4, v15

    move/from16 v19, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrti;

    move/from16 v5, v18

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->B(ILrti;Lcui;)I

    move-result v0

    :goto_1e
    add-int/2addr v13, v0

    move/from16 v17, v5

    goto/16 :goto_25

    :pswitch_34
    move v5, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v10

    move v4, v15

    move/from16 v18, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    :goto_1f
    add-int/2addr v0, v1

    :goto_20
    add-int/2addr v13, v0

    :cond_19
    move/from16 v17, v18

    goto/16 :goto_25

    :pswitch_35
    move/from16 v18, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    goto :goto_1f

    :pswitch_36
    move/from16 v18, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    goto :goto_20

    :pswitch_37
    move/from16 v18, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto :goto_20

    :pswitch_38
    move/from16 v18, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_1f

    :pswitch_39
    move/from16 v18, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    goto/16 :goto_1f

    :pswitch_3a
    move/from16 v18, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_20

    :pswitch_3b
    move/from16 v18, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move/from16 v5, v18

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/ka;->O(I)Lcui;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/pa;->r(ILjava/lang/Object;Lcui;)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_3c
    move v5, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v10

    move v4, v15

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgwn;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :goto_21
    add-int/2addr v13, v0

    goto/16 :goto_25

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->d(Ljava/lang/String;)I

    move-result v1

    :goto_22
    add-int/2addr v0, v1

    goto :goto_21

    :pswitch_3d
    move/from16 v17, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_21

    :pswitch_3e
    move/from16 v17, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    :goto_23
    add-int/lit8 v0, v0, 0x4

    goto :goto_21

    :pswitch_3f
    move/from16 v17, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    :goto_24
    add-int/lit8 v0, v0, 0x8

    goto :goto_21

    :pswitch_40
    move/from16 v17, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto :goto_22

    :pswitch_41
    move/from16 v17, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_22

    :pswitch_42
    move/from16 v17, v12

    const/16 v19, 0x0

    move-wide v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v1

    goto/16 :goto_22

    :pswitch_43
    move/from16 v17, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_23

    :pswitch_44
    move/from16 v17, v12

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ka;->v(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    goto/16 :goto_24

    :cond_1b
    :goto_25
    add-int/lit8 v12, v17, 0x3

    move v0, v10

    move v1, v15

    const v11, 0xfffff

    goto/16 :goto_0

    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0}, Lqui;->a()I

    move-result v0

    add-int/2addr v13, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-nez v0, :cond_1d

    return v13

    :cond_1d
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ka;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ka;->L(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ka;->K(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->z(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lzsi;->a(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->G(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->M(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->F(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/ka;->y(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ka;->E(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->p(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->H(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lzsi;->a(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->l(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->k(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lvui;->j(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ka;->f:Z

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ka;->e:Lrti;

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->K()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    return-object p0
.end method
