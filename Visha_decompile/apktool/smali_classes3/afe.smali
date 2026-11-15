.class public abstract Lafe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lkfh;->a:I

    const-string v0, "OpusHead"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lafe;->a:[B

    return-void
.end method

.method public static a(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b(Lmih;)Lhre;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lmih;->c(I)Lkjh;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lmih;->c(I)Lkjh;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lmih;->c(I)Lkjh;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lkjh;->b:Lu4h;

    invoke-static {v0}, Lafe;->i(Lu4h;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lkjh;->b:Lu4h;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->A()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lu4h;->A()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lu4h;->m(I)V

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkjh;->b:Lu4h;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lu4h;->u()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v6

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    if-ge v7, v1, :cond_4

    aget-object v7, v3, v7

    :goto_2
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v8

    if-ge v8, v6, :cond_3

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v9

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v8

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    new-array v11, v9, [B

    invoke-virtual {p0, v11, v4, v9}, Lu4h;->h([BII)V

    new-instance v9, Lmhh;

    invoke-direct {v9, v7, v11, v10, v8}, Lmhh;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lu4h;->l(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lu4h;->l(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lhre;

    invoke-direct {p0, v5}, Lhre;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static c(Lkjh;)Lhre;
    .locals 14

    const/4 v0, 0x1

    iget-object p0, p0, Lkjh;->b:Lu4h;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lu4h;->l(I)V

    new-instance v2, Lhre;

    const/4 v3, 0x0

    new-array v4, v3, [Liqe;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v5, v6, v4}, Lhre;-><init>(J[Liqe;)V

    :goto_0
    invoke-virtual {p0}, Lu4h;->u()I

    move-result v4

    if-lt v4, v1, :cond_15

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v8

    const v9, 0x6d657461

    const/4 v10, 0x0

    if-ne v8, v9, :cond_5

    invoke-virtual {p0, v4}, Lu4h;->l(I)V

    invoke-virtual {p0, v1}, Lu4h;->m(I)V

    invoke-static {p0}, Lafe;->g(Lu4h;)V

    :goto_1
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v4

    if-ge v4, v7, :cond_4

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v9

    const v11, 0x696c7374

    if-ne v9, v11, :cond_3

    invoke-virtual {p0, v4}, Lu4h;->l(I)V

    invoke-virtual {p0, v1}, Lu4h;->m(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v9

    if-ge v9, v8, :cond_1

    invoke-static {p0}, Life;->a(Lu4h;)Liqe;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    new-instance v10, Lhre;

    invoke-direct {v10, v4}, Lhre;-><init>(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v8}, Lu4h;->l(I)V

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {v2, v10}, Lhre;->d(Lhre;)Lhre;

    move-result-object v2

    goto/16 :goto_a

    :cond_5
    const v9, 0x736d7461

    if-ne v8, v9, :cond_13

    invoke-virtual {p0, v4}, Lu4h;->l(I)V

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lu4h;->m(I)V

    :goto_4
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v8

    if-ge v8, v7, :cond_12

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v8

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v9

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v11

    const v12, 0x73617574

    if-ne v11, v12, :cond_11

    const/16 v8, 0x10

    if-ge v9, v8, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lu4h;->m(I)V

    const/4 v8, -0x1

    move v9, v3

    move v11, v9

    :goto_5
    const/4 v12, 0x2

    if-ge v9, v12, :cond_9

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v12

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v13

    if-nez v12, :cond_7

    move v8, v13

    goto :goto_6

    :cond_7
    if-ne v12, v0, :cond_8

    move v11, v13

    :cond_8
    :goto_6
    add-int/2addr v9, v0

    goto :goto_5

    :cond_9
    const v9, -0x7fffffff

    if-ne v8, v4, :cond_a

    const/16 v4, 0xf0

    goto :goto_8

    :cond_a
    const/16 v12, 0xd

    if-ne v8, v12, :cond_b

    const/16 v4, 0x78

    goto :goto_8

    :cond_b
    const/16 v12, 0x15

    if-eq v8, v12, :cond_d

    :cond_c
    :goto_7
    move v4, v9

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lu4h;->u()I

    move-result v8

    if-lt v8, v1, :cond_c

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v8

    add-int/2addr v8, v1

    if-le v8, v7, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lu4h;->A()I

    move-result v8

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v12

    if-lt v8, v4, :cond_c

    const v4, 0x73726672

    if-eq v12, v4, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lu4h;->H()I

    move-result v4

    :goto_8
    if-ne v4, v9, :cond_10

    goto :goto_9

    :cond_10
    new-instance v10, Lhre;

    new-instance v8, Lmde;

    int-to-float v4, v4

    invoke-direct {v8, v4, v11}, Lmde;-><init>(FI)V

    new-array v4, v0, [Liqe;

    aput-object v8, v4, v3

    invoke-direct {v10, v5, v6, v4}, Lhre;-><init>(J[Liqe;)V

    goto :goto_9

    :cond_11
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lu4h;->l(I)V

    goto/16 :goto_4

    :cond_12
    :goto_9
    invoke-virtual {v2, v10}, Lhre;->d(Lhre;)Lhre;

    move-result-object v2

    goto :goto_a

    :cond_13
    const v4, -0x56878686

    if-ne v8, v4, :cond_14

    invoke-static {p0}, Lafe;->l(Lu4h;)Lhre;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhre;->d(Lhre;)Lhre;

    move-result-object v2

    :cond_14
    :goto_a
    invoke-virtual {p0, v7}, Lu4h;->l(I)V

    goto/16 :goto_0

    :cond_15
    return-object v2
.end method

.method public static d(Lu4h;)Lqnh;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    invoke-static {v0}, Lafe;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v0

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v0

    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v9

    new-instance p0, Lqnh;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lqnh;-><init>(JJJ)V

    return-object p0
.end method

.method public static e(Lsfe;Lmih;Lq9e;)Lvfe;
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    const v5, 0x7374737a

    invoke-virtual {v0, v5}, Lmih;->c(I)Lkjh;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v7, v1, Lsfe;->g:Lerj;

    new-instance v8, Lwee;

    invoke-direct {v8, v5, v7}, Lwee;-><init>(Lkjh;Lerj;)V

    goto :goto_0

    :cond_0
    const v5, 0x73747a32

    invoke-virtual {v0, v5}, Lmih;->c(I)Lkjh;

    move-result-object v5

    if-eqz v5, :cond_41

    new-instance v8, Lxee;

    invoke-direct {v8, v5}, Lxee;-><init>(Lkjh;)V

    :goto_0
    invoke-interface {v8}, Loee;->zzb()I

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1

    new-instance v9, Lvfe;

    new-array v2, v7, [J

    new-array v3, v7, [I

    new-array v5, v7, [J

    new-array v6, v7, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lvfe;-><init>(Lsfe;[J[II[J[IJ)V

    return-object v9

    :cond_1
    iget v9, v1, Lsfe;->b:I

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    if-ne v9, v10, :cond_2

    iget-wide v13, v1, Lsfe;->f:J

    cmp-long v9, v13, v11

    if-lez v9, :cond_2

    int-to-float v9, v5

    long-to-float v13, v13

    iget-object v14, v1, Lsfe;->g:Lerj;

    invoke-virtual {v14}, Lerj;->b()Lgpj;

    move-result-object v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v13, v15

    div-float/2addr v9, v13

    invoke-virtual {v14, v9}, Lgpj;->k(F)Lgpj;

    invoke-virtual {v14}, Lgpj;->K()Lerj;

    move-result-object v9

    invoke-virtual {v1, v9}, Lsfe;->a(Lerj;)Lsfe;

    move-result-object v1

    :cond_2
    move-object v14, v1

    const v1, 0x7374636f

    invoke-virtual {v0, v1}, Lmih;->c(I)Lkjh;

    move-result-object v1

    if-nez v1, :cond_3

    const v1, 0x636f3634

    invoke-virtual {v0, v1}, Lmih;->c(I)Lkjh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    const v13, 0x73747363

    invoke-virtual {v0, v13}, Lmih;->c(I)Lkjh;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Lkjh;->b:Lu4h;

    const v15, 0x73747473

    invoke-virtual {v0, v15}, Lmih;->c(I)Lkjh;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Lkjh;->b:Lu4h;

    const v6, 0x73747373

    invoke-virtual {v0, v6}, Lmih;->c(I)Lkjh;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v6, Lkjh;->b:Lu4h;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const v11, 0x63747473

    invoke-virtual {v0, v11}, Lmih;->c(I)Lkjh;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lkjh;->b:Lu4h;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v1, v1, Lkjh;->b:Lu4h;

    new-instance v11, Lkee;

    invoke-direct {v11, v13, v1, v9}, Lkee;-><init>(Lu4h;Lu4h;Z)V

    const/16 v1, 0xc

    invoke-virtual {v15, v1}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->J()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v15}, Lu4h;->J()I

    move-result v12

    invoke-virtual {v15}, Lu4h;->J()I

    move-result v13

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->J()I

    move-result v19

    goto :goto_4

    :cond_6
    move/from16 v19, v7

    :goto_4
    if-eqz v6, :cond_8

    invoke-virtual {v6, v1}, Lu4h;->l(I)V

    invoke-virtual {v6}, Lu4h;->J()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v6}, Lu4h;->J()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_7
    move/from16 v16, v3

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    move/from16 v16, v3

    move v1, v7

    :goto_5
    invoke-interface {v8}, Loee;->zza()I

    move-result v7

    iget-object v10, v14, Lsfe;->g:Lerj;

    if-eq v7, v3, :cond_f

    iget-object v4, v10, Lerj;->o:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "audio/g711-mlaw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "audio/g711-alaw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_9
    if-nez v9, :cond_f

    if-nez v19, :cond_e

    if-nez v1, :cond_e

    iget v0, v11, Lkee;->a:I

    new-array v1, v0, [J

    new-array v3, v0, [I

    :goto_6
    invoke-virtual {v11}, Lkee;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v11, Lkee;->b:I

    iget-wide v8, v11, Lkee;->d:J

    aput-wide v8, v1, v4

    iget v6, v11, Lkee;->c:I

    aput v6, v3, v4

    goto :goto_6

    :cond_a
    int-to-long v8, v13

    const/16 v4, 0x2000

    div-int/2addr v4, v7

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v6, v0, :cond_b

    aget v12, v3, v6

    sget v13, Lkfh;->a:I

    add-int/2addr v12, v4

    const/4 v13, -0x1

    add-int/2addr v12, v13

    div-int/2addr v12, v4

    add-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/2addr v6, v12

    goto :goto_7

    :cond_b
    new-array v6, v11, [J

    new-array v12, v11, [I

    new-array v13, v11, [J

    new-array v11, v11, [I

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    :goto_8
    if-ge v15, v0, :cond_d

    aget v24, v3, v15

    aget-wide v25, v1, v15

    move/from16 v44, v19

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v16, v44

    move/from16 v45, v24

    move-object/from16 v24, v1

    move/from16 v1, v45

    :goto_9
    if-lez v1, :cond_c

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v27

    aput-wide v25, v6, v16

    move-object/from16 p0, v3

    mul-int v3, v7, v27

    aput v3, v12, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 p1, v4

    int-to-long v3, v2

    mul-long/2addr v3, v8

    aput-wide v3, v13, v16

    const/4 v3, 0x1

    aput v3, v11, v16

    aget v4, v12, v16

    int-to-long v3, v4

    add-long v25, v25, v3

    add-int v2, v2, v27

    sub-int v1, v1, v27

    const/4 v3, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p1

    goto :goto_9

    :cond_c
    move-object/from16 p0, v3

    move/from16 p1, v4

    const/4 v3, 0x1

    add-int/2addr v15, v3

    move-object/from16 v3, p0

    move-object/from16 v1, v24

    move/from16 v44, v16

    move/from16 v16, v0

    move/from16 v0, v19

    move/from16 v19, v44

    goto :goto_8

    :cond_d
    int-to-long v0, v2

    mul-long/2addr v8, v0

    move-object v15, v6

    move-wide v0, v8

    move-object v2, v12

    move-object v4, v13

    move-object v13, v14

    move/from16 v3, v16

    move-object/from16 v16, v10

    move-object v14, v11

    goto/16 :goto_1d

    :cond_e
    const/4 v9, 0x0

    :cond_f
    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v4, v5, [J

    new-array v7, v5, [I

    move/from16 v29, v9

    move-object/from16 p0, v14

    move-object/from16 v31, v15

    move/from16 v9, v16

    const/16 p1, 0x0

    const/4 v14, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    :goto_a
    const-string v15, "BoxParsers"

    if-ge v10, v5, :cond_1c

    move-wide/from16 v32, v24

    const/16 v24, 0x1

    :goto_b
    if-nez v28, :cond_11

    invoke-virtual {v11}, Lkee;->a()Z

    move-result v24

    if-eqz v24, :cond_10

    move/from16 v25, v12

    move/from16 v34, v13

    iget-wide v12, v11, Lkee;->d:J

    move/from16 v35, v5

    iget v5, v11, Lkee;->c:I

    move/from16 v28, v5

    move-wide/from16 v32, v12

    move/from16 v12, v25

    move/from16 v13, v34

    move/from16 v5, v35

    goto :goto_b

    :cond_10
    move/from16 v35, v5

    move/from16 v25, v12

    move/from16 v34, v13

    const/4 v5, 0x0

    goto :goto_c

    :cond_11
    move/from16 v35, v5

    move/from16 v25, v12

    move/from16 v34, v13

    move/from16 v5, v28

    :goto_c
    if-nez v24, :cond_12

    const-string v5, "Unexpected end of chunk data"

    invoke-static {v15, v5}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    move/from16 v12, p1

    move v5, v10

    goto/16 :goto_15

    :cond_12
    move/from16 v12, p1

    if-nez v0, :cond_13

    goto :goto_f

    :cond_13
    :goto_d
    if-nez v30, :cond_15

    if-lez v19, :cond_14

    const/4 v13, -0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual {v0}, Lu4h;->J()I

    move-result v30

    invoke-virtual {v0}, Lu4h;->A()I

    move-result v12

    goto :goto_d

    :cond_14
    const/4 v13, -0x1

    const/16 v30, 0x0

    goto :goto_e

    :cond_15
    const/4 v13, -0x1

    :goto_e
    add-int/lit8 v30, v30, -0x1

    :goto_f
    aput-wide v32, v2, v10

    invoke-interface {v8}, Loee;->zzc()I

    move-result v13

    aput v13, v3, v10

    if-le v13, v14, :cond_16

    move/from16 p1, v13

    goto :goto_10

    :cond_16
    move/from16 p1, v14

    :goto_10
    int-to-long v13, v12

    add-long v13, v26, v13

    aput-wide v13, v4, v10

    if-nez v6, :cond_17

    const/4 v13, 0x1

    goto :goto_11

    :cond_17
    const/4 v13, 0x0

    :goto_11
    aput v13, v7, v10

    if-ne v10, v9, :cond_19

    const/4 v13, 0x1

    aput v13, v7, v10

    const/4 v13, -0x1

    add-int/2addr v1, v13

    if-lez v1, :cond_18

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lu4h;->J()I

    move-result v9

    add-int/2addr v9, v13

    :cond_18
    :goto_12
    move v15, v1

    move-object/from16 v24, v2

    move/from16 v14, v34

    goto :goto_13

    :cond_19
    const/4 v13, -0x1

    goto :goto_12

    :goto_13
    int-to-long v1, v14

    add-long v26, v26, v1

    add-int/lit8 v1, v25, -0x1

    if-nez v1, :cond_1b

    if-lez v29, :cond_1a

    invoke-virtual/range {v31 .. v31}, Lu4h;->J()I

    move-result v1

    invoke-virtual/range {v31 .. v31}, Lu4h;->A()I

    move-result v2

    add-int/lit8 v29, v29, -0x1

    move v14, v2

    goto :goto_14

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_14
    aget v2, v3, v10

    move/from16 v25, v1

    int-to-long v1, v2

    add-long v1, v32, v1

    add-int/lit8 v28, v5, -0x1

    const/4 v5, 0x1

    add-int/2addr v10, v5

    move v13, v14

    move/from16 v5, v35

    move/from16 v14, p1

    move/from16 p1, v12

    move/from16 v12, v25

    move-wide/from16 v44, v1

    move v1, v15

    move-object/from16 v2, v24

    move-wide/from16 v24, v44

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v24, v2

    move/from16 v35, v5

    move/from16 v25, v12

    move/from16 v12, p1

    :goto_15
    int-to-long v8, v12

    add-long v8, v26, v8

    if-eqz v0, :cond_1e

    :goto_16
    if-lez v19, :cond_1e

    invoke-virtual {v0}, Lu4h;->J()I

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v0, 0x0

    goto :goto_17

    :cond_1d
    invoke-virtual {v0}, Lu4h;->A()I

    const/4 v6, -0x1

    add-int/lit8 v19, v19, -0x1

    goto :goto_16

    :cond_1e
    const/4 v0, 0x1

    :goto_17
    if-nez v1, :cond_24

    if-nez v25, :cond_23

    if-nez v28, :cond_22

    if-nez v29, :cond_21

    if-nez v30, :cond_20

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p0

    move-object/from16 p0, v2

    goto :goto_1a

    :cond_1f
    move-object/from16 v13, p0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move-object/from16 v19, v4

    goto/16 :goto_1c

    :cond_20
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v13, p0

    move v12, v0

    move-object/from16 p0, v2

    :goto_18
    move/from16 v11, v30

    const/4 v0, 0x0

    goto :goto_1a

    :cond_21
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object/from16 v13, p0

    move v12, v0

    move-object/from16 p0, v2

    :goto_19
    move/from16 v10, v29

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move v12, v0

    move-object/from16 p0, v2

    move/from16 v6, v28

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    :cond_24
    move-object/from16 v13, p0

    move v12, v0

    move-object/from16 p0, v2

    move/from16 v0, v25

    move/from16 v6, v28

    move/from16 v10, v29

    move/from16 v11, v30

    :goto_1a
    iget v2, v13, Lsfe;->a:I

    move-object/from16 p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, v12, :cond_25

    const-string v0, ", ctts invalid"

    goto :goto_1b

    :cond_25
    const-string v0, ""

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    move-object/from16 v15, p0

    move-object/from16 v2, p1

    move-wide v0, v8

    move v3, v14

    move-object/from16 v4, v19

    move-object v14, v7

    :goto_1d
    iget-wide v10, v13, Lsfe;->c:J

    iget-object v12, v13, Lsfe;->i:[J

    sget-object v30, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v8, 0xf4240

    move-wide v6, v0

    move-wide/from16 p0, v10

    move-object/from16 v19, v13

    move-object v13, v12

    move-object/from16 v12, v30

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const-wide/32 v10, 0xf4240

    if-nez v13, :cond_26

    move-wide/from16 v8, p0

    invoke-static {v4, v10, v11, v8, v9}, Lkfh;->g([JJJ)V

    new-instance v0, Lvfe;

    move-object/from16 v12, v19

    move-object v13, v0

    move-object v1, v14

    move-object v14, v12

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v21}, Lvfe;-><init>(Lsfe;[J[II[J[IJ)V

    return-object v0

    :cond_26
    move-wide/from16 v8, p0

    move-object/from16 v12, v19

    array-length v6, v13

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    iget v6, v12, Lsfe;->b:I

    if-ne v6, v7, :cond_2a

    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2a

    iget-object v7, v12, Lsfe;->j:[J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p0, v14

    const/4 v14, 0x0

    aget-wide v24, v7, v14

    aget-wide v19, v13, v14

    move-object/from16 p1, v15

    iget-wide v14, v12, Lsfe;->d:J

    move/from16 v27, v6

    move-wide/from16 v6, v19

    move-wide/from16 v28, v8

    move-object/from16 v19, v2

    move/from16 v31, v3

    move-wide v2, v10

    move-wide v10, v14

    move-object/from16 v32, v12

    move-object/from16 v12, v30

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    add-long v33, v24, v6

    const/4 v6, -0x1

    add-int/lit8 v7, v27, -0x1

    const/4 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v9, v27, -0x4

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aget-wide v9, v4, v8

    cmp-long v8, v9, v24

    if-gtz v8, :cond_27

    aget-wide v11, v4, v6

    cmp-long v6, v24, v11

    if-gez v6, :cond_27

    aget-wide v6, v4, v7

    cmp-long v6, v6, v33

    if-gez v6, :cond_27

    cmp-long v6, v33, v0

    if-gtz v6, :cond_27

    sub-long v6, v24, v9

    move-object/from16 v12, v16

    iget v8, v12, Lerj;->F:I

    int-to-long v10, v8

    move-wide v8, v10

    move-wide/from16 v24, v10

    move-wide/from16 v10, v28

    move-object/from16 v12, v30

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v26

    sub-long v6, v0, v33

    move-wide/from16 v8, v24

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v26, v8

    if-nez v10, :cond_28

    cmp-long v10, v6, v8

    if-eqz v10, :cond_27

    const-wide/16 v8, 0x0

    goto :goto_20

    :cond_27
    :goto_1e
    move-object/from16 v2, p0

    move-wide/from16 v10, v28

    :goto_1f
    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_21

    :cond_28
    move-wide/from16 v8, v26

    :goto_20
    const-wide/32 v10, 0x7fffffff

    cmp-long v12, v8, v10

    if-gtz v12, :cond_27

    cmp-long v10, v6, v10

    if-lez v10, :cond_29

    goto :goto_1e

    :cond_29
    long-to-int v0, v8

    move-object/from16 v1, p2

    iput v0, v1, Lq9e;->a:I

    long-to-int v0, v6

    iput v0, v1, Lq9e;->b:I

    move-wide/from16 v10, v28

    invoke-static {v4, v2, v3, v10, v11}, Lkfh;->g([JJJ)V

    const/4 v0, 0x0

    aget-wide v24, v13, v0

    const-wide/32 v26, 0xf4240

    move-wide/from16 v28, v14

    invoke-static/range {v24 .. v30}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v20

    new-instance v0, Lvfe;

    move-object v13, v0

    move-object/from16 v2, p0

    move-object/from16 v14, v32

    move-object/from16 v15, p1

    move-object/from16 v16, v19

    move/from16 v17, v31

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v21}, Lvfe;-><init>(Lsfe;[J[II[J[IJ)V

    return-object v0

    :cond_2a
    move-object/from16 v19, v2

    move/from16 v31, v3

    move-wide v10, v8

    move-object/from16 v32, v12

    move-object v2, v14

    move-object/from16 p1, v15

    goto :goto_1f

    :cond_2b
    move-object/from16 v19, v2

    move/from16 v31, v3

    move-wide v10, v8

    move-object/from16 v32, v12

    move-object v2, v14

    move-object/from16 p1, v15

    move v3, v7

    :goto_21
    if-ne v6, v3, :cond_2d

    const/4 v3, 0x0

    aget-wide v7, v13, v3

    const-wide/16 v14, 0x0

    cmp-long v7, v7, v14

    if-nez v7, :cond_2d

    move-object/from16 v14, v32

    iget-object v5, v14, Lsfe;->j:[J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v15, v5, v3

    const/4 v3, 0x0

    :goto_22
    array-length v5, v4

    if-ge v3, v5, :cond_2c

    aget-wide v5, v4, v3

    sub-long v6, v5, v15

    const-wide/32 v8, 0xf4240

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v24, v10

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aput-wide v5, v4, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_22

    :cond_2c
    move-wide/from16 v24, v10

    sub-long v6, v0, v15

    const-wide/32 v8, 0xf4240

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v20

    new-instance v0, Lvfe;

    move-object v13, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v19

    move/from16 v17, v31

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v21}, Lvfe;-><init>(Lsfe;[J[II[J[IJ)V

    return-object v0

    :cond_2d
    move-wide/from16 v24, v10

    move-object/from16 v14, v32

    iget v0, v14, Lsfe;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_23

    :cond_2e
    const/4 v1, 0x0

    :goto_23
    iget-object v3, v14, Lsfe;->j:[J

    new-array v15, v6, [I

    new-array v12, v6, [I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    :goto_24
    array-length v6, v13

    if-ge v10, v6, :cond_35

    aget-wide v6, v3, v10

    const-wide/16 v27, -0x1

    cmp-long v9, v6, v27

    if-eqz v9, :cond_34

    aget-wide v27, v13, v10

    move/from16 v29, v10

    move/from16 p0, v11

    iget-wide v10, v14, Lsfe;->d:J

    sget-object v30, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    move-wide v13, v6

    move-wide/from16 v6, v27

    move-object/from16 v27, v3

    move v3, v8

    move-wide/from16 v8, v24

    move/from16 v28, v29

    move/from16 v29, v5

    move/from16 v5, p0

    move-object/from16 v34, v12

    move-object/from16 v12, v30

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v13, v14, v8, v8}, Lkfh;->y([JJZZ)I

    move-result v9

    aput v9, v15, v28

    add-long/2addr v6, v13

    const/4 v14, 0x0

    invoke-static {v4, v6, v7, v1, v14}, Lkfh;->v([JJZZ)I

    move-result v9

    aput v9, v34, v28

    aget v9, v15, v28

    :goto_25
    aget v10, v15, v28

    if-ltz v10, :cond_2f

    aget v11, v2, v10

    and-int/2addr v11, v8

    if-nez v11, :cond_2f

    const/4 v8, -0x1

    add-int/2addr v10, v8

    aput v10, v15, v28

    const/4 v8, 0x1

    goto :goto_25

    :cond_2f
    if-gez v10, :cond_30

    aput v9, v15, v28

    :goto_26
    aget v10, v15, v28

    aget v8, v34, v28

    if-ge v10, v8, :cond_30

    aget v8, v2, v10

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_30

    add-int/2addr v10, v9

    aput v10, v15, v28

    goto :goto_26

    :cond_30
    const/4 v8, 0x2

    if-ne v0, v8, :cond_31

    aget v9, v34, v28

    if-eq v10, v9, :cond_31

    :goto_27
    aget v9, v34, v28

    array-length v10, v4

    const/4 v11, -0x1

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_32

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget-wide v12, v4, v9

    cmp-long v10, v12, v6

    if-gtz v10, :cond_32

    aput v9, v34, v28

    goto :goto_27

    :cond_31
    const/4 v11, -0x1

    :cond_32
    aget v6, v34, v28

    aget v7, v15, v28

    sub-int v9, v6, v7

    add-int/2addr v5, v9

    if-eq v3, v7, :cond_33

    const/4 v3, 0x1

    goto :goto_28

    :cond_33
    move v3, v14

    :goto_28
    or-int v3, v26, v3

    move/from16 v26, v3

    move v3, v6

    :goto_29
    const/4 v6, 0x1

    goto :goto_2a

    :cond_34
    move-object/from16 v27, v3

    move/from16 v29, v5

    move v3, v8

    move/from16 v28, v10

    move v5, v11

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v14, 0x0

    goto :goto_29

    :goto_2a
    add-int/lit8 v10, v28, 0x1

    move v8, v3

    move v11, v5

    move-object/from16 v3, v27

    move/from16 v5, v29

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    goto/16 :goto_24

    :cond_35
    move-object/from16 v27, v3

    move v3, v5

    move v5, v11

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v32, v14

    const/4 v14, 0x0

    if-eq v5, v3, :cond_36

    const/4 v0, 0x1

    goto :goto_2b

    :cond_36
    move v0, v14

    :goto_2b
    or-int v0, v26, v0

    if-eqz v0, :cond_37

    new-array v1, v5, [J

    goto :goto_2c

    :cond_37
    move-object/from16 v1, p1

    :goto_2c
    if-eqz v0, :cond_38

    new-array v3, v5, [I

    :goto_2d
    const/4 v6, 0x1

    goto :goto_2e

    :cond_38
    move-object/from16 v3, v19

    goto :goto_2d

    :goto_2e
    if-ne v6, v0, :cond_39

    move/from16 v31, v14

    :cond_39
    if-eqz v0, :cond_3a

    new-array v6, v5, [I

    move-object v13, v6

    goto :goto_2f

    :cond_3a
    move-object v13, v2

    :goto_2f
    new-array v5, v5, [J

    move v6, v14

    move v12, v6

    move/from16 v23, v12

    move/from16 v39, v31

    move-object/from16 v10, v33

    const-wide/16 v20, 0x0

    :goto_30
    array-length v7, v10

    if-ge v12, v7, :cond_3f

    aget-wide v28, v27, v12

    aget v7, v15, v12

    aget v11, v34, v12

    if-eqz v0, :cond_3b

    sub-int v8, v11, v7

    move-object/from16 v9, p1

    invoke-static {v9, v7, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, v19

    invoke-static {v14, v7, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7, v13, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31

    :cond_3b
    move-object/from16 v9, p1

    move-object/from16 v14, v19

    :goto_31
    move/from16 v19, v6

    move v8, v7

    move/from16 v6, v39

    :goto_32
    if-ge v8, v11, :cond_3e

    move/from16 v30, v8

    move-object/from16 p1, v9

    move-object/from16 v7, v32

    iget-wide v8, v7, Lsfe;->d:J

    sget-object v31, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v32, 0xf4240

    move-object/from16 p0, v2

    move-object v2, v7

    move-object/from16 v35, v15

    move v15, v6

    move-wide/from16 v6, v20

    move-wide/from16 v37, v8

    move/from16 v36, v30

    move-object/from16 v30, p1

    move-wide/from16 v8, v32

    move-object/from16 v32, v10

    move/from16 v33, v11

    move-wide/from16 v10, v37

    move/from16 v37, v12

    move-object/from16 v12, v31

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v38

    aget-wide v6, v4, v36

    sub-long v6, v6, v28

    const-wide/32 v8, 0xf4240

    move-wide/from16 v10, v24

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_3c

    const/4 v10, 0x1

    const/16 v22, 0x0

    goto :goto_33

    :cond_3c
    const/4 v10, 0x1

    const/16 v22, 0x1

    :goto_33
    xor-int/lit8 v11, v22, 0x1

    or-int v23, v11, v23

    add-long v38, v38, v6

    aput-wide v38, v5, v19

    if-eqz v0, :cond_3d

    aget v6, v3, v19

    if-le v6, v15, :cond_3d

    aget v6, v14, v36

    :goto_34
    const/4 v7, 0x1

    goto :goto_35

    :cond_3d
    move v6, v15

    goto :goto_34

    :goto_35
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v10, v36, 0x1

    move v8, v10

    move-object/from16 v9, v30

    move-object/from16 v10, v32

    move/from16 v11, v33

    move-object/from16 v15, v35

    move/from16 v12, v37

    move-object/from16 v32, v2

    move-object/from16 v2, p0

    goto :goto_32

    :cond_3e
    move-object/from16 p0, v2

    move-object/from16 v30, v9

    move/from16 v37, v12

    move-object/from16 v35, v15

    move-object/from16 v2, v32

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move v15, v6

    move-object/from16 v32, v10

    aget-wide v10, v32, v37

    add-long v20, v20, v10

    add-int/lit8 v12, v37, 0x1

    move/from16 v39, v15

    move/from16 v6, v19

    move-object/from16 p1, v30

    move-object/from16 v10, v32

    move-object/from16 v15, v35

    move-object/from16 v32, v2

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_30

    :cond_3f
    move-object/from16 v2, v32

    iget-wide v10, v2, Lsfe;->d:J

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v8, 0xf4240

    move-wide/from16 v6, v20

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v42

    if-eqz v23, :cond_40

    invoke-virtual/range {v16 .. v16}, Lerj;->b()Lgpj;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgpj;->l(Z)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsfe;->a(Lerj;)Lsfe;

    move-result-object v14

    move-object/from16 v36, v14

    goto :goto_36

    :cond_40
    move-object/from16 v36, v2

    :goto_36
    new-instance v0, Lvfe;

    move-object/from16 v35, v0

    move-object/from16 v37, v1

    move-object/from16 v38, v3

    move-object/from16 v40, v5

    move-object/from16 v41, v13

    invoke-direct/range {v35 .. v43}, Lvfe;-><init>(Lsfe;[J[II[J[IJ)V

    return-object v0

    :cond_41
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public static f(Lmih;Lq9e;JLcom/google/android/gms/internal/ads/zzs;ZZLm2i;)Ljava/util/List;
    .locals 75

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    const-string v12, "video/hevc"

    const-string v13, "video/3gpp"

    const-string v14, "application/ttml+xml"

    const/16 v16, 0xa

    const v3, 0x6d646961

    const/16 v17, 0x5

    const/4 v1, 0x4

    const/16 v8, 0x8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    iget-object v2, v0, Lmih;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_95

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lmih;

    iget v2, v10, Lrlh;->a:I

    const v5, 0x7472616b

    if-eq v2, v5, :cond_0

    move-object/from16 v0, p7

    move v5, v3

    move-object v3, v6

    move/from16 v20, v9

    move-object/from16 v22, v12

    move-object/from16 v24, v13

    move-object/from16 v28, v14

    const/4 v2, 0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const v7, 0x6d696e66

    const/4 v12, 0x2

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move-object/from16 v9, p1

    move v14, v1

    move v1, v8

    const v8, 0x7374626c

    goto/16 :goto_69

    :cond_0
    const v2, 0x6d766864

    invoke-virtual {v0, v2}, Lmih;->c(I)Lkjh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v3}, Lmih;->b(I)Lmih;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x68646c72    # 4.3148E24f

    invoke-virtual {v5, v3}, Lmih;->c(I)Lkjh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lkjh;->b:Lu4h;

    invoke-static {v3}, Lafe;->i(Lu4h;)I

    move-result v3

    const v4, 0x736f756e

    const/4 v15, -0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_3

    const v4, 0x7362746c

    if-eq v3, v4, :cond_3

    const v4, 0x73756274

    if-eq v3, v4, :cond_3

    const v4, 0x636c6370

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    const v4, 0x6d657461

    if-ne v3, v4, :cond_5

    move/from16 v4, v17

    goto :goto_1

    :cond_5
    move v4, v15

    :goto_1
    if-ne v4, v15, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v55, v6

    move/from16 v20, v9

    move-object v2, v10

    move-object/from16 v22, v12

    move-object/from16 v24, v13

    move-object/from16 v28, v14

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v12, 0x2

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move v14, v1

    move v1, v8

    goto/16 :goto_67

    :cond_6
    const v3, 0x746b6864

    invoke-virtual {v10, v3}, Lmih;->c(I)Lkjh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lkjh;->b:Lu4h;

    invoke-virtual {v3, v8}, Lu4h;->l(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lafe;->a(I)I

    move-result v32

    if-nez v32, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0x10

    :goto_2
    invoke-virtual {v3, v8}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v8

    invoke-virtual {v3, v1}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->w()I

    move-result v34

    const/4 v1, 0x0

    :goto_3
    if-nez v32, :cond_8

    const/4 v7, 0x4

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    :goto_4
    const-wide/16 v37, 0x0

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v1, v7, :cond_c

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v7

    add-int v41, v34, v1

    aget-byte v7, v7, v41

    if-eq v7, v15, :cond_b

    if-nez v32, :cond_9

    invoke-virtual {v3}, Lu4h;->O()J

    move-result-wide v41

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lu4h;->Q()J

    move-result-wide v41

    :goto_5
    cmp-long v1, v41, v37

    if-nez v1, :cond_a

    :goto_6
    move-wide/from16 v0, v39

    :goto_7
    const/16 v7, 0x10

    goto :goto_8

    :cond_a
    move-wide/from16 v0, v41

    goto :goto_7

    :cond_b
    const/4 v7, 0x1

    add-int/2addr v1, v7

    goto :goto_3

    :cond_c
    invoke-virtual {v3, v7}, Lu4h;->m(I)V

    goto :goto_6

    :goto_8
    invoke-virtual {v3, v7}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v7

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v15

    move/from16 v34, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v4

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v3

    move-object/from16 v41, v6

    const/high16 v6, 0x10000

    move/from16 v42, v9

    const/high16 v9, -0x10000

    if-nez v7, :cond_10

    if-ne v15, v6, :cond_e

    if-ne v4, v9, :cond_f

    if-nez v3, :cond_d

    const/16 v3, 0x5a

    goto :goto_e

    :cond_d
    move v15, v6

    move v4, v9

    :cond_e
    :goto_9
    const/4 v7, 0x0

    goto :goto_a

    :cond_f
    move v15, v6

    goto :goto_9

    :cond_10
    :goto_a
    if-nez v7, :cond_14

    if-ne v15, v9, :cond_13

    if-ne v4, v6, :cond_12

    if-nez v3, :cond_11

    const/16 v3, 0x10e

    goto :goto_e

    :cond_11
    :goto_b
    move v15, v9

    :goto_c
    const/4 v7, 0x0

    goto :goto_d

    :cond_12
    move v6, v4

    goto :goto_b

    :cond_13
    move v6, v4

    goto :goto_c

    :cond_14
    move v6, v4

    :goto_d
    if-ne v7, v9, :cond_15

    if-nez v15, :cond_15

    if-nez v6, :cond_15

    if-ne v3, v9, :cond_15

    const/16 v3, 0xb4

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    new-instance v15, Lyee;

    invoke-direct {v15, v8, v0, v1, v3}, Lyee;-><init>(IJI)V

    cmp-long v0, p2, v39

    if-nez v0, :cond_16

    invoke-static {v15}, Lyee;->c(Lyee;)J

    move-result-wide v0

    move-wide/from16 v43, v0

    goto :goto_f

    :cond_16
    move-wide/from16 v43, p2

    :goto_f
    iget-object v0, v2, Lkjh;->b:Lu4h;

    invoke-static {v0}, Lafe;->d(Lu4h;)Lqnh;

    move-result-object v0

    iget-wide v8, v0, Lqnh;->c:J

    cmp-long v0, v43, v39

    if-nez v0, :cond_17

    move-wide/from16 v46, v39

    :goto_10
    const v0, 0x6d696e66

    goto :goto_11

    :cond_17
    const-wide/32 v45, 0xf4240

    sget-object v49, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v47, v8

    invoke-static/range {v43 .. v49}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    move-wide/from16 v46, v0

    goto :goto_10

    :goto_11
    invoke-virtual {v5, v0}, Lmih;->b(I)Lmih;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    invoke-virtual {v1, v6}, Lmih;->b(I)Lmih;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x6d646864

    invoke-virtual {v5, v2}, Lmih;->c(I)Lkjh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lkjh;->b:Lu4h;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Lafe;->a(I)I

    move-result v3

    if-nez v3, :cond_18

    move v4, v7

    goto :goto_12

    :cond_18
    const/16 v4, 0x10

    :goto_12
    invoke-virtual {v2, v4}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v4

    invoke-virtual {v2}, Lu4h;->w()I

    move-result v28

    const/4 v0, 0x0

    :goto_13
    if-nez v3, :cond_19

    const/4 v6, 0x4

    goto :goto_14

    :cond_19
    move v6, v7

    :goto_14
    if-ge v0, v6, :cond_1d

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v6

    add-int v43, v28, v0

    aget-byte v6, v6, v43

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1c

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v6

    :goto_15
    move-wide/from16 v48, v6

    goto :goto_16

    :cond_1a
    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v6

    goto :goto_15

    :goto_16
    cmp-long v0, v48, v37

    if-nez v0, :cond_1b

    :goto_17
    move-wide/from16 v51, v39

    goto :goto_18

    :cond_1b
    const-wide/32 v50, 0xf4240

    sget-object v54, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v52, v4

    invoke-static/range {v48 .. v54}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v39

    goto :goto_17

    :cond_1c
    const/4 v6, 0x1

    add-int/2addr v0, v6

    const v6, 0x7374626c

    const/16 v7, 0x8

    goto :goto_13

    :cond_1d
    invoke-virtual {v2, v6}, Lu4h;->m(I)V

    goto :goto_17

    :goto_18
    invoke-virtual {v2}, Lu4h;->K()I

    move-result v0

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    shr-int/lit8 v3, v0, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    const/4 v7, 0x3

    new-array v6, v7, [C

    const/16 v26, 0x0

    aput-char v2, v6, v26

    const/4 v2, 0x1

    aput-char v3, v6, v2

    const/16 v25, 0x2

    aput-char v0, v6, v25

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v7, :cond_20

    aget-char v3, v6, v0

    const/16 v7, 0x61

    if-lt v3, v7, :cond_1e

    const/16 v7, 0x7a

    if-le v3, v7, :cond_1f

    :cond_1e
    const/16 v53, 0x0

    goto :goto_1a

    :cond_1f
    add-int/2addr v0, v2

    const/4 v7, 0x3

    goto :goto_19

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v53, v0

    :goto_1a
    new-instance v0, Lnee;

    move-object/from16 v48, v0

    move-wide/from16 v49, v4

    invoke-direct/range {v48 .. v53}, Lnee;-><init>(JJLjava/lang/String;)V

    const v2, 0x73747364

    invoke-virtual {v1, v2}, Lmih;->c(I)Lkjh;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-static {v15}, Lyee;->a(Lyee;)I

    move-result v7

    invoke-static {v15}, Lyee;->b(Lyee;)I

    move-result v6

    invoke-static {v0}, Lnee;->c(Lnee;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lkjh;->b:Lu4h;

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Lu4h;->l(I)V

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v3

    new-instance v1, Lqee;

    invoke-direct {v1, v3}, Lqee;-><init>(I)V

    move-object/from16 v24, v13

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v3, :cond_89

    move-object/from16 v28, v14

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v14

    move-object/from16 v39, v0

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v0

    if-lez v0, :cond_21

    move/from16 v44, v3

    const/4 v2, 0x1

    goto :goto_1c

    :cond_21
    move/from16 v44, v3

    const/4 v2, 0x0

    :goto_1c
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v2

    move/from16 v45, v6

    const v6, 0x61766331

    move-wide/from16 v48, v8

    const v8, 0x48323633

    const v9, 0x656e6376

    if-eq v2, v6, :cond_2d

    const v6, 0x61766333

    if-eq v2, v6, :cond_2d

    if-eq v2, v9, :cond_2d

    const v6, 0x6d317620

    if-eq v2, v6, :cond_2e

    const v6, 0x6d703476

    if-eq v2, v6, :cond_2d

    const v6, 0x68766331

    if-eq v2, v6, :cond_2d

    const v6, 0x68657631

    if-eq v2, v6, :cond_2d

    const v6, 0x73323633

    if-eq v2, v6, :cond_2d

    if-eq v2, v8, :cond_2d

    const v6, 0x68323633

    if-eq v2, v6, :cond_2d

    const v6, 0x76703038

    if-eq v2, v6, :cond_2d

    const v6, 0x76703039

    if-eq v2, v6, :cond_2d

    const v6, 0x61763031

    if-eq v2, v6, :cond_2d

    const v6, 0x64766176

    if-eq v2, v6, :cond_2d

    const v6, 0x64766131

    if-eq v2, v6, :cond_2d

    const v6, 0x64766865

    if-eq v2, v6, :cond_2d

    const v6, 0x64766831

    if-eq v2, v6, :cond_2d

    const v6, 0x61707631

    if-ne v2, v6, :cond_22

    move-object/from16 v21, v1

    move/from16 v57, v7

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move-object/from16 v19, v15

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    move/from16 v18, v44

    move/from16 v56, v45

    const/16 v1, 0x10

    const v12, 0x6d317620

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move-object v15, v4

    move-object/from16 v34, v5

    goto/16 :goto_24

    :cond_22
    const v3, 0x6d703461

    if-eq v2, v3, :cond_2c

    const v3, 0x656e6361

    if-eq v2, v3, :cond_2c

    const v3, 0x61632d33

    if-eq v2, v3, :cond_2c

    const v3, 0x65632d33

    if-eq v2, v3, :cond_2c

    const v3, 0x61632d34

    if-eq v2, v3, :cond_2c

    const v3, 0x6d6c7061

    if-eq v2, v3, :cond_2c

    const v3, 0x64747363

    if-eq v2, v3, :cond_2c

    const v3, 0x64747365

    if-eq v2, v3, :cond_2c

    const v3, 0x64747368

    if-eq v2, v3, :cond_2c

    const v3, 0x6474736c

    if-eq v2, v3, :cond_2c

    const v3, 0x64747378

    if-eq v2, v3, :cond_2c

    const v3, 0x73616d72

    if-eq v2, v3, :cond_2c

    const v3, 0x73617762

    if-eq v2, v3, :cond_2c

    const v3, 0x6c70636d

    if-eq v2, v3, :cond_2c

    const v3, 0x736f7774

    if-eq v2, v3, :cond_2c

    const v3, 0x74776f73

    if-eq v2, v3, :cond_2c

    const v3, 0x2e6d7032

    if-eq v2, v3, :cond_2c

    const v3, 0x2e6d7033

    if-eq v2, v3, :cond_2c

    const v3, 0x6d686131

    if-eq v2, v3, :cond_2c

    const v3, 0x6d686d31

    if-eq v2, v3, :cond_2c

    const v3, 0x616c6163

    if-eq v2, v3, :cond_2c

    const v3, 0x616c6177

    if-eq v2, v3, :cond_2c

    const v3, 0x756c6177

    if-eq v2, v3, :cond_2c

    const v3, 0x4f707573

    if-eq v2, v3, :cond_2c

    const v3, 0x664c6143

    if-eq v2, v3, :cond_2c

    const v3, 0x69616d66

    if-ne v2, v3, :cond_23

    move-object v6, v1

    move-object/from16 v19, v15

    const/4 v8, 0x1

    const/4 v9, 0x4

    const v15, 0x73747070

    goto/16 :goto_22

    :cond_23
    const v3, 0x54544d4c

    if-eq v2, v3, :cond_24

    const v3, 0x74783367

    if-eq v2, v3, :cond_24

    const v3, 0x77767474

    if-eq v2, v3, :cond_24

    const v3, 0x73747070

    if-eq v2, v3, :cond_24

    const v3, 0x63363038

    if-ne v2, v3, :cond_25

    :cond_24
    const/16 v3, 0x10

    goto/16 :goto_1f

    :cond_25
    const v3, 0x6d657474

    if-ne v2, v3, :cond_27

    const/16 v3, 0x10

    add-int/lit8 v2, v14, 0x10

    invoke-virtual {v4, v2}, Lu4h;->l(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lu4h;->S(C)Ljava/lang/String;

    invoke-virtual {v4, v2}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    invoke-virtual {v2, v7}, Lgpj;->n(I)Lgpj;

    invoke-virtual {v2, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object v2

    iput-object v2, v1, Lqee;->b:Lerj;

    :cond_26
    :goto_1d
    move/from16 v53, v0

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move/from16 v36, v13

    move/from16 v61, v14

    move-object/from16 v19, v15

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    move/from16 v18, v44

    move/from16 v2, v45

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v14, 0x4

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move-object v15, v4

    const/16 v4, 0xc

    :goto_1e
    move-object/from16 v73, v5

    move-object v5, v1

    move-object/from16 v1, v73

    goto/16 :goto_5f

    :cond_27
    const v3, 0x63616d6d

    if-ne v2, v3, :cond_26

    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    invoke-virtual {v2, v7}, Lgpj;->n(I)Lgpj;

    const-string v3, "application/x-camera-motion"

    invoke-virtual {v2, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object v2

    iput-object v2, v1, Lqee;->b:Lerj;

    goto :goto_1d

    :goto_1f
    add-int/lit8 v6, v14, 0x10

    invoke-virtual {v4, v6}, Lu4h;->l(I)V

    const-wide v8, 0x7fffffffffffffffL

    const v6, 0x54544d4c

    if-ne v2, v6, :cond_28

    move-wide v2, v8

    move-object/from16 v19, v15

    move-object/from16 v9, v28

    const/4 v8, 0x0

    const v15, 0x73747070

    goto :goto_21

    :cond_28
    const v3, 0x74783367

    if-ne v2, v3, :cond_29

    add-int/lit8 v2, v0, -0x10

    new-array v3, v2, [B

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v2}, Lu4h;->h([BII)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    const-string v3, "application/x-quicktime-tx3g"

    move-object/from16 v19, v15

    const v15, 0x73747070

    move-wide/from16 v73, v8

    move-object v8, v2

    move-object v9, v3

    move-wide/from16 v2, v73

    goto :goto_21

    :cond_29
    const v3, 0x77767474

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2a

    const-string v2, "application/x-mp4-vtt"

    move-object/from16 v19, v15

    const v15, 0x73747070

    move-wide/from16 v73, v8

    move-object v9, v2

    move-wide/from16 v2, v73

    :goto_20
    const/4 v8, 0x0

    goto :goto_21

    :cond_2a
    move-object/from16 v19, v15

    const v15, 0x73747070

    if-ne v2, v15, :cond_2b

    move-object/from16 v9, v28

    move-wide/from16 v2, v37

    goto :goto_20

    :cond_2b
    const/4 v2, 0x1

    iput v2, v1, Lqee;->d:I

    const-string v18, "application/x-mp4-cea-608"

    move-wide v2, v8

    move-object/from16 v9, v18

    goto :goto_20

    :goto_21
    new-instance v6, Lgpj;

    invoke-direct {v6}, Lgpj;-><init>()V

    invoke-virtual {v6, v7}, Lgpj;->n(I)Lgpj;

    invoke-virtual {v6, v9}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v2, v3}, Lgpj;->I(J)Lgpj;

    invoke-virtual {v6, v8}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v2

    iput-object v2, v1, Lqee;->b:Lerj;

    move/from16 v53, v0

    move-object v15, v4

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move/from16 v36, v13

    move/from16 v61, v14

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    move/from16 v18, v44

    move/from16 v2, v45

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    goto/16 :goto_1e

    :cond_2c
    move-object/from16 v19, v15

    const/4 v8, 0x1

    const v15, 0x73747070

    move-object v6, v1

    const/4 v9, 0x4

    :goto_22
    move-object v1, v4

    const/4 v3, 0x0

    const/16 v15, 0xc

    move/from16 v18, v44

    const/4 v15, 0x0

    const v20, 0x74783367

    const v29, 0x77767474

    move v3, v14

    move-object v15, v4

    move/from16 v30, v34

    move v4, v0

    move-object/from16 v34, v5

    move v5, v7

    move-object/from16 v21, v6

    move-object/from16 v22, v12

    move-object/from16 v55, v41

    move/from16 v56, v45

    const v12, 0x6d317620

    const v23, 0x76703038

    const v33, 0x54544d4c

    move-object/from16 v6, v34

    move/from16 v57, v7

    const/16 v23, 0x8

    const/16 v27, 0x3

    move/from16 v7, p6

    move/from16 v23, v33

    move-object/from16 v8, p4

    move/from16 v25, v20

    move/from16 v20, v42

    move-object/from16 v9, v21

    move-object/from16 v58, v10

    move/from16 v27, v29

    move v10, v13

    invoke-static/range {v1 .. v10}, Lafe;->p(Lu4h;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lqee;I)V

    move/from16 v53, v0

    move/from16 v36, v13

    move/from16 v61, v14

    move-object/from16 v5, v21

    move-object/from16 v1, v34

    move/from16 v2, v56

    move/from16 v7, v57

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    goto/16 :goto_5f

    :cond_2d
    move-object/from16 v21, v1

    move/from16 v57, v7

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move-object/from16 v19, v15

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    move/from16 v18, v44

    move/from16 v56, v45

    const v12, 0x6d317620

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move-object v15, v4

    move-object/from16 v34, v5

    :goto_23
    const/16 v1, 0x10

    goto :goto_24

    :cond_2e
    move-object/from16 v21, v1

    move/from16 v57, v7

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move-object/from16 v19, v15

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    move/from16 v18, v44

    move/from16 v56, v45

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    move-object v15, v4

    move-object/from16 v34, v5

    move v12, v6

    goto :goto_23

    :goto_24
    add-int/lit8 v4, v14, 0x10

    invoke-virtual {v15, v4}, Lu4h;->l(I)V

    invoke-virtual {v15, v1}, Lu4h;->m(I)V

    invoke-virtual {v15}, Lu4h;->K()I

    move-result v4

    invoke-virtual {v15}, Lu4h;->K()I

    move-result v5

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lu4h;->m(I)V

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v6

    if-ne v2, v9, :cond_31

    invoke-static {v15, v14, v0}, Lafe;->j(Lu4h;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v11, :cond_2f

    move-object/from16 v10, v21

    const/4 v9, 0x0

    goto :goto_25

    :cond_2f
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ltfe;

    iget-object v9, v9, Ltfe;->b:Ljava/lang/String;

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v9

    move-object/from16 v10, v21

    :goto_25
    iget-object v1, v10, Lqee;->a:[Ltfe;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ltfe;

    aput-object v2, v1, v13

    move v2, v7

    goto :goto_26

    :cond_30
    move-object/from16 v10, v21

    move v2, v9

    move-object v9, v11

    :goto_26
    invoke-virtual {v15, v6}, Lu4h;->l(I)V

    goto :goto_27

    :cond_31
    move-object/from16 v10, v21

    move-object v9, v11

    :goto_27
    if-ne v2, v12, :cond_32

    const-string v1, "video/mpeg"

    move v8, v2

    goto :goto_28

    :cond_32
    if-ne v2, v8, :cond_33

    move-object/from16 v1, v24

    goto :goto_28

    :cond_33
    move v8, v2

    const/4 v1, 0x0

    :goto_28
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v42, v2

    move/from16 v45, v4

    move/from16 v43, v5

    move/from16 v52, v8

    move-object/from16 v40, v9

    move/from16 v36, v13

    const/16 v4, 0x8

    const/4 v5, -0x1

    const/16 v7, 0x8

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v29, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v51, 0x0

    const/16 v59, -0x1

    const/16 v60, -0x1

    move-object v2, v1

    move v9, v6

    const/4 v1, -0x1

    const/4 v6, -0x1

    :goto_29
    sub-int v8, v9, v14

    if-ge v8, v0, :cond_34

    invoke-virtual {v15, v9}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v8

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v53

    if-nez v53, :cond_36

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v53

    move/from16 v54, v9

    sub-int v9, v53, v14

    if-ne v9, v0, :cond_35

    :cond_34
    move/from16 v53, v0

    move/from16 v64, v4

    move/from16 v66, v6

    move/from16 v63, v7

    move-object/from16 v62, v10

    move-object/from16 v72, v11

    move/from16 v61, v14

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    goto/16 :goto_5c

    :cond_35
    const/4 v9, 0x0

    goto :goto_2a

    :cond_36
    move/from16 v54, v9

    move/from16 v9, v53

    :goto_2a
    if-lez v9, :cond_37

    move/from16 v53, v0

    const/4 v0, 0x1

    goto :goto_2b

    :cond_37
    move/from16 v53, v0

    const/4 v0, 0x0

    :goto_2b
    invoke-static {v0, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v0

    move/from16 v61, v14

    const v14, 0x61766343

    if-ne v0, v14, :cond_3a

    const/16 v14, 0x8

    add-int/2addr v8, v14

    if-nez v2, :cond_38

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_2c

    :cond_38
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2c
    invoke-static {v7, v0}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-static {v15}, Lb8e;->a(Lu4h;)Lb8e;

    move-result-object v0

    iget-object v2, v0, Lb8e;->a:Ljava/util/List;

    iget v4, v0, Lb8e;->b:I

    iput v4, v10, Lqee;->c:I

    if-nez v44, :cond_39

    iget v6, v0, Lb8e;->k:F

    const/4 v7, 0x0

    goto :goto_2d

    :cond_39
    move/from16 v6, v42

    const/4 v7, 0x1

    :goto_2d
    iget-object v4, v0, Lb8e;->l:Ljava/lang/String;

    iget v5, v0, Lb8e;->j:I

    iget v8, v0, Lb8e;->g:I

    iget v11, v0, Lb8e;->h:I

    iget v12, v0, Lb8e;->i:I

    iget v14, v0, Lb8e;->e:I

    iget v0, v0, Lb8e;->f:I

    const-string v42, "video/avc"

    move-object/from16 v65, v3

    move-object/from16 v51, v4

    move/from16 v59, v5

    move/from16 v44, v7

    move-object/from16 v62, v10

    move/from16 v66, v11

    move v5, v12

    move/from16 v64, v14

    const/16 v4, 0xc

    const/4 v14, 0x4

    move v7, v0

    move-object v11, v2

    move v12, v8

    move-object/from16 v2, v42

    const/4 v0, -0x1

    move/from16 v42, v6

    :goto_2e
    const/4 v6, 0x0

    goto/16 :goto_5b

    :cond_3a
    const v14, 0x68766343

    if-ne v0, v14, :cond_3e

    const/16 v14, 0x8

    add-int/2addr v8, v14

    if-nez v2, :cond_3b

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_2f

    :cond_3b
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2f
    invoke-static {v7, v0}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-static {v15}, Lr9e;->a(Lu4h;)Lr9e;

    move-result-object v0

    iget-object v2, v0, Lr9e;->a:Ljava/util/List;

    iget v4, v0, Lr9e;->b:I

    iput v4, v10, Lqee;->c:I

    if-nez v44, :cond_3c

    iget v6, v0, Lr9e;->j:F

    const/4 v7, 0x0

    goto :goto_30

    :cond_3c
    move/from16 v6, v42

    const/4 v7, 0x1

    :goto_30
    iget v4, v0, Lr9e;->k:I

    iget v5, v0, Lr9e;->c:I

    iget-object v8, v0, Lr9e;->l:Ljava/lang/String;

    iget v11, v0, Lr9e;->i:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3d

    move v1, v11

    :cond_3d
    iget v11, v0, Lr9e;->f:I

    iget v12, v0, Lr9e;->g:I

    iget v13, v0, Lr9e;->h:I

    iget v14, v0, Lr9e;->d:I

    move/from16 v42, v1

    iget v1, v0, Lr9e;->e:I

    iget-object v0, v0, Lr9e;->m:Laxh;

    move-object/from16 v65, v3

    move/from16 v59, v4

    move/from16 v60, v5

    move/from16 v44, v7

    move-object/from16 v51, v8

    move-object/from16 v62, v10

    move/from16 v66, v12

    move v5, v13

    move/from16 v64, v14

    const/16 v4, 0xc

    const/4 v14, 0x4

    move-object v13, v0

    move v7, v1

    move v12, v11

    move/from16 v1, v42

    const/4 v0, -0x1

    move-object v11, v2

    move/from16 v42, v6

    move-object/from16 v2, v22

    goto :goto_2e

    :cond_3e
    const v14, 0x6c687643

    if-ne v0, v14, :cond_4b

    const/16 v14, 0x8

    add-int/2addr v8, v14

    move-object/from16 v14, v22

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "lhvC must follow hvcC atom"

    invoke-static {v0, v2}, Lg9e;->b(ZLjava/lang/String;)V

    if-eqz v13, :cond_40

    iget-object v0, v13, Laxh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3f

    const/4 v0, 0x1

    goto :goto_31

    :cond_3f
    const/4 v0, 0x0

    goto :goto_31

    :cond_40
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_31
    const-string v2, "must have at least two layers"

    invoke-static {v0, v2}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v13}, Lr9e;->b(Lu4h;Laxh;)Lr9e;

    move-result-object v0

    iget v2, v10, Lqee;->c:I

    iget v8, v0, Lr9e;->b:I

    if-ne v2, v8, :cond_41

    const/4 v2, 0x1

    goto :goto_32

    :cond_41
    const/4 v2, 0x0

    :goto_32
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    iget v2, v0, Lr9e;->f:I

    const/4 v8, -0x1

    if-eq v2, v8, :cond_43

    if-ne v12, v2, :cond_42

    const/4 v2, 0x1

    goto :goto_33

    :cond_42
    const/4 v2, 0x0

    :goto_33
    const-string v8, "colorSpace must be the same for both views"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    :cond_43
    iget v2, v0, Lr9e;->g:I

    const/4 v8, -0x1

    if-eq v2, v8, :cond_45

    if-ne v6, v2, :cond_44

    const/4 v2, 0x1

    goto :goto_34

    :cond_44
    const/4 v2, 0x0

    :goto_34
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    :cond_45
    iget v2, v0, Lr9e;->h:I

    const/4 v8, -0x1

    if-eq v2, v8, :cond_47

    if-ne v5, v2, :cond_46

    const/4 v2, 0x1

    goto :goto_35

    :cond_46
    const/4 v2, 0x0

    :goto_35
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    :cond_47
    iget v2, v0, Lr9e;->d:I

    if-ne v4, v2, :cond_48

    const/4 v2, 0x1

    goto :goto_36

    :cond_48
    const/4 v2, 0x0

    :goto_36
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    iget v2, v0, Lr9e;->e:I

    if-ne v7, v2, :cond_49

    const/4 v2, 0x1

    goto :goto_37

    :cond_49
    const/4 v2, 0x0

    :goto_37
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v2, v8}, Lg9e;->b(ZLjava/lang/String;)V

    if-eqz v11, :cond_4a

    sget v2, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v2, Ll4i;

    invoke-direct {v2}, Ll4i;-><init>()V

    invoke-virtual {v2, v11}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;

    iget-object v8, v0, Lr9e;->a:Ljava/util/List;

    invoke-virtual {v2, v8}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;

    invoke-virtual {v2}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v11

    const/4 v8, 0x0

    goto :goto_38

    :cond_4a
    const-string v2, "initializationData must be already set from hvcC atom"

    const/4 v8, 0x0

    invoke-static {v8, v2}, Lg9e;->b(ZLjava/lang/String;)V

    :goto_38
    iget-object v0, v0, Lr9e;->l:Ljava/lang/String;

    const-string v2, "video/mv-hevc"

    move-object/from16 v51, v0

    move-object/from16 v65, v3

    move/from16 v64, v4

    move/from16 v66, v6

    move v6, v8

    move-object/from16 v62, v10

    move-object/from16 v22, v14

    const/4 v0, -0x1

    const/16 v4, 0xc

    :goto_39
    const/4 v14, 0x4

    goto/16 :goto_5b

    :cond_4b
    const v14, 0x76657875

    if-ne v0, v14, :cond_5c

    const/16 v14, 0x8

    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v15, v0}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v0

    move-object/from16 v62, v10

    const/4 v14, 0x0

    :goto_3a
    sub-int v10, v0, v8

    if-ge v10, v9, :cond_54

    invoke-virtual {v15, v0}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v10

    if-lez v10, :cond_4c

    move/from16 v63, v7

    const/4 v7, 0x1

    goto :goto_3b

    :cond_4c
    move/from16 v63, v7

    const/4 v7, 0x0

    :goto_3b
    invoke-static {v7, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v7

    move/from16 v64, v4

    const v4, 0x65796573

    if-ne v7, v4, :cond_53

    const/16 v4, 0x8

    add-int/lit8 v7, v0, 0x8

    invoke-virtual {v15, v7}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v4

    :goto_3c
    sub-int v7, v4, v0

    if-ge v7, v10, :cond_52

    invoke-virtual {v15, v4}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v7

    if-lez v7, :cond_4d

    const/4 v14, 0x1

    goto :goto_3d

    :cond_4d
    const/4 v14, 0x0

    :goto_3d
    invoke-static {v14, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v14

    move-object/from16 v65, v3

    const v3, 0x73747269

    if-ne v14, v3, :cond_51

    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Lu4h;->m(I)V

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v4

    const/4 v14, 0x1

    and-int/lit8 v7, v4, 0x1

    const/4 v3, 0x2

    and-int/lit8 v14, v4, 0x2

    if-ne v14, v3, :cond_4e

    const/4 v3, 0x1

    :goto_3e
    const/16 v14, 0x8

    goto :goto_3f

    :cond_4e
    const/4 v3, 0x0

    goto :goto_3e

    :goto_3f
    and-int/2addr v4, v14

    if-ne v4, v14, :cond_4f

    const/4 v4, 0x1

    :goto_40
    const/4 v14, 0x1

    goto :goto_41

    :cond_4f
    const/4 v4, 0x0

    goto :goto_40

    :goto_41
    if-eq v14, v7, :cond_50

    const/4 v7, 0x0

    goto :goto_42

    :cond_50
    move v7, v14

    :goto_42
    new-instance v14, Lmee;

    move/from16 v66, v6

    new-instance v6, Lpee;

    invoke-direct {v6, v7, v3, v4}, Lpee;-><init>(ZZZ)V

    invoke-direct {v14, v6}, Lmee;-><init>(Lpee;)V

    :goto_43
    const/4 v3, 0x1

    goto :goto_44

    :cond_51
    move/from16 v66, v6

    add-int/2addr v4, v7

    move-object/from16 v3, v65

    goto :goto_3c

    :cond_52
    move-object/from16 v65, v3

    move/from16 v66, v6

    const/4 v3, 0x1

    const/4 v14, 0x0

    goto :goto_44

    :cond_53
    move-object/from16 v65, v3

    move/from16 v66, v6

    goto :goto_43

    :goto_44
    add-int/2addr v0, v10

    move/from16 v7, v63

    move/from16 v4, v64

    move-object/from16 v3, v65

    move/from16 v6, v66

    goto/16 :goto_3a

    :cond_54
    move-object/from16 v65, v3

    move/from16 v64, v4

    move/from16 v66, v6

    move/from16 v63, v7

    const/4 v3, 0x1

    if-nez v14, :cond_55

    const/4 v0, 0x0

    goto :goto_45

    :cond_55
    new-instance v0, Lzee;

    invoke-direct {v0, v14}, Lzee;-><init>(Lmee;)V

    :goto_45
    if-eqz v0, :cond_56

    if-eqz v13, :cond_59

    iget-object v4, v13, Laxh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_58

    invoke-virtual {v0}, Lzee;->b()Z

    move-result v4

    const-string v6, "both eye views must be marked as available"

    invoke-static {v4, v6}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-static {v0}, Lzee;->a(Lzee;)Lmee;

    move-result-object v0

    invoke-static {v0}, Lmee;->a(Lmee;)Lpee;

    move-result-object v0

    invoke-static {v0}, Lpee;->a(Lpee;)Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v4, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v0, v4}, Lg9e;->b(ZLjava/lang/String;)V

    :cond_56
    move-object/from16 v72, v11

    move-object/from16 v67, v13

    :cond_57
    :goto_46
    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    goto/16 :goto_56

    :cond_58
    const/4 v4, -0x1

    goto :goto_47

    :cond_59
    const/4 v4, -0x1

    const/4 v13, 0x0

    :goto_47
    if-ne v1, v4, :cond_5b

    invoke-static {v0}, Lzee;->a(Lzee;)Lmee;

    move-result-object v0

    invoke-static {v0}, Lmee;->a(Lmee;)Lpee;

    move-result-object v0

    invoke-static {v0}, Lpee;->a(Lpee;)Z

    move-result v0

    if-eq v3, v0, :cond_5a

    move/from16 v7, v63

    const/4 v0, -0x1

    const/4 v1, 0x4

    :goto_48
    const/16 v4, 0xc

    const/4 v6, 0x0

    goto/16 :goto_39

    :cond_5a
    move/from16 v1, v17

    :goto_49
    move/from16 v7, v63

    :goto_4a
    const/4 v0, -0x1

    goto :goto_48

    :cond_5b
    move v0, v4

    move/from16 v7, v63

    goto :goto_48

    :cond_5c
    move-object/from16 v65, v3

    move/from16 v64, v4

    move/from16 v66, v6

    move/from16 v63, v7

    move-object/from16 v62, v10

    const/4 v3, 0x1

    const v4, 0x64766343

    if-eq v0, v4, :cond_5d

    const v4, 0x64767643

    if-ne v0, v4, :cond_5e

    :cond_5d
    move-object/from16 v72, v11

    move-object/from16 v67, v13

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    goto/16 :goto_5a

    :cond_5e
    const v4, 0x76706343

    if-ne v0, v4, :cond_63

    const/16 v4, 0xc

    add-int/2addr v8, v4

    if-nez v2, :cond_5f

    move v7, v3

    const/4 v0, 0x0

    goto :goto_4b

    :cond_5f
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_4b
    invoke-static {v7, v0}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v4

    const/4 v5, 0x4

    shr-int/lit8 v6, v4, 0x4

    shr-int/lit8 v5, v4, 0x1

    move/from16 v7, v52

    const v10, 0x76703038

    if-ne v7, v10, :cond_60

    const-string v8, "video/x-vnd.on2.vp8"

    goto :goto_4c

    :cond_60
    const-string v8, "video/x-vnd.on2.vp9"

    :goto_4c
    const-string v12, "video/x-vnd.on2.vp9"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_61

    and-int/lit8 v5, v5, 0x7

    int-to-byte v11, v6

    sget-object v12, Lvcg;->a:[B

    int-to-byte v5, v5

    const/16 v12, 0xc

    new-array v14, v12, [B

    const/4 v12, 0x0

    aput-byte v3, v14, v12

    aput-byte v3, v14, v3

    const/4 v12, 0x2

    aput-byte v0, v14, v12

    const/4 v0, 0x3

    aput-byte v12, v14, v0

    const/4 v12, 0x4

    aput-byte v3, v14, v12

    aput-byte v2, v14, v17

    const/4 v2, 0x6

    aput-byte v0, v14, v2

    const/4 v2, 0x7

    aput-byte v3, v14, v2

    const/16 v2, 0x8

    aput-byte v11, v14, v2

    const/16 v2, 0x9

    aput-byte v12, v14, v2

    aput-byte v3, v14, v16

    const/16 v2, 0xb

    aput-byte v5, v14, v2

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v11

    goto :goto_4d

    :cond_61
    const/4 v0, 0x3

    :goto_4d
    and-int/lit8 v2, v4, 0x1

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v4

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v5

    invoke-static {v4}, Lh6j;->a(I)I

    move-result v4

    if-eq v3, v2, :cond_62

    const/4 v2, 0x2

    goto :goto_4e

    :cond_62
    move v2, v3

    :goto_4e
    invoke-static {v5}, Lh6j;->b(I)I

    move-result v5

    move/from16 v66, v2

    move v12, v4

    move/from16 v64, v6

    move/from16 v52, v7

    move-object v2, v8

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v14, 0x4

    move/from16 v7, v64

    goto/16 :goto_2e

    :cond_63
    move/from16 v7, v52

    const/4 v4, 0x3

    const v10, 0x76703038

    const v6, 0x61763143

    if-ne v0, v6, :cond_64

    const/16 v6, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v0, v9, -0x8

    new-array v2, v0, [B

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5, v0}, Lu4h;->h([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-static {v15}, Lafe;->k(Lu4h;)Lh6j;

    move-result-object v2

    iget v5, v2, Lh6j;->e:I

    iget v6, v2, Lh6j;->f:I

    iget v8, v2, Lh6j;->a:I

    iget v11, v2, Lh6j;->b:I

    iget v2, v2, Lh6j;->c:I

    const-string v12, "video/av01"

    move/from16 v64, v5

    move/from16 v52, v7

    move/from16 v66, v11

    const/16 v4, 0xc

    const/4 v14, 0x4

    move-object v11, v0

    move v5, v2

    move v7, v6

    move-object v2, v12

    const/4 v0, -0x1

    const/4 v6, 0x0

    move v12, v8

    goto/16 :goto_5b

    :cond_64
    const v6, 0x636c6c69

    if-ne v0, v6, :cond_66

    if-nez v29, :cond_65

    invoke-static {}, Lafe;->o()Ljava/nio/ByteBuffer;

    move-result-object v29

    :cond_65
    move-object/from16 v0, v29

    const/16 v6, 0x15

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v29, v0

    move/from16 v52, v7

    goto/16 :goto_49

    :cond_66
    const v6, 0x6d646376

    if-ne v0, v6, :cond_68

    if-nez v29, :cond_67

    invoke-static {}, Lafe;->o()Ljava/nio/ByteBuffer;

    move-result-object v29

    :cond_67
    move-object/from16 v0, v29

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v6

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v8

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v14

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v10

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v4

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v3

    move/from16 v52, v7

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v7

    move-object/from16 v67, v13

    invoke-virtual {v15}, Lu4h;->e()S

    move-result v13

    invoke-virtual {v15}, Lu4h;->O()J

    move-result-wide v68

    invoke-virtual {v15}, Lu4h;->O()J

    move-result-wide v70

    move-object/from16 v72, v11

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v68, v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v70, v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v29, v0

    :goto_4f
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    goto/16 :goto_4a

    :cond_68
    move/from16 v52, v7

    move-object/from16 v72, v11

    move-object/from16 v67, v13

    const v3, 0x64323633

    if-ne v0, v3, :cond_6a

    if-nez v2, :cond_69

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_50

    :cond_69
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_50
    invoke-static {v7, v3}, Lg9e;->b(ZLjava/lang/String;)V

    move-object/from16 v2, v24

    goto :goto_4f

    :cond_6a
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v0, v4, :cond_6d

    if-nez v2, :cond_6b

    const/4 v7, 0x1

    goto :goto_51

    :cond_6b
    const/4 v7, 0x0

    :goto_51
    invoke-static {v7, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-static {v15, v8}, Lafe;->n(Lu4h;I)Llee;

    move-result-object v0

    invoke-static {v0}, Llee;->c(Llee;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Llee;->d(Llee;)[B

    move-result-object v3

    if-eqz v3, :cond_6c

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    move-object/from16 v35, v0

    move-object v11, v3

    move/from16 v7, v63

    move-object/from16 v13, v67

    goto/16 :goto_4a

    :cond_6c
    move-object/from16 v35, v0

    goto :goto_4f

    :cond_6d
    const v3, 0x62747274

    if-ne v0, v3, :cond_6e

    invoke-static {v15, v8}, Lafe;->m(Lu4h;I)Ljee;

    move-result-object v0

    move-object/from16 v33, v0

    goto :goto_4f

    :cond_6e
    const v3, 0x70617370

    if-ne v0, v3, :cond_6f

    const/16 v3, 0x8

    add-int/2addr v8, v3

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->J()I

    move-result v0

    invoke-virtual {v15}, Lu4h;->J()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    move/from16 v42, v0

    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    const/16 v44, 0x1

    goto/16 :goto_5b

    :cond_6f
    const/16 v3, 0x8

    const v4, 0x73763364

    if-ne v0, v4, :cond_72

    add-int/lit8 v0, v8, 0x8

    :goto_52
    sub-int v3, v0, v8

    if-ge v3, v9, :cond_71

    invoke-virtual {v15, v0}, Lu4h;->l(I)V

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v4

    const v6, 0x70726f6a

    if-ne v4, v6, :cond_70

    invoke-virtual {v15}, Lu4h;->n()[B

    move-result-object v4

    invoke-static {v4, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v41, v0

    goto/16 :goto_4f

    :cond_70
    move v0, v3

    goto :goto_52

    :cond_71
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    const/4 v0, -0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    const/16 v41, 0x0

    goto/16 :goto_5b

    :cond_72
    const v3, 0x73743364

    if-ne v0, v3, :cond_77

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v15, v3}, Lu4h;->m(I)V

    if-nez v0, :cond_57

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v0

    if-eqz v0, :cond_76

    const/4 v4, 0x1

    if-eq v0, v4, :cond_75

    const/4 v4, 0x2

    if-eq v0, v4, :cond_74

    if-eq v0, v3, :cond_73

    goto/16 :goto_46

    :cond_73
    move v1, v3

    goto/16 :goto_4f

    :cond_74
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    const/4 v0, -0x1

    const/4 v1, 0x2

    goto/16 :goto_48

    :cond_75
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    const/4 v0, -0x1

    const/4 v1, 0x1

    goto/16 :goto_48

    :cond_76
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    const/4 v0, -0x1

    const/4 v1, 0x0

    goto/16 :goto_48

    :cond_77
    const/4 v3, 0x3

    const v4, 0x61707643

    if-ne v0, v4, :cond_7c

    const/16 v4, 0xc

    add-int/2addr v8, v4

    add-int/lit8 v0, v9, -0xc

    new-array v2, v0, [B

    invoke-virtual {v15, v8}, Lu4h;->l(I)V

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v6, v0}, Lu4h;->h([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    new-instance v5, Lu4h;

    invoke-direct {v5, v2}, Lu4h;-><init>([B)V

    new-instance v2, Lp1j;

    invoke-direct {v2}, Lp1j;-><init>()V

    new-instance v7, Lp3h;

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v8

    array-length v10, v8

    invoke-direct {v7, v8, v10}, Lp3h;-><init>([BI)V

    invoke-virtual {v5}, Lu4h;->w()I

    move-result v5

    const/16 v8, 0x8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v5}, Lp3h;->l(I)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lp3h;->o(I)V

    invoke-virtual {v7, v8}, Lp3h;->d(I)I

    move-result v10

    move v11, v6

    :goto_53
    if-ge v11, v10, :cond_7b

    invoke-virtual {v7, v5}, Lp3h;->o(I)V

    invoke-virtual {v7, v8}, Lp3h;->d(I)I

    move-result v5

    move v12, v6

    :goto_54
    if-ge v12, v5, :cond_7a

    const/4 v13, 0x6

    invoke-virtual {v7, v13}, Lp3h;->n(I)V

    invoke-virtual {v7}, Lp3h;->p()Z

    move-result v13

    invoke-virtual {v7}, Lp3h;->m()V

    const/16 v14, 0xb

    invoke-virtual {v7, v14}, Lp3h;->o(I)V

    const/4 v14, 0x4

    invoke-virtual {v7, v14}, Lp3h;->n(I)V

    invoke-virtual {v7, v14}, Lp3h;->d(I)I

    move-result v50

    add-int/lit8 v3, v50, 0x8

    invoke-virtual {v2, v3}, Lp1j;->f(I)Lp1j;

    invoke-virtual {v2, v3}, Lp1j;->a(I)Lp1j;

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lp3h;->o(I)V

    if-eqz v13, :cond_79

    invoke-virtual {v7, v8}, Lp3h;->d(I)I

    move-result v13

    invoke-virtual {v7, v8}, Lp3h;->d(I)I

    move-result v50

    invoke-virtual {v7, v3}, Lp3h;->o(I)V

    invoke-virtual {v7}, Lp3h;->p()Z

    move-result v8

    invoke-static {v13}, Lh6j;->a(I)I

    move-result v13

    invoke-virtual {v2, v13}, Lp1j;->c(I)Lp1j;

    if-eq v3, v8, :cond_78

    const/4 v8, 0x2

    goto :goto_55

    :cond_78
    move v8, v3

    :goto_55
    invoke-virtual {v2, v8}, Lp1j;->b(I)Lp1j;

    invoke-static/range {v50 .. v50}, Lh6j;->b(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lp1j;->d(I)Lp1j;

    :cond_79
    add-int/2addr v12, v3

    const/4 v3, 0x3

    const/16 v8, 0x8

    goto :goto_54

    :cond_7a
    const/4 v3, 0x1

    const/4 v14, 0x4

    add-int/2addr v11, v3

    move v5, v3

    const/4 v3, 0x3

    const/16 v8, 0x8

    goto :goto_53

    :cond_7b
    const/4 v14, 0x4

    invoke-virtual {v2}, Lp1j;->g()Lh6j;

    move-result-object v2

    iget v3, v2, Lh6j;->e:I

    iget v5, v2, Lh6j;->f:I

    iget v7, v2, Lh6j;->a:I

    iget v8, v2, Lh6j;->b:I

    iget v2, v2, Lh6j;->c:I

    const-string v10, "video/apv"

    move-object v11, v0

    move/from16 v64, v3

    move v12, v7

    move/from16 v66, v8

    move-object/from16 v13, v67

    const/4 v0, -0x1

    move v7, v5

    move v5, v2

    move-object v2, v10

    goto/16 :goto_5b

    :cond_7c
    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v14, 0x4

    const v3, 0x636f6c72

    if-ne v0, v3, :cond_84

    const/4 v0, -0x1

    if-ne v12, v0, :cond_7e

    if-ne v5, v0, :cond_83

    invoke-virtual {v15}, Lu4h;->A()I

    move-result v3

    const v5, 0x6e636c78

    if-eq v3, v5, :cond_7f

    const v5, 0x6e636c63

    if-ne v3, v5, :cond_7d

    goto :goto_57

    :cond_7d
    const-string v5, "Unsupported color type: "

    invoke-static {v3}, Lrlh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BoxParsers"

    invoke-static {v5, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    move v12, v5

    :cond_7e
    :goto_56
    move/from16 v7, v63

    move-object/from16 v13, v67

    move-object/from16 v11, v72

    goto :goto_5b

    :cond_7f
    :goto_57
    invoke-virtual {v15}, Lu4h;->K()I

    move-result v3

    invoke-virtual {v15}, Lu4h;->K()I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lu4h;->m(I)V

    const/16 v7, 0x13

    if-ne v9, v7, :cond_81

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_80

    move v9, v7

    const/4 v7, 0x1

    goto :goto_58

    :cond_80
    move v9, v7

    :cond_81
    move v7, v6

    :goto_58
    invoke-static {v3}, Lh6j;->a(I)I

    move-result v3

    const/4 v8, 0x1

    if-eq v8, v7, :cond_82

    const/4 v7, 0x2

    goto :goto_59

    :cond_82
    const/4 v7, 0x1

    :goto_59
    invoke-static {v5}, Lh6j;->b(I)I

    move-result v5

    move v12, v3

    move/from16 v66, v7

    goto :goto_56

    :cond_83
    move v12, v0

    goto :goto_56

    :cond_84
    const/4 v0, -0x1

    goto :goto_56

    :goto_5a
    invoke-static {v15}, Lt8e;->a(Lu4h;)Lt8e;

    move-result-object v3

    if-eqz v3, :cond_7e

    iget-object v2, v3, Lt8e;->a:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    move-object/from16 v51, v2

    move-object v2, v3

    goto :goto_56

    :goto_5b
    add-int v9, v54, v9

    move/from16 v0, v53

    move/from16 v14, v61

    move-object/from16 v10, v62

    move/from16 v4, v64

    move-object/from16 v3, v65

    move/from16 v6, v66

    goto/16 :goto_29

    :goto_5c
    if-nez v2, :cond_85

    move-object/from16 v1, v34

    move/from16 v2, v56

    move/from16 v7, v57

    move-object/from16 v5, v62

    goto/16 :goto_5f

    :cond_85
    new-instance v3, Lgpj;

    invoke-direct {v3}, Lgpj;-><init>()V

    move/from16 v7, v57

    invoke-virtual {v3, v7}, Lgpj;->n(I)Lgpj;

    invoke-virtual {v3, v2}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    move-object/from16 v2, v51

    invoke-virtual {v3, v2}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    move/from16 v2, v45

    invoke-virtual {v3, v2}, Lgpj;->J(I)Lgpj;

    move/from16 v2, v43

    invoke-virtual {v3, v2}, Lgpj;->m(I)Lgpj;

    move/from16 v2, v42

    invoke-virtual {v3, v2}, Lgpj;->z(F)Lgpj;

    move/from16 v2, v56

    invoke-virtual {v3, v2}, Lgpj;->D(I)Lgpj;

    move-object/from16 v8, v41

    invoke-virtual {v3, v8}, Lgpj;->B([B)Lgpj;

    invoke-virtual {v3, v1}, Lgpj;->H(I)Lgpj;

    move-object/from16 v11, v72

    invoke-virtual {v3, v11}, Lgpj;->p(Ljava/util/List;)Lgpj;

    move/from16 v1, v59

    invoke-virtual {v3, v1}, Lgpj;->u(I)Lgpj;

    move/from16 v1, v60

    invoke-virtual {v3, v1}, Lgpj;->v(I)Lgpj;

    move-object/from16 v9, v40

    invoke-virtual {v3, v9}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    move-object/from16 v1, v34

    invoke-virtual {v3, v1}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    new-instance v8, Lp1j;

    invoke-direct {v8}, Lp1j;-><init>()V

    invoke-virtual {v8, v12}, Lp1j;->c(I)Lp1j;

    move/from16 v9, v66

    invoke-virtual {v8, v9}, Lp1j;->b(I)Lp1j;

    invoke-virtual {v8, v5}, Lp1j;->d(I)Lp1j;

    if-eqz v29, :cond_86

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_5d

    :cond_86
    const/4 v5, 0x0

    :goto_5d
    invoke-virtual {v8, v5}, Lp1j;->e([B)Lp1j;

    move/from16 v5, v64

    invoke-virtual {v8, v5}, Lp1j;->f(I)Lp1j;

    move/from16 v5, v63

    invoke-virtual {v8, v5}, Lp1j;->a(I)Lp1j;

    invoke-virtual {v8}, Lp1j;->g()Lh6j;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgpj;->d(Lh6j;)Lgpj;

    if-eqz v33, :cond_87

    invoke-static/range {v33 .. v33}, Ljee;->a(Ljee;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v5

    invoke-virtual {v3, v5}, Lgpj;->a(I)Lgpj;

    invoke-static/range {v33 .. v33}, Ljee;->b(Ljee;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v5

    invoke-virtual {v3, v5}, Lgpj;->y(I)Lgpj;

    goto :goto_5e

    :cond_87
    if-eqz v35, :cond_88

    invoke-static/range {v35 .. v35}, Llee;->a(Llee;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v5

    invoke-virtual {v3, v5}, Lgpj;->a(I)Lgpj;

    invoke-static/range {v35 .. v35}, Llee;->b(Llee;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v5

    invoke-virtual {v3, v5}, Lgpj;->y(I)Lgpj;

    :cond_88
    :goto_5e
    invoke-virtual {v3}, Lgpj;->K()Lerj;

    move-result-object v3

    move-object/from16 v5, v62

    iput-object v3, v5, Lqee;->b:Lerj;

    :goto_5f
    add-int v3, v61, v53

    invoke-virtual {v15, v3}, Lu4h;->l(I)V

    const/4 v3, 0x1

    add-int/lit8 v13, v36, 0x1

    move-object/from16 v11, p4

    move v6, v2

    move v2, v4

    move-object v4, v15

    move/from16 v3, v18

    move-object/from16 v15, v19

    move/from16 v42, v20

    move-object/from16 v12, v22

    move-object/from16 v14, v28

    move/from16 v34, v30

    move-object/from16 v0, v39

    move-wide/from16 v8, v48

    move-object/from16 v41, v55

    move-object/from16 v10, v58

    const/16 v25, 0x2

    move-object/from16 v73, v5

    move-object v5, v1

    move-object/from16 v1, v73

    goto/16 :goto_1b

    :cond_89
    move-object/from16 v39, v0

    move-object v5, v1

    move v4, v2

    move-wide/from16 v48, v8

    move-object/from16 v58, v10

    move-object/from16 v22, v12

    move-object/from16 v28, v14

    move-object/from16 v19, v15

    move/from16 v30, v34

    move-object/from16 v55, v41

    move/from16 v20, v42

    const/4 v6, 0x0

    const/4 v14, 0x4

    const v23, 0x54544d4c

    const v25, 0x74783367

    const v27, 0x77767474

    if-nez p5, :cond_91

    const v0, 0x65647473

    move-object/from16 v2, v58

    invoke-virtual {v2, v0}, Lmih;->b(I)Lmih;

    move-result-object v0

    if-eqz v0, :cond_90

    const v1, 0x656c7374

    invoke-virtual {v0, v1}, Lmih;->c(I)Lkjh;

    move-result-object v0

    if-nez v0, :cond_8a

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v12, 0x2

    goto :goto_63

    :cond_8a
    iget-object v0, v0, Lkjh;->b:Lu4h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Lafe;->a(I)I

    move-result v3

    invoke-virtual {v0}, Lu4h;->J()I

    move-result v7

    new-array v8, v7, [J

    new-array v9, v7, [J

    move v10, v6

    :goto_60
    if-ge v10, v7, :cond_8e

    const/4 v11, 0x1

    if-ne v3, v11, :cond_8b

    invoke-virtual {v0}, Lu4h;->Q()J

    move-result-wide v12

    goto :goto_61

    :cond_8b
    invoke-virtual {v0}, Lu4h;->O()J

    move-result-wide v12

    :goto_61
    aput-wide v12, v8, v10

    if-ne v3, v11, :cond_8c

    invoke-virtual {v0}, Lu4h;->N()J

    move-result-wide v12

    goto :goto_62

    :cond_8c
    invoke-virtual {v0}, Lu4h;->A()I

    move-result v12

    int-to-long v12, v12

    :goto_62
    aput-wide v12, v9, v10

    invoke-virtual {v0}, Lu4h;->e()S

    move-result v12

    if-ne v12, v11, :cond_8d

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lu4h;->m(I)V

    add-int/2addr v10, v11

    goto :goto_60

    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    const/4 v12, 0x2

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_63
    if-eqz v3, :cond_8f

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    goto :goto_66

    :cond_8f
    :goto_64
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_66

    :cond_90
    :goto_65
    const/16 v1, 0x8

    const/4 v12, 0x2

    goto :goto_64

    :cond_91
    move-object/from16 v2, v58

    goto :goto_65

    :goto_66
    iget-object v7, v5, Lqee;->b:Lerj;

    if-nez v7, :cond_92

    move-object/from16 v0, p7

    const/4 v3, 0x0

    goto :goto_67

    :cond_92
    new-instance v8, Lsfe;

    move-object/from16 v31, v8

    invoke-static/range {v19 .. v19}, Lyee;->a(Lyee;)I

    move-result v32

    invoke-static/range {v39 .. v39}, Lnee;->b(Lnee;)J

    move-result-wide v34

    invoke-static/range {v39 .. v39}, Lnee;->a(Lnee;)J

    move-result-wide v40

    iget v9, v5, Lqee;->d:I

    move/from16 v43, v9

    iget-object v9, v5, Lqee;->a:[Ltfe;

    move-object/from16 v44, v9

    iget v5, v5, Lqee;->c:I

    move/from16 v45, v5

    move/from16 v33, v30

    move-wide/from16 v36, v48

    move-wide/from16 v38, v46

    move-object/from16 v42, v7

    move-object/from16 v46, v0

    move-object/from16 v47, v3

    invoke-direct/range {v31 .. v47}, Lsfe;-><init>(IIJJJJLerj;I[Ltfe;I[J[J)V

    move-object/from16 v0, p7

    move-object v3, v8

    :goto_67
    invoke-interface {v0, v3}, Lm2i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsfe;

    if-eqz v3, :cond_93

    const v5, 0x6d646961

    invoke-virtual {v2, v5}, Lmih;->b(I)Lmih;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x6d696e66

    invoke-virtual {v2, v7}, Lmih;->b(I)Lmih;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    invoke-virtual {v2, v8}, Lmih;->b(I)Lmih;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p1

    invoke-static {v3, v2, v9}, Lafe;->e(Lsfe;Lmih;Lq9e;)Lvfe;

    move-result-object v2

    move-object/from16 v3, v55

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_68
    const/4 v2, 0x1

    goto :goto_69

    :cond_93
    move-object/from16 v9, p1

    move-object/from16 v3, v55

    const v5, 0x6d646961

    const v7, 0x6d696e66

    const v8, 0x7374626c

    goto :goto_68

    :goto_69
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move v8, v1

    move-object v6, v3

    move v3, v5

    move v9, v10

    move v1, v14

    move-object/from16 v12, v22

    move-object/from16 v13, v24

    move-object/from16 v14, v28

    goto/16 :goto_0

    :cond_94
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_95
    move-object v3, v6

    return-object v3
.end method

.method public static g(Lu4h;)V
    .locals 3

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    return-void
.end method

.method public static h(Lu4h;)I
    .locals 3

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static i(Lu4h;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result p0

    return p0
.end method

.method public static j(Lu4h;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v7, v8}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    invoke-virtual {v0, v7}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    invoke-virtual {v0, v13}, Lu4h;->m(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v3, v7}, Lg9e;->b(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v3, v7}, Lg9e;->b(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    invoke-virtual {v0, v3}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Lafe;->a(I)I

    move-result v3

    invoke-virtual {v0, v5}, Lu4h;->m(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v5}, Lu4h;->m(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v6, v7}, Lu4h;->h([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v6, v7}, Lu4h;->h([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Ltfe;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Ltfe;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lg9e;->b(ZLjava/lang/String;)V

    sget v5, Lkfh;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static k(Lu4h;)Lh6j;
    .locals 15

    new-instance v0, Lp1j;

    invoke-direct {v0}, Lp1j;-><init>()V

    new-instance v1, Lp3h;

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lp3h;-><init>([BI)V

    invoke-virtual {p0}, Lu4h;->w()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lp3h;->l(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lp3h;->o(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lp3h;->d(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v5

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual {v0, v8}, Lp1j;->f(I)Lp1j;

    invoke-virtual {v0, v8}, Lp1j;->a(I)Lp1j;

    goto :goto_1

    :cond_1
    move v5, v9

    move v4, v10

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    move v8, v2

    :cond_3
    invoke-virtual {v0, v8}, Lp1j;->f(I)Lp1j;

    invoke-virtual {v0, v8}, Lp1j;->a(I)Lp1j;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->m()V

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lp3h;->d(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported obu_type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v6

    invoke-virtual {v1}, Lp3h;->m()V

    if-eqz v6, :cond_8

    invoke-virtual {v1, v2}, Lp3h;->d(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_7

    goto :goto_2

    :cond_7
    const-string p0, "Excessive obu_size"

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lp3h;->d(I)I

    move-result v6

    invoke-virtual {v1}, Lp3h;->m()V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, p0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Lp3h;->d(I)I

    move-result v11

    move v12, v9

    :goto_3
    const/4 v13, 0x7

    if-gt v12, v11, :cond_d

    invoke-virtual {v1, v7}, Lp3h;->n(I)V

    invoke-virtual {v1, v8}, Lp3h;->d(I)I

    move-result v14

    if-le v14, v13, :cond_c

    invoke-virtual {v1}, Lp3h;->m()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v5}, Lp3h;->d(I)I

    move-result v7

    invoke-virtual {v1, v5}, Lp3h;->d(I)I

    move-result v5

    add-int/2addr v7, p0

    invoke-virtual {v1, v7}, Lp3h;->n(I)V

    add-int/2addr v5, p0

    invoke-virtual {v1, v5}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1, v13}, Lp3h;->n(I)V

    :cond_e
    invoke-virtual {v1, v13}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1, v10}, Lp3h;->n(I)V

    :cond_f
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v1, p0}, Lp3h;->d(I)I

    move-result v7

    if-lez v7, :cond_11

    :goto_4
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v1, p0}, Lp3h;->n(I)V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v1, v3}, Lp3h;->n(I)V

    :cond_12
    invoke-virtual {v1, v3}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v3

    if-ne v6, v10, :cond_13

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Lp3h;->m()V

    goto :goto_5

    :cond_13
    if-ne v6, p0, :cond_14

    goto :goto_6

    :cond_14
    :goto_5
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v3

    if-eqz v3, :cond_15

    move v9, p0

    :cond_15
    :goto_6
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Lp3h;->d(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lp3h;->d(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lp3h;->d(I)I

    move-result v2

    if-nez v9, :cond_18

    if-ne v3, p0, :cond_18

    if-ne v5, v4, :cond_17

    if-nez v2, :cond_16

    move v1, p0

    move v3, v1

    goto :goto_8

    :cond_16
    move v3, p0

    goto :goto_7

    :cond_17
    move v3, p0

    :cond_18
    move v4, v5

    :goto_7
    invoke-virtual {v1, p0}, Lp3h;->d(I)I

    move-result v1

    :goto_8
    invoke-static {v3}, Lh6j;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lp1j;->c(I)Lp1j;

    if-ne v1, p0, :cond_19

    goto :goto_9

    :cond_19
    move p0, v10

    :goto_9
    invoke-virtual {v0, p0}, Lp1j;->b(I)Lp1j;

    invoke-static {v4}, Lh6j;->b(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lp1j;->d(I)Lp1j;

    :cond_1a
    invoke-virtual {v0}, Lp1j;->g()Lh6j;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lu4h;)Lhre;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lu4h;->e()S

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lu4h;->m(I)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v1, Lhre;

    new-instance v3, Lomh;

    invoke-direct {v3, v2, p0}, Lomh;-><init>(FF)V

    const/4 p0, 0x1

    new-array p0, p0, [Liqe;

    aput-object v3, p0, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3, p0}, Lhre;-><init>(J[Liqe;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lu4h;I)Ljee;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lu4h;->l(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v0

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide p0

    new-instance v2, Ljee;

    invoke-direct {v2, p0, p1, v0, v1}, Ljee;-><init>(JJ)V

    return-object v2
.end method

.method public static n(Lu4h;I)Llee;
    .locals 11

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Lu4h;->l(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lu4h;->m(I)V

    invoke-static {p0}, Lafe;->h(Lu4h;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v2

    invoke-virtual {p0, v2}, Lu4h;->m(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lu4h;->m(I)V

    invoke-static {p0}, Lafe;->h(Lu4h;)I

    invoke-virtual {p0}, Lu4h;->G()I

    move-result v0

    invoke-static {v0}, Lbue;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v0

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lu4h;->m(I)V

    invoke-static {p0}, Lafe;->h(Lu4h;)I

    move-result p1

    new-array v5, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Lu4h;->h([BII)V

    const-wide/16 p0, 0x0

    cmp-long v6, v3, p0

    const-wide/16 v7, -0x1

    if-gtz v6, :cond_4

    move-wide v9, v7

    goto :goto_0

    :cond_4
    move-wide v9, v3

    :goto_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v7

    :goto_1
    new-instance p0, Llee;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Llee;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Llee;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Llee;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method public static o()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static p(Lu4h;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lqee;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const/4 v9, 0x1

    const/16 v11, 0x10

    add-int/lit8 v12, v2, 0x10

    invoke-virtual {v0, v12}, Lu4h;->l(I)V

    const/4 v12, 0x6

    const/16 v13, 0x8

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v15

    invoke-virtual {v0, v12}, Lu4h;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v13}, Lu4h;->m(I)V

    const/4 v15, 0x0

    :goto_0
    const/high16 v16, 0x10000000

    const/16 v17, 0x3

    const/4 v10, 0x4

    const/4 v8, 0x2

    if-eqz v15, :cond_a

    if-ne v15, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v15, v8, :cond_4c

    invoke-virtual {v0, v11}, Lu4h;->m(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->N()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v12, v14

    invoke-virtual/range {p0 .. p0}, Lu4h;->J()I

    move-result v14

    invoke-virtual {v0, v10}, Lu4h;->m(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->J()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lu4h;->J()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    and-int/lit8 v19, v19, 0x2

    const/16 v10, 0x20

    if-nez v20, :cond_9

    if-ne v15, v13, :cond_2

    move/from16 v10, v17

    goto :goto_1

    :cond_2
    if-ne v15, v11, :cond_4

    if-eqz v19, :cond_3

    move/from16 v10, v16

    goto :goto_1

    :cond_3
    move v10, v8

    goto :goto_1

    :cond_4
    const/16 v11, 0x18

    if-ne v15, v11, :cond_6

    if-eqz v19, :cond_5

    const/high16 v10, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v10, 0x15

    goto :goto_1

    :cond_6
    if-ne v15, v10, :cond_8

    if-eqz v19, :cond_7

    const/high16 v10, 0x60000000

    goto :goto_1

    :cond_7
    const/16 v10, 0x16

    goto :goto_1

    :cond_8
    const/4 v10, -0x1

    goto :goto_1

    :cond_9
    if-ne v15, v10, :cond_8

    const/4 v10, 0x4

    :goto_1
    invoke-virtual {v0, v13}, Lu4h;->m(I)V

    move v11, v14

    const/4 v14, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v10

    invoke-virtual {v0, v12}, Lu4h;->m(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->H()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v0, v14}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v14

    if-ne v15, v9, :cond_b

    invoke-virtual {v0, v11}, Lu4h;->m(I)V

    :cond_b
    move v11, v10

    const/4 v10, -0x1

    :goto_3
    const v15, 0x73616d72

    const v8, 0x69616d66

    const v9, 0x73617762

    if-ne v1, v8, :cond_c

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_5

    :cond_c
    if-ne v1, v15, :cond_d

    const/16 v11, 0x1f40

    move v12, v11

    :goto_4
    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    if-ne v1, v9, :cond_e

    const/16 v1, 0x3e80

    move v12, v1

    move v1, v9

    goto :goto_4

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v13

    const v8, 0x656e6361

    if-ne v1, v8, :cond_11

    invoke-static {v0, v2, v3}, Lafe;->j(Lu4h;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ltfe;

    iget-object v9, v9, Ltfe;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    :goto_6
    iget-object v9, v7, Lqee;->a:[Ltfe;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ltfe;

    aput-object v1, v9, p9

    :cond_10
    move v1, v8

    invoke-virtual {v0, v13}, Lu4h;->l(I)V

    :cond_11
    const v8, 0x61632d33

    const-string v9, "audio/mhm1"

    if-ne v1, v8, :cond_12

    const-string v1, "audio/ac3"

    goto/16 :goto_a

    :cond_12
    const v8, 0x65632d33

    if-ne v1, v8, :cond_13

    const-string v1, "audio/eac3"

    goto/16 :goto_a

    :cond_13
    const v8, 0x61632d34

    if-ne v1, v8, :cond_14

    const-string v1, "audio/ac4"

    goto/16 :goto_a

    :cond_14
    const v8, 0x64747363

    if-ne v1, v8, :cond_15

    const-string v1, "audio/vnd.dts"

    goto/16 :goto_a

    :cond_15
    const v8, 0x64747368

    if-eq v1, v8, :cond_2a

    const v8, 0x6474736c

    if-ne v1, v8, :cond_16

    goto/16 :goto_9

    :cond_16
    const v8, 0x64747365

    if-ne v1, v8, :cond_17

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_a

    :cond_17
    const v8, 0x64747378

    if-ne v1, v8, :cond_18

    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_a

    :cond_18
    if-ne v1, v15, :cond_19

    const-string v1, "audio/3gpp"

    goto/16 :goto_a

    :cond_19
    const v8, 0x73617762

    if-ne v1, v8, :cond_1a

    const-string v1, "audio/amr-wb"

    goto/16 :goto_a

    :cond_1a
    const v8, 0x736f7774

    const-string v15, "audio/raw"

    if-ne v1, v8, :cond_1b

    :goto_7
    move-object v1, v15

    const/4 v10, 0x2

    goto/16 :goto_a

    :cond_1b
    const v8, 0x74776f73

    if-ne v1, v8, :cond_1c

    move-object v1, v15

    move/from16 v10, v16

    goto/16 :goto_a

    :cond_1c
    const v8, 0x6c70636d

    if-ne v1, v8, :cond_1e

    const/4 v8, -0x1

    if-ne v10, v8, :cond_1d

    goto :goto_7

    :cond_1d
    move-object v1, v15

    goto/16 :goto_a

    :cond_1e
    const v8, 0x2e6d7032

    if-eq v1, v8, :cond_29

    const v8, 0x2e6d7033

    if-ne v1, v8, :cond_1f

    goto :goto_8

    :cond_1f
    const v8, 0x6d686131

    if-ne v1, v8, :cond_20

    const-string v1, "audio/mha1"

    goto :goto_a

    :cond_20
    const v8, 0x6d686d31

    if-ne v1, v8, :cond_21

    move-object v1, v9

    goto :goto_a

    :cond_21
    const v8, 0x616c6163

    if-ne v1, v8, :cond_22

    const-string v1, "audio/alac"

    goto :goto_a

    :cond_22
    const v8, 0x616c6177

    if-ne v1, v8, :cond_23

    const-string v1, "audio/g711-alaw"

    goto :goto_a

    :cond_23
    const v8, 0x756c6177

    if-ne v1, v8, :cond_24

    const-string v1, "audio/g711-mlaw"

    goto :goto_a

    :cond_24
    const v8, 0x4f707573

    if-ne v1, v8, :cond_25

    const-string v1, "audio/opus"

    goto :goto_a

    :cond_25
    const v8, 0x664c6143

    if-ne v1, v8, :cond_26

    const-string v1, "audio/flac"

    goto :goto_a

    :cond_26
    const v8, 0x6d6c7061

    if-ne v1, v8, :cond_27

    const-string v1, "audio/true-hd"

    goto :goto_a

    :cond_27
    const v8, 0x69616d66

    if-ne v1, v8, :cond_28

    const-string v1, "audio/iamf"

    goto :goto_a

    :cond_28
    const/4 v1, 0x0

    goto :goto_a

    :cond_29
    :goto_8
    const-string v1, "audio/mpeg"

    goto :goto_a

    :cond_2a
    :goto_9
    const-string v1, "audio/vnd.dts.hd"

    :goto_a
    move/from16 v22, v10

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    :goto_b
    sub-int v10, v13, v2

    if-ge v10, v3, :cond_49

    invoke-virtual {v0, v13}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v10

    if-lez v10, :cond_2b

    const/4 v2, 0x1

    goto :goto_c

    :cond_2b
    const/4 v2, 0x0

    :goto_c
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v2

    move-object/from16 p9, v8

    const v8, 0x6d686143

    if-ne v2, v8, :cond_2e

    const/16 v8, 0x8

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lu4h;->m(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v3

    invoke-virtual {v0, v2}, Lu4h;->m(I)V

    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object v8, v2

    goto :goto_e

    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lu4h;->K()I

    move-result v2

    new-array v3, v2, [B

    move-object/from16 p9, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v2}, Lu4h;->h([BII)V

    if-nez v15, :cond_2d

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    :goto_f
    move-object/from16 v23, v9

    const/16 v19, 0x2

    move v9, v8

    :goto_10
    move-object/from16 v8, p9

    goto/16 :goto_20

    :cond_2d
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    goto :goto_f

    :cond_2e
    const v8, 0x6d686150

    if-ne v2, v8, :cond_31

    const/16 v8, 0x8

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->G()I

    move-result v2

    if-lez v2, :cond_30

    new-array v3, v2, [B

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v2}, Lu4h;->h([BII)V

    if-nez v15, :cond_2f

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    goto :goto_f

    :cond_2f
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    move-object/from16 v8, p9

    move-object/from16 v23, v9

    :goto_11
    const/4 v9, 0x0

    :goto_12
    const/16 v19, 0x2

    goto/16 :goto_20

    :cond_30
    move-object/from16 v23, v9

    :goto_13
    const/4 v9, 0x0

    const/16 v19, 0x2

    goto :goto_10

    :cond_31
    const v8, 0x65736473

    if-eq v2, v8, :cond_43

    if-eqz p6, :cond_36

    const v8, 0x77617665

    if-ne v2, v8, :cond_36

    invoke-virtual/range {p0 .. p0}, Lu4h;->w()I

    move-result v2

    if-lt v2, v13, :cond_32

    move/from16 v23, v2

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto :goto_14

    :cond_32
    move/from16 v23, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_14
    invoke-static {v8, v2}, Lg9e;->b(ZLjava/lang/String;)V

    move/from16 v8, v23

    :goto_15
    sub-int v2, v8, v13

    if-ge v2, v10, :cond_35

    invoke-virtual {v0, v8}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v2

    if-lez v2, :cond_33

    move-object/from16 v23, v9

    const/4 v9, 0x1

    goto :goto_16

    :cond_33
    move-object/from16 v23, v9

    const/4 v9, 0x0

    :goto_16
    invoke-static {v9, v3}, Lg9e;->b(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->A()I

    move-result v9

    move-object/from16 v24, v3

    const v3, 0x65736473

    if-eq v9, v3, :cond_34

    add-int/2addr v8, v2

    move-object/from16 v9, v23

    move-object/from16 v3, v24

    goto :goto_15

    :cond_34
    const/4 v2, -0x1

    const v3, 0x616c6163

    :goto_17
    const/4 v9, 0x4

    const/16 v19, 0x2

    goto/16 :goto_1c

    :cond_35
    move-object/from16 v23, v9

    const/4 v2, -0x1

    const v3, 0x616c6163

    const/4 v8, -0x1

    goto :goto_17

    :cond_36
    move-object/from16 v23, v9

    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    invoke-static {v0, v13}, Lafe;->m(Lu4h;I)Ljee;

    move-result-object v21

    :goto_18
    move-object/from16 v8, p9

    goto :goto_11

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    const/16 v3, 0x8

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lw7e;->c(Lu4h;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lerj;

    move-result-object v2

    iput-object v2, v7, Lqee;->b:Lerj;

    goto/16 :goto_13

    :cond_38
    const/16 v3, 0x8

    const v8, 0x64656333

    if-ne v2, v8, :cond_39

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lw7e;->d(Lu4h;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lerj;

    move-result-object v2

    iput-object v2, v7, Lqee;->b:Lerj;

    goto/16 :goto_13

    :cond_39
    const v8, 0x64616334

    if-ne v2, v8, :cond_3a

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, La8e;->a(Lu4h;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lerj;

    move-result-object v2

    iput-object v2, v7, Lqee;->b:Lerj;

    goto/16 :goto_13

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v14, :cond_3b

    move-object/from16 v8, p9

    move v12, v14

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto/16 :goto_12

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v3, 0x0

    const v8, 0x64647473

    if-eq v2, v8, :cond_3d

    const v8, 0x75647473

    if-ne v2, v8, :cond_3e

    :cond_3d
    const v3, 0x616c6163

    const/4 v9, 0x4

    const/16 v19, 0x2

    goto/16 :goto_1b

    :cond_3e
    const v8, 0x644f7073

    if-ne v2, v8, :cond_3f

    const/16 v8, 0x8

    add-int/lit8 v2, v13, 0x8

    add-int/lit8 v9, v10, -0x8

    sget-object v15, Lafe;->a:[B

    array-length v3, v15

    add-int v8, v3, v9

    invoke-static {v15, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    invoke-virtual {v0, v8, v3, v9}, Lu4h;->h([BII)V

    invoke-static {v8}, Lx9e;->e([B)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_18

    :cond_3f
    const v3, 0x64664c61

    if-ne v2, v3, :cond_40

    add-int/lit8 v2, v13, 0xc

    add-int/lit8 v3, v10, -0xc

    add-int/lit8 v8, v10, -0x8

    new-array v8, v8, [B

    const/16 v9, 0x66

    const/4 v15, 0x0

    aput-byte v9, v8, v15

    const/16 v9, 0x4c

    const/4 v15, 0x1

    aput-byte v9, v8, v15

    const/16 v9, 0x61

    const/16 v19, 0x2

    aput-byte v9, v8, v19

    const/16 v9, 0x43

    aput-byte v9, v8, v17

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9, v3}, Lu4h;->h([BII)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    :goto_19
    move-object/from16 v8, p9

    const/4 v9, 0x0

    goto/16 :goto_20

    :cond_40
    const v3, 0x616c6163

    const/4 v9, 0x4

    const/16 v19, 0x2

    if-ne v2, v3, :cond_42

    add-int/lit8 v2, v13, 0xc

    add-int/lit8 v8, v10, -0xc

    new-array v11, v8, [B

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2, v8}, Lu4h;->h([BII)V

    sget-object v2, Lvcg;->a:[B

    new-instance v2, Lu4h;

    invoke-direct {v2, v11}, Lu4h;-><init>([B)V

    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v8

    const/16 v12, 0x14

    invoke-virtual {v2, v12}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->J()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    move v11, v2

    move v12, v8

    :cond_41
    :goto_1a
    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_42
    const v8, 0x69616362

    if-ne v2, v8, :cond_41

    const/16 v2, 0x9

    add-int/lit8 v8, v13, 0x9

    invoke-virtual {v0, v8}, Lu4h;->l(I)V

    invoke-virtual/range {p0 .. p0}, Lu4h;->P()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v8

    new-array v15, v8, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v8}, Lu4h;->h([BII)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    goto :goto_19

    :goto_1b
    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    invoke-virtual {v2, v4}, Lgpj;->n(I)Lgpj;

    invoke-virtual {v2, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2, v11}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v2, v12}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v2, v6}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    invoke-virtual {v2, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object v2

    iput-object v2, v7, Lqee;->b:Lerj;

    goto :goto_1a

    :cond_43
    move-object/from16 v23, v9

    const v3, 0x616c6163

    const/4 v9, 0x4

    const/16 v19, 0x2

    move v8, v13

    const/4 v2, -0x1

    :goto_1c
    if-eq v8, v2, :cond_41

    invoke-static {v0, v8}, Lafe;->n(Lu4h;I)Llee;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Llee;->c(Llee;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Llee;->d(Llee;)[B

    move-result-object v8

    if-eqz v8, :cond_41

    const-string v15, "audio/vorbis"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    new-instance v15, Lu4h;

    invoke-direct {v15, v8}, Lu4h;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lu4h;->m(I)V

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v15}, Lu4h;->u()I

    move-result v20

    if-lez v20, :cond_44

    invoke-virtual {v15}, Lu4h;->z()I

    move-result v9

    const/16 v0, 0xff

    if-ne v9, v0, :cond_45

    invoke-virtual {v15, v2}, Lu4h;->m(I)V

    add-int/2addr v3, v0

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v9, 0x4

    goto :goto_1d

    :cond_44
    const/16 v0, 0xff

    :cond_45
    invoke-virtual {v15}, Lu4h;->G()I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v15}, Lu4h;->u()I

    move-result v9

    if-lez v9, :cond_46

    invoke-virtual {v15}, Lu4h;->z()I

    move-result v9

    if-ne v9, v0, :cond_46

    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Lu4h;->m(I)V

    add-int/2addr v2, v0

    goto :goto_1e

    :cond_46
    const/4 v9, 0x1

    invoke-virtual {v15}, Lu4h;->G()I

    move-result v18

    add-int v2, v2, v18

    new-array v0, v3, [B

    invoke-virtual {v15}, Lu4h;->w()I

    move-result v15

    const/4 v9, 0x0

    invoke-static {v8, v15, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v15, v3

    array-length v3, v8

    add-int/2addr v15, v2

    sub-int/2addr v3, v15

    new-array v2, v3, [B

    invoke-static {v8, v15, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    goto/16 :goto_10

    :cond_47
    const/4 v9, 0x0

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {v8}, Lp7e;->a([B)Ln7e;

    move-result-object v0

    iget v12, v0, Ln7e;->a:I

    iget v11, v0, Ln7e;->b:I

    iget-object v0, v0, Ln7e;->c:Ljava/lang/String;

    goto :goto_1f

    :cond_48
    move-object/from16 v0, p9

    :goto_1f
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v15

    move-object v8, v0

    :goto_20
    add-int/2addr v13, v10

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v9, v23

    goto/16 :goto_b

    :cond_49
    move-object/from16 p9, v8

    iget-object v0, v7, Lqee;->b:Lerj;

    if-nez v0, :cond_4c

    if-eqz v1, :cond_4c

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    invoke-virtual {v0, v4}, Lgpj;->n(I)Lgpj;

    invoke-virtual {v0, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    move-object/from16 v8, p9

    invoke-virtual {v0, v8}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, v11}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v0, v12}, Lgpj;->F(I)Lgpj;

    move/from16 v10, v22

    invoke-virtual {v0, v10}, Lgpj;->x(I)Lgpj;

    invoke-virtual {v0, v15}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v0, v6}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    invoke-virtual {v0, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    if-eqz v16, :cond_4a

    invoke-static/range {v16 .. v16}, Llee;->a(Llee;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lgpj;->a(I)Lgpj;

    invoke-static/range {v16 .. v16}, Llee;->b(Llee;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lgpj;->y(I)Lgpj;

    goto :goto_21

    :cond_4a
    if-eqz v21, :cond_4b

    invoke-static/range {v21 .. v21}, Ljee;->a(Ljee;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lgpj;->a(I)Lgpj;

    invoke-static/range {v21 .. v21}, Ljee;->b(Ljee;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/s7;->f(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lgpj;->y(I)Lgpj;

    :cond_4b
    :goto_21
    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    iput-object v0, v7, Lqee;->b:Lerj;

    :cond_4c
    return-void
.end method
