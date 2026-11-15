.class public abstract Le3/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/b$k;,
        Le3/b$e;,
        Le3/b$h;,
        Le3/b$i;,
        Le3/b$j;,
        Le3/b$f;,
        Le3/b$b;,
        Le3/b$l;,
        Le3/b$d;,
        Le3/b$g;,
        Le3/b$c;,
        Le3/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Le3/b;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static A(Le3/t;Landroidx/media3/container/d$b;Lk2/e0;)Le3/w;
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v5, Le3/b$i;

    iget-object v6, v1, Le3/t;->g:Landroidx/media3/common/r;

    invoke-direct {v5, v3, v6}, Le3/b$i;-><init>(Landroidx/media3/container/d$c;Landroidx/media3/common/r;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 4
    new-instance v5, Le3/b$j;

    invoke-direct {v5, v3}, Le3/b$j;-><init>(Landroidx/media3/container/d$c;)V

    .line 5
    :goto_0
    invoke-interface {v5}, Le3/b$f;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Le3/w;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    return-object v9

    .line 7
    :cond_1
    iget v7, v1, Le3/t;->b:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Le3/t;->f:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    const v12, 0x49742400    # 1000000.0f

    div-float/2addr v11, v12

    div-float/2addr v7, v11

    .line 8
    iget-object v11, v1, Le3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v11}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v7

    .line 9
    invoke-virtual {v1, v7}, Le3/t;->a(Landroidx/media3/common/r;)Le3/t;

    move-result-object v1

    :cond_2
    const v7, 0x7374636f

    .line 10
    invoke-virtual {v0, v7}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v7

    const/4 v11, 0x1

    if-nez v7, :cond_3

    const v7, 0x636f3634

    .line 11
    invoke-virtual {v0, v7}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/d$c;

    move v12, v11

    goto :goto_1

    :cond_3
    move v12, v6

    .line 12
    :goto_1
    iget-object v7, v7, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v13, 0x73747363

    .line 13
    invoke-virtual {v0, v13}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/container/d$c;

    iget-object v13, v13, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v14, 0x73747473

    .line 14
    invoke-virtual {v0, v14}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v14

    invoke-static {v14}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/container/d$c;

    iget-object v14, v14, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v15, 0x73747373

    .line 15
    invoke-virtual {v0, v15}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 16
    iget-object v15, v15, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    .line 17
    invoke-virtual {v0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 19
    :goto_3
    new-instance v4, Le3/b$b;

    invoke-direct {v4, v13, v7, v12}, Le3/b$b;-><init>(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    const/16 v7, 0xc

    .line 20
    invoke-virtual {v14, v7}, Landroidx/media3/common/util/j0;->W(I)V

    .line 21
    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v12

    sub-int/2addr v12, v11

    .line 22
    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v13

    .line 23
    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v6

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v18

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    const/4 v8, -0x1

    if-eqz v15, :cond_8

    .line 26
    invoke-virtual {v15, v7}, Landroidx/media3/common/util/j0;->W(I)V

    .line 27
    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->L()I

    move-result v7

    if-lez v7, :cond_7

    .line 28
    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->L()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_7
    move/from16 v16, v8

    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    move/from16 v16, v8

    const/4 v7, 0x0

    .line 29
    :goto_5
    invoke-interface {v5}, Le3/b$f;->a()I

    move-result v9

    .line 30
    iget-object v10, v1, Le3/t;->g:Landroidx/media3/common/r;

    iget-object v10, v10, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eq v9, v8, :cond_a

    .line 31
    const-string v8, "audio/raw"

    .line 32
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "audio/g711-mlaw"

    .line 33
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "audio/g711-alaw"

    .line 34
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    if-nez v12, :cond_a

    if-nez v18, :cond_a

    if-nez v7, :cond_a

    move v8, v11

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_c

    .line 35
    iget v0, v4, Le3/b$b;->a:I

    new-array v5, v0, [J

    .line 36
    new-array v0, v0, [I

    .line 37
    :goto_7
    invoke-virtual {v4}, Le3/b$b;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 38
    iget v7, v4, Le3/b$b;->b:I

    iget-wide v12, v4, Le3/b$b;->d:J

    aput-wide v12, v5, v7

    .line 39
    iget v8, v4, Le3/b$b;->c:I

    aput v8, v0, v7

    goto :goto_7

    :cond_b
    int-to-long v6, v6

    .line 40
    invoke-static {v9, v5, v0, v6, v7}, Le3/d;->a(I[J[IJ)Le3/d$b;

    move-result-object v0

    .line 41
    iget-object v4, v0, Le3/d$b;->a:[J

    .line 42
    iget-object v5, v0, Le3/d$b;->b:[I

    .line 43
    iget v6, v0, Le3/d$b;->c:I

    .line 44
    iget-object v7, v0, Le3/d$b;->d:[J

    .line 45
    iget-object v8, v0, Le3/d$b;->e:[I

    .line 46
    iget-wide v9, v0, Le3/d$b;->f:J

    .line 47
    iget-wide v12, v0, Le3/d$b;->g:J

    move-object v11, v1

    move-object v2, v5

    move v14, v6

    move-object v15, v7

    move-object/from16 v28, v8

    move-wide v0, v9

    goto/16 :goto_14

    .line 48
    :cond_c
    new-array v8, v3, [J

    .line 49
    new-array v9, v3, [I

    .line 50
    new-array v10, v3, [J

    .line 51
    new-array v11, v3, [I

    move/from16 p1, v12

    move-object/from16 v24, v14

    move/from16 v2, v16

    move/from16 v25, v18

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .line 52
    :goto_8
    const-string v12, "BoxParsers"

    if-ge v1, v3, :cond_16

    move-wide/from16 v32, v28

    move/from16 v28, v16

    const/16 v16, 0x1

    :goto_9
    if-nez v28, :cond_d

    .line 53
    invoke-virtual {v4}, Le3/b$b;->a()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v29, v6

    move/from16 v34, v7

    .line 54
    iget-wide v6, v4, Le3/b$b;->d:J

    move/from16 v35, v3

    .line 55
    iget v3, v4, Le3/b$b;->c:I

    move/from16 v28, v3

    move-wide/from16 v32, v6

    move/from16 v6, v29

    move/from16 v7, v34

    move/from16 v3, v35

    goto :goto_9

    :cond_d
    move/from16 v35, v3

    move/from16 v29, v6

    move/from16 v34, v7

    if-nez v16, :cond_e

    .line 56
    const-string v2, "Unexpected end of chunk data"

    invoke-static {v12, v2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 58
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 59
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 60
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v7, v4

    move-object v8, v5

    move-object v4, v2

    move-object v5, v3

    move/from16 v2, v22

    move v3, v1

    move/from16 v1, v28

    goto/16 :goto_e

    :cond_e
    if-eqz v0, :cond_10

    :goto_a
    if-nez v23, :cond_f

    if-lez v25, :cond_f

    .line 61
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v23

    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v22

    add-int/lit8 v25, v25, -0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v23, v23, -0x1

    :cond_10
    move/from16 v3, v22

    .line 63
    aput-wide v32, v8, v1

    .line 64
    invoke-interface {v5}, Le3/b$f;->readNextSampleSize()I

    move-result v6

    aput v6, v9, v1

    move-object/from16 v36, v4

    move-object v7, v5

    int-to-long v4, v6

    add-long v30, v30, v4

    if-le v6, v14, :cond_11

    move v14, v6

    :cond_11
    int-to-long v4, v3

    add-long v4, v26, v4

    .line 65
    aput-wide v4, v10, v1

    if-nez v15, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    .line 66
    :goto_b
    aput v4, v11, v1

    if-ne v1, v2, :cond_14

    const/4 v4, 0x1

    .line 67
    aput v4, v11, v1

    add-int/lit8 v5, v34, -0x1

    if-lez v5, :cond_13

    .line 68
    invoke-static {v15}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    sub-int/2addr v2, v4

    :cond_13
    move v12, v2

    move v4, v3

    move/from16 v6, v29

    goto :goto_c

    :cond_14
    move v12, v2

    move v4, v3

    move/from16 v6, v29

    move/from16 v5, v34

    :goto_c
    int-to-long v2, v6

    add-long v26, v26, v2

    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_15

    if-lez p1, :cond_15

    .line 69
    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    .line 70
    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    add-int/lit8 v6, p1, -0x1

    move v13, v2

    goto :goto_d

    :cond_15
    move v3, v6

    move/from16 v6, p1

    .line 71
    :goto_d
    aget v2, v9, v1

    move/from16 p1, v3

    int-to-long v2, v2

    add-long v2, v32, v2

    add-int/lit8 v16, v28, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v28, v2

    move/from16 v22, v4

    move v2, v12

    move/from16 v3, v35

    move-object/from16 v4, v36

    move/from16 v44, v6

    move/from16 v6, p1

    move/from16 p1, v44

    move-object/from16 v45, v7

    move v7, v5

    move-object/from16 v5, v45

    goto/16 :goto_8

    :cond_16
    move/from16 v35, v3

    move/from16 v34, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v10

    move-object v8, v11

    move/from16 v1, v16

    move/from16 v2, v22

    :goto_e
    int-to-long v9, v2

    add-long v9, v26, v9

    if-eqz v0, :cond_18

    :goto_f
    if-lez v25, :cond_18

    .line 72
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    goto :goto_10

    .line 73
    :cond_17
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    add-int/lit8 v25, v25, -0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x1

    :goto_10
    if-nez v34, :cond_1a

    if-nez v13, :cond_1a

    if-nez v1, :cond_1a

    if-nez p1, :cond_1a

    move/from16 v2, v23

    if-nez v2, :cond_1b

    if-nez v0, :cond_19

    goto :goto_11

    :cond_19
    move-object/from16 v11, v18

    goto :goto_13

    :cond_1a
    move/from16 v2, v23

    .line 74
    :cond_1b
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inconsistent stbl box for track "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    iget v15, v11, Le3/t;->a:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v34

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", remainingSamplesInChunk "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1c

    .line 75
    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1c
    const-string v0, ""

    :goto_12
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object v2, v5

    move-object v15, v7

    move-object/from16 v28, v8

    move-wide v0, v9

    move-wide/from16 v12, v30

    .line 77
    :goto_14
    iget-wide v5, v11, Le3/t;->f:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-wide/32 v36, 0x7fffffff

    if-lez v9, :cond_1d

    const-wide/16 v7, 0x8

    mul-long v29, v12, v7

    const-wide/32 v31, 0xf4240

    .line 78
    sget-object v35, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v33, v5

    .line 79
    invoke-static/range {v29 .. v35}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1d

    cmp-long v7, v5, v36

    if-gez v7, :cond_1d

    .line 80
    iget-object v7, v11, Le3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v7}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v7

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v5

    .line 81
    invoke-virtual {v11, v5}, Le3/t;->a(Landroidx/media3/common/r;)Le3/t;

    move-result-object v5

    move-object v11, v5

    .line 82
    :cond_1d
    iget-wide v9, v11, Le3/t;->c:J

    const-wide/32 v7, 0xf4240

    move-wide v5, v0

    move-object/from16 v12, v28

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    .line 83
    iget-object v5, v11, Le3/t;->i:[J

    const-wide/32 v6, 0xf4240

    if-nez v5, :cond_1e

    .line 84
    iget-wide v0, v11, Le3/t;->c:J

    invoke-static {v15, v6, v7, v0, v1}, Landroidx/media3/common/util/a1;->f1([JJJ)V

    .line 85
    new-instance v0, Le3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v12

    invoke-direct/range {v22 .. v30}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    return-object v0

    .line 86
    :cond_1e
    array-length v5, v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_20

    iget v5, v11, Le3/t;->b:I

    if-ne v5, v8, :cond_20

    array-length v5, v15

    const/4 v8, 0x2

    if-lt v5, v8, :cond_20

    .line 87
    iget-object v5, v11, Le3/t;->j:[J

    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    const/4 v8, 0x0

    aget-wide v9, v5, v8

    .line 88
    iget-object v5, v11, Le3/t;->i:[J

    aget-wide v22, v5, v8

    iget-wide v6, v11, Le3/t;->c:J

    move-object/from16 p1, v12

    iget-wide v12, v11, Le3/t;->d:J

    move-wide/from16 v24, v6

    move-wide/from16 v26, v12

    .line 89
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v5

    add-long/2addr v5, v9

    move-object/from16 v22, v15

    move-wide/from16 v23, v0

    move-wide/from16 v25, v9

    move-wide/from16 v27, v5

    .line 90
    invoke-static/range {v22 .. v28}, Le3/b;->b([JJJJ)Z

    move-result v7

    if-eqz v7, :cond_21

    sub-long v22, v0, v5

    const/4 v5, 0x0

    .line 91
    aget-wide v6, v15, v5

    sub-long v38, v9, v6

    iget-object v5, v11, Le3/t;->g:Landroidx/media3/common/r;

    iget v5, v5, Landroidx/media3/common/r;->F:I

    int-to-long v5, v5

    iget-wide v7, v11, Le3/t;->c:J

    move-wide/from16 v40, v5

    move-wide/from16 v42, v7

    .line 92
    invoke-static/range {v38 .. v43}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v5

    .line 93
    iget-object v7, v11, Le3/t;->g:Landroidx/media3/common/r;

    iget v7, v7, Landroidx/media3/common/r;->F:I

    int-to-long v7, v7

    iget-wide v9, v11, Le3/t;->c:J

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    .line 94
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v12, v5, v9

    if-nez v12, :cond_1f

    cmp-long v12, v7, v9

    if-eqz v12, :cond_21

    :cond_1f
    cmp-long v9, v5, v36

    if-gtz v9, :cond_21

    cmp-long v9, v7, v36

    if-gtz v9, :cond_21

    long-to-int v0, v5

    move-object/from16 v1, p2

    .line 95
    iput v0, v1, Lk2/e0;->a:I

    long-to-int v0, v7

    .line 96
    iput v0, v1, Lk2/e0;->b:I

    .line 97
    iget-wide v0, v11, Le3/t;->c:J

    const-wide/32 v5, 0xf4240

    invoke-static {v15, v5, v6, v0, v1}, Landroidx/media3/common/util/a1;->f1([JJJ)V

    .line 98
    iget-object v0, v11, Le3/t;->i:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    const-wide/32 v7, 0xf4240

    iget-wide v9, v11, Le3/t;->d:J

    .line 99
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    .line 100
    new-instance v0, Le3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, p1

    invoke-direct/range {v22 .. v30}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    return-object v0

    :cond_20
    move-object/from16 p1, v12

    .line 101
    :cond_21
    iget-object v5, v11, Le3/t;->i:[J

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_23

    .line 102
    iget-object v3, v11, Le3/t;->j:[J

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v7, v3, v6

    const/4 v6, 0x0

    .line 103
    :goto_15
    array-length v3, v15

    if-ge v6, v3, :cond_22

    .line 104
    aget-wide v9, v15, v6

    sub-long v16, v9, v7

    const-wide/32 v18, 0xf4240

    iget-wide v9, v11, Le3/t;->c:J

    move-wide/from16 v20, v9

    .line 105
    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v9

    aput-wide v9, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_22
    sub-long v16, v0, v7

    const-wide/32 v18, 0xf4240

    .line 106
    iget-wide v0, v11, Le3/t;->c:J

    move-wide/from16 v20, v0

    .line 107
    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    .line 108
    new-instance v0, Le3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, p1

    invoke-direct/range {v22 .. v30}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    return-object v0

    .line 109
    :cond_23
    iget v0, v11, Le3/t;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    .line 110
    :goto_16
    array-length v1, v5

    new-array v1, v1, [I

    .line 111
    array-length v5, v5

    new-array v5, v5, [I

    .line 112
    iget-object v6, v11, Le3/t;->j:[J

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 113
    :goto_17
    iget-object v12, v11, Le3/t;->i:[J

    array-length v13, v12

    if-ge v8, v13, :cond_2a

    move/from16 v16, v14

    .line 114
    aget-wide v13, v6, v8

    const-wide/16 v22, -0x1

    cmp-long v18, v13, v22

    if-eqz v18, :cond_29

    .line 115
    aget-wide v22, v12, v8

    move-object v12, v2

    move/from16 v18, v3

    iget-wide v2, v11, Le3/t;->c:J

    move-object/from16 p2, v6

    move/from16 v28, v7

    iget-wide v6, v11, Le3/t;->d:J

    move-wide/from16 v24, v2

    move-wide/from16 v26, v6

    .line 116
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v2

    const/4 v6, 0x1

    .line 117
    invoke-static {v15, v13, v14, v6, v6}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    move-result v7

    aput v7, v1, v8

    add-long/2addr v13, v2

    const/4 v2, 0x0

    .line 118
    invoke-static {v15, v13, v14, v0, v2}, Landroidx/media3/common/util/a1;->d([JJZZ)I

    move-result v3

    aput v3, v5, v8

    .line 119
    aget v3, v1, v8

    .line 120
    :goto_18
    aget v7, v1, v8

    if-ltz v7, :cond_25

    aget v17, p1, v7

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_25

    add-int/lit8 v7, v7, -0x1

    .line 121
    aput v7, v1, v8

    const/4 v6, 0x1

    goto :goto_18

    :cond_25
    if-gez v7, :cond_26

    .line 122
    aput v3, v1, v8

    .line 123
    :goto_19
    aget v3, v1, v8

    aget v6, v5, v8

    if-ge v3, v6, :cond_26

    aget v6, p1, v3

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_26

    add-int/lit8 v3, v3, 0x1

    .line 124
    aput v3, v1, v8

    goto :goto_19

    .line 125
    :cond_26
    iget v3, v11, Le3/t;->b:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_27

    aget v3, v1, v8

    aget v7, v5, v8

    if-eq v3, v7, :cond_27

    .line 126
    :goto_1a
    aget v3, v5, v8

    array-length v7, v15

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_27

    add-int/lit8 v7, v3, 0x1

    aget-wide v22, v15, v7

    cmp-long v7, v22, v13

    if-gtz v7, :cond_27

    add-int/lit8 v3, v3, 0x1

    .line 127
    aput v3, v5, v8

    goto :goto_1a

    .line 128
    :cond_27
    aget v3, v5, v8

    aget v7, v1, v8

    sub-int v13, v3, v7

    add-int/2addr v9, v13

    if-eq v10, v7, :cond_28

    const/4 v7, 0x1

    goto :goto_1b

    :cond_28
    move v7, v2

    :goto_1b
    or-int v7, v28, v7

    move v10, v3

    goto :goto_1c

    :cond_29
    move-object v12, v2

    move/from16 v18, v3

    move-object/from16 p2, v6

    move/from16 v28, v7

    const/4 v2, 0x0

    const/4 v6, 0x2

    :goto_1c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p2

    move-object v2, v12

    move/from16 v14, v16

    move/from16 v3, v18

    goto/16 :goto_17

    :cond_2a
    move-object v12, v2

    move/from16 v28, v7

    move/from16 v16, v14

    const/4 v2, 0x0

    if-eq v9, v3, :cond_2b

    const/4 v0, 0x1

    goto :goto_1d

    :cond_2b
    move v0, v2

    :goto_1d
    or-int v0, v28, v0

    if-eqz v0, :cond_2c

    .line 129
    new-array v3, v9, [J

    goto :goto_1e

    :cond_2c
    move-object v3, v4

    :goto_1e
    if-eqz v0, :cond_2d

    .line 130
    new-array v6, v9, [I

    goto :goto_1f

    :cond_2d
    move-object v6, v12

    :goto_1f
    if-eqz v0, :cond_2e

    move v14, v2

    goto :goto_20

    :cond_2e
    move/from16 v14, v16

    :goto_20
    if-eqz v0, :cond_2f

    .line 131
    new-array v7, v9, [I

    goto :goto_21

    :cond_2f
    move-object/from16 v7, p1

    .line 132
    :goto_21
    new-array v8, v9, [J

    move/from16 p2, v2

    move/from16 v10, p2

    move/from16 v16, v14

    const-wide/16 v13, 0x0

    .line 133
    :goto_22
    iget-object v9, v11, Le3/t;->i:[J

    array-length v9, v9

    if-ge v2, v9, :cond_34

    .line 134
    iget-object v9, v11, Le3/t;->j:[J

    aget-wide v17, v9, v2

    .line 135
    aget v9, v1, v2

    move-object/from16 v19, v1

    .line 136
    aget v1, v5, v2

    if-eqz v0, :cond_30

    move-object/from16 v28, v5

    sub-int v5, v1, v9

    .line 137
    invoke-static {v4, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-static {v12, v9, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v4

    move-object/from16 v4, p1

    .line 139
    invoke-static {v4, v9, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_30
    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v4, p1

    :goto_23
    move/from16 v5, p2

    move-object/from16 p1, v4

    move/from16 v4, v16

    :goto_24
    if-ge v9, v1, :cond_33

    const-wide/32 v24, 0xf4240

    move/from16 v31, v1

    move/from16 v30, v2

    .line 140
    iget-wide v1, v11, Le3/t;->d:J

    move-wide/from16 v22, v13

    move-wide/from16 v26, v1

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    .line 141
    aget-wide v22, v15, v9

    sub-long v32, v22, v17

    const-wide/32 v34, 0xf4240

    move-wide/from16 v22, v13

    iget-wide v13, v11, Le3/t;->c:J

    move-wide/from16 v36, v13

    .line 142
    invoke-static/range {v32 .. v37}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v16, v13, v20

    if-gez v16, :cond_31

    const/4 v5, 0x1

    :cond_31
    add-long/2addr v1, v13

    .line 143
    aput-wide v1, v8, v10

    if-eqz v0, :cond_32

    .line 144
    aget v1, v6, v10

    if-le v1, v4, :cond_32

    .line 145
    aget v1, v12, v9

    move v4, v1

    :cond_32
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v13, v22

    move/from16 v2, v30

    move/from16 v1, v31

    goto :goto_24

    :cond_33
    move/from16 v30, v2

    move-wide/from16 v22, v13

    const-wide/16 v20, 0x0

    .line 146
    iget-object v1, v11, Le3/t;->i:[J

    aget-wide v13, v1, v30

    add-long v13, v22, v13

    add-int/lit8 v2, v30, 0x1

    move/from16 v16, v4

    move/from16 p2, v5

    move-object/from16 v1, v19

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    goto/16 :goto_22

    :cond_34
    move-wide/from16 v22, v13

    const-wide/32 v24, 0xf4240

    .line 147
    iget-wide v0, v11, Le3/t;->d:J

    move-wide/from16 v26, v0

    .line 148
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    if-eqz p2, :cond_35

    .line 149
    iget-object v0, v11, Le3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v0}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->c0(Z)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    .line 150
    invoke-virtual {v11, v0}, Le3/t;->a(Landroidx/media3/common/r;)Le3/t;

    move-result-object v11

    :cond_35
    move-object/from16 v23, v11

    .line 151
    new-instance v0, Le3/w;

    move-object/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move/from16 v26, v16

    move-object/from16 v27, v8

    move-object/from16 v28, v7

    invoke-direct/range {v22 .. v30}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    return-object v0

    .line 152
    :cond_36
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static B(Landroidx/media3/common/util/j0;II)Le3/b$d;
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    sub-int v1, v0, p1

    .line 11
    .line 12
    if-ge v1, p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    move v4, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v4, v2

    .line 28
    :goto_1
    const-string v5, "childAtomSize must be positive"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v5, 0x73747269

    .line 38
    .line 39
    .line 40
    if-ne v4, v5, :cond_4

    .line 41
    .line 42
    const/4 p1, 0x4

    .line 43
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    new-instance p1, Le3/b$d;

    .line 51
    .line 52
    new-instance p2, Le3/b$g;

    .line 53
    .line 54
    and-int/lit8 v0, p0, 0x1

    .line 55
    .line 56
    if-ne v0, v3, :cond_1

    .line 57
    .line 58
    move v0, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    move v0, v2

    .line 61
    :goto_2
    and-int/lit8 v1, p0, 0x2

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    if-ne v1, v4, :cond_2

    .line 65
    .line 66
    move v1, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    move v1, v2

    .line 69
    :goto_3
    const/16 v4, 0x8

    .line 70
    .line 71
    and-int/2addr p0, v4

    .line 72
    if-ne p0, v4, :cond_3

    .line 73
    .line 74
    move v2, v3

    .line 75
    :cond_3
    invoke-direct {p2, v0, v1, v2}, Le3/b$g;-><init>(ZZZ)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Le3/b$d;-><init>(Le3/b$g;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_4
    add-int/2addr v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method private static C(Landroidx/media3/common/util/j0;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Le3/b$h;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {v10, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v12

    .line 14
    new-instance v13, Le3/b$h;

    .line 15
    .line 16
    invoke-direct {v13, v12}, Le3/b$h;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    move v15, v14

    .line 21
    :goto_0
    if-ge v15, v12, :cond_9

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    if-lez v16, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v0, v14

    .line 36
    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const v0, 0x61766331

    .line 46
    .line 47
    .line 48
    if-eq v1, v0, :cond_1

    .line 49
    .line 50
    const v0, 0x61766333

    .line 51
    .line 52
    .line 53
    if-eq v1, v0, :cond_1

    .line 54
    .line 55
    const v0, 0x656e6376

    .line 56
    .line 57
    .line 58
    if-eq v1, v0, :cond_1

    .line 59
    .line 60
    const v0, 0x6d317620

    .line 61
    .line 62
    .line 63
    if-eq v1, v0, :cond_1

    .line 64
    .line 65
    const v0, 0x6d703476

    .line 66
    .line 67
    .line 68
    if-eq v1, v0, :cond_1

    .line 69
    .line 70
    const v0, 0x68766331

    .line 71
    .line 72
    .line 73
    if-eq v1, v0, :cond_1

    .line 74
    .line 75
    const v0, 0x68657631

    .line 76
    .line 77
    .line 78
    if-eq v1, v0, :cond_1

    .line 79
    .line 80
    const v0, 0x73323633

    .line 81
    .line 82
    .line 83
    if-eq v1, v0, :cond_1

    .line 84
    .line 85
    const v0, 0x48323633

    .line 86
    .line 87
    .line 88
    if-eq v1, v0, :cond_1

    .line 89
    .line 90
    const v0, 0x68323633

    .line 91
    .line 92
    .line 93
    if-eq v1, v0, :cond_1

    .line 94
    .line 95
    const v0, 0x76703038

    .line 96
    .line 97
    .line 98
    if-eq v1, v0, :cond_1

    .line 99
    .line 100
    const v0, 0x76703039

    .line 101
    .line 102
    .line 103
    if-eq v1, v0, :cond_1

    .line 104
    .line 105
    const v0, 0x61763031

    .line 106
    .line 107
    .line 108
    if-eq v1, v0, :cond_1

    .line 109
    .line 110
    const v0, 0x64766176

    .line 111
    .line 112
    .line 113
    if-eq v1, v0, :cond_1

    .line 114
    .line 115
    const v0, 0x64766131

    .line 116
    .line 117
    .line 118
    if-eq v1, v0, :cond_1

    .line 119
    .line 120
    const v0, 0x64766865

    .line 121
    .line 122
    .line 123
    if-eq v1, v0, :cond_1

    .line 124
    .line 125
    const v0, 0x64766831

    .line 126
    .line 127
    .line 128
    if-eq v1, v0, :cond_1

    .line 129
    .line 130
    const v0, 0x61707631

    .line 131
    .line 132
    .line 133
    if-ne v1, v0, :cond_2

    .line 134
    .line 135
    :cond_1
    move/from16 v17, v9

    .line 136
    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_2
    const v0, 0x6d703461

    .line 140
    .line 141
    .line 142
    if-eq v1, v0, :cond_8

    .line 143
    .line 144
    const v0, 0x656e6361

    .line 145
    .line 146
    .line 147
    if-eq v1, v0, :cond_8

    .line 148
    .line 149
    const v0, 0x61632d33

    .line 150
    .line 151
    .line 152
    if-eq v1, v0, :cond_8

    .line 153
    .line 154
    const v0, 0x65632d33

    .line 155
    .line 156
    .line 157
    if-eq v1, v0, :cond_8

    .line 158
    .line 159
    const v0, 0x61632d34

    .line 160
    .line 161
    .line 162
    if-eq v1, v0, :cond_8

    .line 163
    .line 164
    const v0, 0x6d6c7061

    .line 165
    .line 166
    .line 167
    if-eq v1, v0, :cond_8

    .line 168
    .line 169
    const v0, 0x64747363

    .line 170
    .line 171
    .line 172
    if-eq v1, v0, :cond_8

    .line 173
    .line 174
    const v0, 0x64747365

    .line 175
    .line 176
    .line 177
    if-eq v1, v0, :cond_8

    .line 178
    .line 179
    const v0, 0x64747368

    .line 180
    .line 181
    .line 182
    if-eq v1, v0, :cond_8

    .line 183
    .line 184
    const v0, 0x6474736c

    .line 185
    .line 186
    .line 187
    if-eq v1, v0, :cond_8

    .line 188
    .line 189
    const v0, 0x64747378

    .line 190
    .line 191
    .line 192
    if-eq v1, v0, :cond_8

    .line 193
    .line 194
    const v0, 0x73616d72

    .line 195
    .line 196
    .line 197
    if-eq v1, v0, :cond_8

    .line 198
    .line 199
    const v0, 0x73617762

    .line 200
    .line 201
    .line 202
    if-eq v1, v0, :cond_8

    .line 203
    .line 204
    const v0, 0x6c70636d

    .line 205
    .line 206
    .line 207
    if-eq v1, v0, :cond_8

    .line 208
    .line 209
    const v0, 0x736f7774

    .line 210
    .line 211
    .line 212
    if-eq v1, v0, :cond_8

    .line 213
    .line 214
    const v0, 0x74776f73

    .line 215
    .line 216
    .line 217
    if-eq v1, v0, :cond_8

    .line 218
    .line 219
    const v0, 0x2e6d7032

    .line 220
    .line 221
    .line 222
    if-eq v1, v0, :cond_8

    .line 223
    .line 224
    const v0, 0x2e6d7033

    .line 225
    .line 226
    .line 227
    if-eq v1, v0, :cond_8

    .line 228
    .line 229
    const v0, 0x6d686131

    .line 230
    .line 231
    .line 232
    if-eq v1, v0, :cond_8

    .line 233
    .line 234
    const v0, 0x6d686d31

    .line 235
    .line 236
    .line 237
    if-eq v1, v0, :cond_8

    .line 238
    .line 239
    const v0, 0x616c6163

    .line 240
    .line 241
    .line 242
    if-eq v1, v0, :cond_8

    .line 243
    .line 244
    const v0, 0x616c6177

    .line 245
    .line 246
    .line 247
    if-eq v1, v0, :cond_8

    .line 248
    .line 249
    const v0, 0x756c6177

    .line 250
    .line 251
    .line 252
    if-eq v1, v0, :cond_8

    .line 253
    .line 254
    const v0, 0x4f707573

    .line 255
    .line 256
    .line 257
    if-eq v1, v0, :cond_8

    .line 258
    .line 259
    const v0, 0x664c6143

    .line 260
    .line 261
    .line 262
    if-eq v1, v0, :cond_8

    .line 263
    .line 264
    const v0, 0x69616d66

    .line 265
    .line 266
    .line 267
    if-ne v1, v0, :cond_3

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_3
    const v0, 0x54544d4c

    .line 271
    .line 272
    .line 273
    if-eq v1, v0, :cond_7

    .line 274
    .line 275
    const v0, 0x74783367

    .line 276
    .line 277
    .line 278
    if-eq v1, v0, :cond_7

    .line 279
    .line 280
    const v0, 0x77767474

    .line 281
    .line 282
    .line 283
    if-eq v1, v0, :cond_7

    .line 284
    .line 285
    const v0, 0x73747070

    .line 286
    .line 287
    .line 288
    if-eq v1, v0, :cond_7

    .line 289
    .line 290
    const v0, 0x63363038

    .line 291
    .line 292
    .line 293
    if-ne v1, v0, :cond_4

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_4
    const v0, 0x6d657474

    .line 297
    .line 298
    .line 299
    if-ne v1, v0, :cond_6

    .line 300
    .line 301
    invoke-static {v10, v1, v9, v11, v13}, Le3/b;->u(Landroidx/media3/common/util/j0;IIILe3/b$h;)V

    .line 302
    .line 303
    .line 304
    :cond_5
    :goto_2
    move/from16 v17, v9

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_6
    const v0, 0x63616d6d

    .line 308
    .line 309
    .line 310
    if-ne v1, v0, :cond_5

    .line 311
    .line 312
    new-instance v0, Landroidx/media3/common/r$b;

    .line 313
    .line 314
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v11}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const-string v1, "application/x-camera-motion"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iput-object v0, v13, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    .line 335
    .line 336
    move v2, v9

    .line 337
    move/from16 v3, v16

    .line 338
    .line 339
    move/from16 v4, p1

    .line 340
    .line 341
    move-object/from16 v5, p3

    .line 342
    .line 343
    move-object v6, v13

    .line 344
    invoke-static/range {v0 .. v6}, Le3/b;->D(Landroidx/media3/common/util/j0;IIIILjava/lang/String;Le3/b$h;)V

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 349
    .line 350
    move v2, v9

    .line 351
    move/from16 v3, v16

    .line 352
    .line 353
    move/from16 v4, p1

    .line 354
    .line 355
    move-object/from16 v5, p3

    .line 356
    .line 357
    move/from16 v6, p5

    .line 358
    .line 359
    move-object/from16 v7, p4

    .line 360
    .line 361
    move-object v8, v13

    .line 362
    move/from16 v17, v9

    .line 363
    .line 364
    move v9, v15

    .line 365
    invoke-static/range {v0 .. v9}, Le3/b;->h(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Le3/b$h;I)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :goto_5
    move-object/from16 v0, p0

    .line 370
    .line 371
    move/from16 v2, v17

    .line 372
    .line 373
    move/from16 v3, v16

    .line 374
    .line 375
    move/from16 v4, p1

    .line 376
    .line 377
    move-object/from16 v5, p3

    .line 378
    .line 379
    move/from16 v6, p2

    .line 380
    .line 381
    move-object/from16 v7, p4

    .line 382
    .line 383
    move-object v8, v13

    .line 384
    move v9, v15

    .line 385
    invoke-static/range {v0 .. v9}, Le3/b;->K(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Le3/b$h;I)V

    .line 386
    .line 387
    .line 388
    :goto_6
    add-int v9, v17, v16

    .line 389
    .line 390
    invoke-virtual {v10, v9}, Landroidx/media3/common/util/j0;->W(I)V

    .line 391
    .line 392
    .line 393
    add-int/lit8 v15, v15, 0x1

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_9
    return-object v13
.end method

.method private static D(Landroidx/media3/common/util/j0;IIIILjava/lang/String;Le3/b$h;)V
    .locals 4

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x54544d4c

    .line 7
    .line 8
    .line 9
    const-string v0, "application/ttml+xml"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p2, 0x74783367

    .line 21
    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p3, p3, -0x10

    .line 26
    .line 27
    new-array p1, p3, [B

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v0, "application/x-quicktime-tx3g"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const p0, 0x77767474

    .line 41
    .line 42
    .line 43
    if-ne p1, p0, :cond_2

    .line 44
    .line 45
    const-string v0, "application/x-mp4-vtt"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const p0, 0x73747070

    .line 49
    .line 50
    .line 51
    if-ne p1, p0, :cond_3

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const p0, 0x63363038

    .line 57
    .line 58
    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    iput p0, p6, Le3/b$h;->d:I

    .line 63
    .line 64
    const-string v0, "application/x-mp4-cea-608"

    .line 65
    .line 66
    :goto_0
    new-instance p0, Landroidx/media3/common/r$b;

    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, p6, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method private static E(Landroidx/media3/common/util/j0;)Le3/b$k;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Le3/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    move v0, v2

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    move v6, v5

    .line 40
    :goto_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    if-ge v6, v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    add-int v10, v3, v6

    .line 52
    .line 53
    aget-byte v9, v9, v10

    .line 54
    .line 55
    const/4 v10, -0x1

    .line 56
    if-eq v9, v10, :cond_4

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    :goto_2
    const-wide/16 v9, 0x0

    .line 70
    .line 71
    cmp-long v3, v0, v9

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move-wide v7, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 82
    .line 83
    .line 84
    :goto_3
    const/16 v0, 0xa

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    const/high16 v6, -0x10000

    .line 116
    .line 117
    const/high16 v9, 0x10000

    .line 118
    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    if-ne v3, v9, :cond_6

    .line 122
    .line 123
    if-ne v2, v6, :cond_6

    .line 124
    .line 125
    if-nez p0, :cond_6

    .line 126
    .line 127
    const/16 p0, 0x5a

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    if-nez v1, :cond_7

    .line 131
    .line 132
    if-ne v3, v6, :cond_7

    .line 133
    .line 134
    if-ne v2, v9, :cond_7

    .line 135
    .line 136
    if-nez p0, :cond_7

    .line 137
    .line 138
    const/16 p0, 0x10e

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    if-ne v1, v6, :cond_8

    .line 142
    .line 143
    if-nez v3, :cond_8

    .line 144
    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    if-ne p0, v6, :cond_8

    .line 148
    .line 149
    const/16 p0, 0xb4

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move p0, v5

    .line 153
    :goto_4
    new-instance v1, Le3/b$k;

    .line 154
    .line 155
    move-object v3, v1

    .line 156
    move-wide v5, v7

    .line 157
    move v7, v0

    .line 158
    move v8, p0

    .line 159
    invoke-direct/range {v3 .. v8}, Le3/b$k;-><init>(IJII)V

    .line 160
    .line 161
    .line 162
    return-object v1
.end method

.method public static F(Landroidx/media3/container/d$b;Landroidx/media3/container/d$c;JLandroidx/media3/common/DrmInitData;ZZ)Le3/t;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const v3, 0x6d646961

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/media3/container/d$b;

    .line 17
    .line 18
    const v4, 0x68646c72    # 4.3148E24f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroidx/media3/container/d$c;

    .line 30
    .line 31
    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 32
    .line 33
    invoke-static {v4}, Le3/b;->q(Landroidx/media3/common/util/j0;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Le3/b;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v4, -0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-ne v7, v4, :cond_0

    .line 44
    .line 45
    return-object v5

    .line 46
    :cond_0
    const v4, 0x746b6864

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroidx/media3/container/d$c;

    .line 58
    .line 59
    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 60
    .line 61
    invoke-static {v4}, Le3/b;->E(Landroidx/media3/common/util/j0;)Le3/b$k;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v6, p2, v8

    .line 71
    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    invoke-static {v4}, Le3/b$k;->a(Le3/b$k;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    move-object/from16 v6, p1

    .line 79
    .line 80
    move-wide v12, v10

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object/from16 v6, p1

    .line 83
    .line 84
    move-wide/from16 v12, p2

    .line 85
    .line 86
    :goto_0
    iget-object v6, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 87
    .line 88
    invoke-static {v6}, Le3/b;->v(Landroidx/media3/common/util/j0;)Landroidx/media3/container/f;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-wide v10, v6, Landroidx/media3/container/f;->c:J

    .line 93
    .line 94
    cmp-long v6, v12, v8

    .line 95
    .line 96
    if-nez v6, :cond_2

    .line 97
    .line 98
    :goto_1
    move-wide v12, v8

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-wide/32 v14, 0xf4240

    .line 101
    .line 102
    .line 103
    move-wide/from16 v16, v10

    .line 104
    .line 105
    invoke-static/range {v12 .. v17}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    const v6, 0x6d696e66

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Landroidx/media3/container/d$b;

    .line 122
    .line 123
    const v8, 0x7374626c

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v8}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Landroidx/media3/container/d$b;

    .line 135
    .line 136
    const v8, 0x6d646864

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v8}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroidx/media3/container/d$c;

    .line 148
    .line 149
    iget-object v3, v3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 150
    .line 151
    invoke-static {v3}, Le3/b;->s(Landroidx/media3/common/util/j0;)Le3/b$e;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const v8, 0x73747364

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v8}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    iget-object v14, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 165
    .line 166
    invoke-static {v4}, Le3/b$k;->b(Le3/b$k;)I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    invoke-static {v4}, Le3/b$k;->c(Le3/b$k;)I

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    invoke-static {v3}, Le3/b$e;->a(Le3/b$e;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v17

    .line 178
    move-object/from16 v18, p4

    .line 179
    .line 180
    move/from16 v19, p6

    .line 181
    .line 182
    invoke-static/range {v14 .. v19}, Le3/b;->C(Landroidx/media3/common/util/j0;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Le3/b$h;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    if-nez p5, :cond_3

    .line 187
    .line 188
    const v6, 0x65647473

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    invoke-static {v0}, Le3/b;->l(Landroidx/media3/container/d$b;)Landroid/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_3

    .line 202
    .line 203
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v6, [J

    .line 206
    .line 207
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, [J

    .line 210
    .line 211
    move-object/from16 v21, v0

    .line 212
    .line 213
    move-object/from16 v20, v6

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_3
    move-object/from16 v20, v5

    .line 217
    .line 218
    move-object/from16 v21, v20

    .line 219
    .line 220
    :goto_3
    iget-object v0, v14, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 221
    .line 222
    if-nez v0, :cond_4

    .line 223
    .line 224
    return-object v5

    .line 225
    :cond_4
    invoke-static {v4}, Le3/b$k;->d(Le3/b$k;)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    new-instance v0, Landroidx/media3/container/c;

    .line 232
    .line 233
    invoke-static {v4}, Le3/b$k;->d(Le3/b$k;)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-direct {v0, v5}, Landroidx/media3/container/c;-><init>(I)V

    .line 238
    .line 239
    .line 240
    iget-object v5, v14, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 241
    .line 242
    invoke-virtual {v5}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    iget-object v6, v14, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 247
    .line 248
    iget-object v6, v6, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 249
    .line 250
    if-eqz v6, :cond_5

    .line 251
    .line 252
    new-array v2, v2, [Landroidx/media3/common/x$a;

    .line 253
    .line 254
    aput-object v0, v2, v1

    .line 255
    .line 256
    invoke-virtual {v6, v2}, Landroidx/media3/common/x;->a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    goto :goto_4

    .line 261
    :cond_5
    new-instance v6, Landroidx/media3/common/x;

    .line 262
    .line 263
    new-array v2, v2, [Landroidx/media3/common/x$a;

    .line 264
    .line 265
    aput-object v0, v2, v1

    .line 266
    .line 267
    invoke-direct {v6, v2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    .line 268
    .line 269
    .line 270
    move-object v0, v6

    .line 271
    :goto_4
    invoke-virtual {v5, v0}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    :goto_5
    move-object/from16 v16, v0

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_6
    iget-object v0, v14, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :goto_6
    new-instance v0, Le3/t;

    .line 286
    .line 287
    move-object v5, v0

    .line 288
    invoke-static {v4}, Le3/b$k;->b(Le3/b$k;)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    invoke-static {v3}, Le3/b$e;->b(Le3/b$e;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v8

    .line 296
    invoke-static {v3}, Le3/b$e;->c(Le3/b$e;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    move-object v3, v14

    .line 301
    move-wide v14, v1

    .line 302
    iget v1, v3, Le3/b$h;->d:I

    .line 303
    .line 304
    move/from16 v17, v1

    .line 305
    .line 306
    iget-object v1, v3, Le3/b$h;->a:[Le3/u;

    .line 307
    .line 308
    move-object/from16 v18, v1

    .line 309
    .line 310
    iget v1, v3, Le3/b$h;->c:I

    .line 311
    .line 312
    move/from16 v19, v1

    .line 313
    .line 314
    invoke-direct/range {v5 .. v21}, Le3/t;-><init>(IIJJJJLandroidx/media3/common/r;I[Le3/u;I[J[J)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :cond_7
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 319
    .line 320
    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    throw v0
.end method

.method public static G(Landroidx/media3/container/d$b;Lk2/e0;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, v0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/media3/container/d$b;

    .line 23
    .line 24
    iget v4, v3, Landroidx/media3/container/d;->a:I

    .line 25
    .line 26
    const v5, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    move-object/from16 v5, p7

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const v4, 0x6d766864

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Landroidx/media3/container/d$c;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move-wide v6, p2

    .line 51
    move-object v8, p4

    .line 52
    move/from16 v9, p5

    .line 53
    .line 54
    move/from16 v10, p6

    .line 55
    .line 56
    invoke-static/range {v4 .. v10}, Le3/b;->F(Landroidx/media3/container/d$b;Landroidx/media3/container/d$c;JLandroidx/media3/common/DrmInitData;ZZ)Le3/t;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object/from16 v5, p7

    .line 61
    .line 62
    invoke-interface {v5, v4}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Le3/t;

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    move-object v6, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v6, 0x6d646961

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/media3/container/d$b;

    .line 84
    .line 85
    const v6, 0x6d696e66

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroidx/media3/container/d$b;

    .line 97
    .line 98
    const v6, 0x7374626c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroidx/media3/container/d$b;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    invoke-static {v4, v3, p1}, Le3/b;->A(Le3/t;Landroidx/media3/container/d$b;Lk2/e0;)Le3/w;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v1
.end method

.method public static H(Landroidx/media3/container/d$c;)Landroidx/media3/common/x;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/media3/common/x;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    new-array v2, v2, [Landroidx/media3/common/x$a;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lt v2, v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const v5, 0x6d657461

    .line 35
    .line 36
    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 40
    .line 41
    .line 42
    add-int v4, v2, v3

    .line 43
    .line 44
    invoke-static {p0, v4}, Le3/b;->I(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const v5, 0x736d7461

    .line 54
    .line 55
    .line 56
    if-ne v4, v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 59
    .line 60
    .line 61
    add-int v4, v2, v3

    .line 62
    .line 63
    invoke-static {p0, v4}, Le3/r;->b(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v5, -0x56878686

    .line 73
    .line 74
    .line 75
    if-ne v4, v5, :cond_2

    .line 76
    .line 77
    invoke-static {p0}, Le3/b;->L(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    :goto_1
    add-int/2addr v2, v3

    .line 86
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    return-object v1
.end method

.method private static I(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Le3/b;->f(Landroidx/media3/common/util/j0;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x696c7374

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-static {p0, v0}, Le3/b;->r(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method static J(Landroidx/media3/common/util/j0;II)Le3/b$l;
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v2, v1

    .line 12
    :goto_0
    sub-int v3, v0, p1

    .line 13
    .line 14
    if-ge v3, p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_1
    const-string v5, "childAtomSize must be positive"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v5, 0x65796573

    .line 38
    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {p0, v0, v3}, Le3/b;->B(Landroidx/media3/common/util/j0;II)Le3/b$d;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_1
    add-int/2addr v0, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    new-instance v1, Le3/b$l;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Le3/b$l;-><init>(Le3/b$d;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-object v1
.end method

.method private static K(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Le3/b$h;I)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    .line 1
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    const/16 v5, 0x10

    .line 2
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v6

    const/16 v7, 0x32

    .line 5
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, Le3/b;->y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Le3/u;

    iget-object v11, v11, Le3/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    .line 10
    :goto_0
    iget-object v11, v4, Le3/b$h;->a:[Le3/u;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Le3/u;

    aput-object v8, v11, p9

    .line 11
    :cond_1
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    :cond_2
    const v8, 0x6d317620

    .line 12
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    .line 13
    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    move v13, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_5

    .line 14
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v12

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v9

    if-nez v9, :cond_6

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v30

    move-object/from16 p9, v11

    sub-int v11, v30, v1

    if-ne v11, v2, :cond_7

    :cond_5
    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v35, v14

    move-object/from16 v32, v16

    move/from16 v28, v19

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v12, v24

    const/4 v2, 0x0

    move/from16 v23, v13

    move/from16 v24, v15

    goto/16 :goto_27

    :cond_6
    move-object/from16 p9, v11

    :cond_7
    if-lez v9, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 18
    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v11, v1}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v11, 0x61766343

    if-ne v1, v11, :cond_b

    if-nez v8, :cond_9

    const/4 v1, 0x1

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 20
    :goto_5
    invoke-static {v1, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 21
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 22
    invoke-static/range {p0 .. p0}, Lk2/d;->b(Landroidx/media3/common/util/j0;)Lk2/d;

    move-result-object v1

    .line 23
    iget-object v8, v1, Lk2/d;->a:Ljava/util/List;

    .line 24
    iget v11, v1, Lk2/d;->b:I

    iput v11, v4, Le3/b$h;->c:I

    if-nez v29, :cond_a

    .line 25
    iget v14, v1, Lk2/d;->k:F

    .line 26
    :cond_a
    iget-object v11, v1, Lk2/d;->l:Ljava/lang/String;

    .line 27
    iget v12, v1, Lk2/d;->j:I

    .line 28
    iget v13, v1, Lk2/d;->g:I

    .line 29
    iget v15, v1, Lk2/d;->h:I

    .line 30
    iget v2, v1, Lk2/d;->i:I

    move/from16 v16, v2

    .line 31
    iget v2, v1, Lk2/d;->e:I

    .line 32
    iget v1, v1, Lk2/d;->f:I

    .line 33
    const-string v17, "video/avc"

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v20, v12

    move/from16 v23, v15

    move/from16 v24, v16

    const/4 v6, 0x0

    move v15, v2

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    const/4 v2, 0x0

    move-object/from16 v17, v11

    move v11, v13

    move v13, v1

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_26

    :cond_b
    const v2, 0x68766343

    const-string v11, "video/hevc"

    if-ne v1, v2, :cond_f

    if-nez v8, :cond_c

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 34
    :goto_8
    invoke-static {v1, v2}, Lk2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 35
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 36
    invoke-static/range {p0 .. p0}, Lk2/f0;->a(Landroidx/media3/common/util/j0;)Lk2/f0;

    move-result-object v1

    .line 37
    iget-object v2, v1, Lk2/f0;->a:Ljava/util/List;

    .line 38
    iget v8, v1, Lk2/f0;->b:I

    iput v8, v4, Le3/b$h;->c:I

    if-nez v29, :cond_d

    .line 39
    iget v14, v1, Lk2/f0;->l:F

    .line 40
    :cond_d
    iget v8, v1, Lk2/f0;->m:I

    .line 41
    iget v12, v1, Lk2/f0;->c:I

    .line 42
    iget-object v13, v1, Lk2/f0;->n:Ljava/lang/String;

    .line 43
    iget v15, v1, Lk2/f0;->k:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_e

    move/from16 v19, v15

    .line 44
    :cond_e
    iget v2, v1, Lk2/f0;->h:I

    .line 45
    iget v15, v1, Lk2/f0;->i:I

    move/from16 v17, v2

    .line 46
    iget v2, v1, Lk2/f0;->j:I

    move/from16 v20, v2

    .line 47
    iget v2, v1, Lk2/f0;->f:I

    move/from16 v21, v2

    .line 48
    iget v2, v1, Lk2/f0;->g:I

    .line 49
    iget-object v1, v1, Lk2/f0;->o:Landroidx/media3/container/g$k;

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v20

    move/from16 v15, v21

    const/4 v1, -0x1

    const/4 v6, 0x0

    move/from16 v20, v8

    move-object v8, v11

    move/from16 v21, v12

    move/from16 v11, v17

    move-object/from16 v17, v13

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_f
    const v2, 0x6c687643

    move-object/from16 v31, v3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1b

    .line 50
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 51
    invoke-static {v1, v2}, Lk2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v2, v28

    if-eqz v2, :cond_10

    .line 52
    iget-object v1, v2, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 53
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    const-string v3, "must have at least two layers"

    .line 54
    invoke-static {v1, v3}, Lk2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 55
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 56
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/g$k;

    invoke-static {v0, v1}, Lk2/f0;->c(Landroidx/media3/common/util/j0;Landroidx/media3/container/g$k;)Lk2/f0;

    move-result-object v1

    .line 57
    iget v3, v4, Le3/b$h;->c:I

    iget v8, v1, Lk2/f0;->b:I

    if-ne v3, v8, :cond_11

    const/4 v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 58
    iget v3, v1, Lk2/f0;->h:I

    const/4 v8, -0x1

    move/from16 v11, v22

    if-eq v3, v8, :cond_13

    if-ne v11, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 59
    :goto_b
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v3, v12}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 60
    :cond_13
    iget v3, v1, Lk2/f0;->i:I

    move/from16 v12, v23

    if-eq v3, v8, :cond_15

    if-ne v12, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 61
    :goto_c
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 62
    :cond_15
    iget v3, v1, Lk2/f0;->j:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_17

    move/from16 v8, v24

    move/from16 v17, v8

    if-ne v8, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    .line 63
    :goto_d
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    goto :goto_e

    :cond_17
    move/from16 v17, v24

    .line 64
    :goto_e
    iget v3, v1, Lk2/f0;->f:I

    if-ne v15, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 65
    iget v3, v1, Lk2/f0;->g:I

    if-ne v13, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v3, v16

    if-eqz v3, :cond_1a

    .line 66
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v8

    .line 67
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    iget-object v8, v1, Lk2/f0;->a:Ljava/util/List;

    .line 68
    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_11

    .line 70
    :cond_1a
    const-string v8, "initializationData must be already set from hvcC atom"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v3, v8}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 71
    :goto_11
    iget-object v1, v1, Lk2/f0;->n:Ljava/lang/String;

    .line 72
    const-string v3, "video/mv-hevc"

    move-object/from16 v28, v2

    move-object v8, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v17

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v1

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v32, v16

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v2, v28

    const v3, 0x76657875

    if-ne v1, v3, :cond_20

    .line 73
    invoke-static {v0, v12, v9}, Le3/b;->J(Landroidx/media3/common/util/j0;II)Le3/b$l;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 74
    invoke-static {v1}, Le3/b$l;->a(Le3/b$l;)Le3/b$d;

    move-result-object v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1d

    .line 75
    iget-object v3, v2, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v12, 0x2

    if-lt v3, v12, :cond_1d

    .line 76
    invoke-virtual {v1}, Le3/b$l;->b()Z

    move-result v3

    const-string v12, "both eye views must be marked as available"

    .line 77
    invoke-static {v3, v12}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 78
    invoke-static {v1}, Le3/b$l;->a(Le3/b$l;)Le3/b$d;

    move-result-object v1

    invoke-static {v1}, Le3/b$d;->a(Le3/b$d;)Le3/b$g;

    move-result-object v1

    invoke-static {v1}, Le3/b$g;->c(Le3/b$g;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 79
    invoke-static {v1, v3}, Lk2/u;->a(ZLjava/lang/String;)V

    :cond_1c
    move/from16 v3, v19

    goto :goto_13

    :cond_1d
    move/from16 v3, v19

    const/4 v12, -0x1

    if-ne v3, v12, :cond_1f

    .line 80
    invoke-static {v1}, Le3/b$l;->a(Le3/b$l;)Le3/b$d;

    move-result-object v1

    invoke-static {v1}, Le3/b$d;->a(Le3/b$d;)Le3/b$g;

    move-result-object v1

    invoke-static {v1}, Le3/b$g;->c(Le3/b$g;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x5

    :goto_12
    move/from16 v19, v1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x4

    goto :goto_12

    :cond_1f
    :goto_13
    move/from16 v19, v3

    :goto_14
    move-object/from16 v28, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_26

    :cond_20
    move/from16 v3, v19

    move-object/from16 v19, v2

    const v2, 0x64766343

    if-eq v1, v2, :cond_21

    const v2, 0x64767643

    if-ne v1, v2, :cond_22

    :cond_21
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    move/from16 v12, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_25

    :cond_22
    const v2, 0x76706343

    if-ne v1, v2, :cond_28

    if-nez v8, :cond_23

    const/4 v1, 0x1

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    goto :goto_15

    .line 81
    :goto_16
    invoke-static {v1, v2}, Lk2/u;->a(ZLjava/lang/String;)V

    const v1, 0x76703038

    .line 82
    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_24

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_17

    :cond_24
    move-object v1, v2

    :goto_17
    add-int/lit8 v12, v12, 0xc

    .line 83
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v8

    int-to-byte v8, v8

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v11

    int-to-byte v11, v11

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    shr-int/lit8 v13, v12, 0x4

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x7

    int-to-byte v15, v15

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    int-to-byte v2, v13

    .line 88
    invoke-static {v8, v11, v2, v15}, Landroidx/media3/common/util/j;->h(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v32, v2

    :cond_25
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    .line 89
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v8

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v11

    .line 91
    invoke-static {v8}, Landroidx/media3/common/i;->j(I)I

    move-result v22

    if-eqz v2, :cond_27

    const/16 v23, 0x1

    goto :goto_19

    :cond_27
    const/16 v23, 0x2

    .line 92
    :goto_19
    invoke-static {v11}, Landroidx/media3/common/i;->k(I)I

    move-result v24

    move-object v8, v1

    move/from16 v40, v6

    move v15, v13

    move-object/from16 v28, v19

    move/from16 v11, v22

    move-object/from16 v16, v32

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move/from16 v22, v10

    goto/16 :goto_26

    :cond_28
    const v2, 0x61763143

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v9, -0x8

    .line 93
    new-array v2, v1, [B

    const/4 v8, 0x0

    .line 94
    invoke-virtual {v0, v2, v8, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 95
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    add-int/lit8 v12, v12, 0x8

    .line 96
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 97
    invoke-static/range {p0 .. p0}, Le3/b;->i(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;

    move-result-object v1

    .line 98
    iget v2, v1, Landroidx/media3/common/i;->e:I

    .line 99
    iget v8, v1, Landroidx/media3/common/i;->f:I

    .line 100
    iget v11, v1, Landroidx/media3/common/i;->a:I

    .line 101
    iget v12, v1, Landroidx/media3/common/i;->b:I

    .line 102
    iget v1, v1, Landroidx/media3/common/i;->c:I

    .line 103
    const-string v13, "video/av01"

    move/from16 v24, v1

    move v15, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move-object/from16 v28, v19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move-object/from16 v41, v13

    move v13, v8

    move-object/from16 v8, v41

    goto/16 :goto_26

    :cond_29
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_2b

    if-nez v25, :cond_2a

    .line 104
    invoke-static {}, Le3/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2a
    move-object/from16 v1, v25

    const/16 v2, 0x15

    .line 105
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v28, v19

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    goto/16 :goto_26

    :cond_2b
    const v2, 0x6d646376

    if-ne v1, v2, :cond_2d

    if-nez v25, :cond_2c

    .line 108
    invoke-static {}, Le3/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2c
    move-object/from16 v1, v25

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v12

    move/from16 v22, v10

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v10

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v4

    move/from16 v23, v13

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v13

    move/from16 v24, v15

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v15

    move/from16 v28, v3

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v3

    move/from16 v35, v14

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v14

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v36

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v38

    move/from16 v40, v6

    const/4 v6, 0x1

    .line 119
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 128
    div-long v12, v36, v2

    long-to-int v4, v12

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    div-long v2, v38, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1a
    const/4 v6, 0x0

    :goto_1b
    move/from16 v41, v28

    move-object/from16 v28, v19

    move/from16 v19, v41

    goto/16 :goto_26

    :cond_2d
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_30

    if-nez v8, :cond_2e

    const/4 v1, 0x1

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    goto :goto_1c

    .line 130
    :goto_1d
    invoke-static {v1, v2}, Lk2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v8, p9

    :cond_2f
    :goto_1e
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    :goto_1f
    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    goto :goto_1a

    :cond_30
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_33

    if-nez v8, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    .line 131
    :goto_20
    invoke-static {v1, v2}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 132
    invoke-static {v0, v12}, Le3/b;->m(Landroidx/media3/common/util/j0;I)Le3/b$c;

    move-result-object v27

    .line 133
    invoke-static/range {v27 .. v27}, Le3/b$c;->a(Le3/b$c;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static/range {v27 .. v27}, Le3/b$c;->b(Le3/b$c;)[B

    move-result-object v3

    if-eqz v3, :cond_32

    .line 135
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_21

    :cond_32
    move-object/from16 v16, v32

    :goto_21
    move-object v8, v1

    move/from16 v13, v23

    move/from16 v15, v24

    goto :goto_1f

    :cond_33
    const v3, 0x62747274

    if-ne v1, v3, :cond_34

    .line 136
    invoke-static {v0, v12}, Le3/b;->j(Landroidx/media3/common/util/j0;I)Le3/b$a;

    move-result-object v26

    goto :goto_1e

    :cond_34
    const v3, 0x70617370

    if-ne v1, v3, :cond_35

    .line 137
    invoke-static {v0, v12}, Le3/b;->w(Landroidx/media3/common/util/j0;I)F

    move-result v1

    move v14, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v29, 0x1

    goto :goto_1b

    :cond_35
    const v3, 0x73763364

    if-ne v1, v3, :cond_36

    .line 138
    invoke-static {v0, v12, v9}, Le3/b;->x(Landroidx/media3/common/util/j0;II)[B

    move-result-object v18

    goto :goto_1e

    :cond_36
    const v3, 0x73743364

    if-ne v1, v3, :cond_3b

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    const/4 v3, 0x3

    .line 140
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->X(I)V

    if-nez v1, :cond_2f

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v4, 0x1

    if-eq v1, v4, :cond_39

    const/4 v6, 0x2

    if-eq v1, v6, :cond_38

    if-eq v1, v3, :cond_37

    goto/16 :goto_1e

    :cond_37
    move/from16 v28, v3

    goto/16 :goto_1e

    :cond_38
    const/16 v28, 0x2

    goto/16 :goto_1e

    :cond_39
    move/from16 v28, v4

    goto/16 :goto_1e

    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_1e

    :cond_3b
    const/4 v4, 0x1

    const v3, 0x61707643

    if-ne v1, v3, :cond_3c

    add-int/lit8 v1, v9, -0xc

    .line 142
    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    .line 143
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v6, 0x0

    .line 144
    invoke-virtual {v0, v3, v6, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 145
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 146
    new-instance v1, Landroidx/media3/common/util/j0;

    invoke-direct {v1, v3}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Le3/b;->g(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;

    move-result-object v1

    .line 147
    iget v3, v1, Landroidx/media3/common/i;->e:I

    .line 148
    iget v4, v1, Landroidx/media3/common/i;->f:I

    .line 149
    iget v8, v1, Landroidx/media3/common/i;->a:I

    .line 150
    iget v10, v1, Landroidx/media3/common/i;->b:I

    .line 151
    iget v1, v1, Landroidx/media3/common/i;->c:I

    .line 152
    const-string v11, "video/apv"

    move/from16 v24, v1

    move v15, v3

    move v13, v4

    move/from16 v23, v10

    move/from16 v14, v35

    const/4 v1, -0x1

    move-object/from16 v41, v11

    move v11, v8

    move-object/from16 v8, v41

    move/from16 v42, v28

    move-object/from16 v28, v19

    move/from16 v19, v42

    goto/16 :goto_26

    :cond_3c
    const/4 v6, 0x0

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_41

    const/4 v1, -0x1

    move/from16 v12, v34

    if-ne v11, v1, :cond_42

    if-ne v12, v1, :cond_42

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    const v10, 0x6e636c78

    if-eq v3, v10, :cond_3e

    const v10, 0x6e636c63

    if-ne v3, v10, :cond_3d

    goto :goto_22

    .line 154
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported color type: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxParsers"

    invoke-static {v4, v3}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 155
    :cond_3e
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v3

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v10

    const/4 v11, 0x2

    .line 157
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    const/16 v12, 0x13

    if-ne v9, v12, :cond_3f

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3f

    move v12, v4

    goto :goto_23

    :cond_3f
    move v12, v6

    .line 159
    :goto_23
    invoke-static {v3}, Landroidx/media3/common/i;->j(I)I

    move-result v3

    if-eqz v12, :cond_40

    move v11, v4

    .line 160
    :cond_40
    invoke-static {v10}, Landroidx/media3/common/i;->k(I)I

    move-result v4

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v14, v35

    move/from16 v24, v4

    move/from16 v23, v11

    move v11, v3

    goto/16 :goto_1b

    :cond_41
    move/from16 v12, v34

    const/4 v1, -0x1

    :cond_42
    :goto_24
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v14, v35

    move/from16 v24, v12

    goto/16 :goto_1b

    .line 161
    :goto_25
    invoke-static/range {p0 .. p0}, Lk2/o;->a(Landroidx/media3/common/util/j0;)Lk2/o;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 162
    iget-object v3, v3, Lk2/o;->c:Ljava/lang/String;

    .line 163
    const-string v8, "video/dolby-vision"

    move-object/from16 v17, v3

    goto :goto_24

    :goto_26
    add-int/2addr v7, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p8

    move/from16 v10, v22

    move-object/from16 v3, v31

    move/from16 v6, v40

    move/from16 v22, v11

    move-object/from16 v11, p9

    goto/16 :goto_2

    :goto_27
    if-nez v8, :cond_43

    return-void

    .line 164
    :cond_43
    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    move/from16 v1, p4

    .line 165
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v17

    .line 167
    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v5}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v40

    .line 169
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v14, v35

    .line 170
    invoke-virtual {v0, v14}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, p6

    .line 171
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->t0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v18

    .line 172
    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->r0([B)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v28

    .line 173
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->x0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v32

    .line 174
    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v20

    .line 175
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->l0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v21

    .line 176
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->m0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v3, v31

    .line 177
    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v1, p5

    .line 178
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/i$b;

    invoke-direct {v1}, Landroidx/media3/common/i$b;-><init>()V

    .line 179
    invoke-virtual {v1, v11}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v3, v33

    .line 180
    invoke-virtual {v1, v3}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v12}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    move-result-object v1

    if-eqz v25, :cond_44

    .line 182
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_28

    :cond_44
    move-object v9, v2

    :goto_28
    invoke-virtual {v1, v9}, Landroidx/media3/common/i$b;->f([B)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v15, v24

    .line 183
    invoke-virtual {v1, v15}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v13, v23

    .line 184
    invoke-virtual {v1, v13}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    move-result-object v0

    if-eqz v26, :cond_45

    .line 187
    invoke-static/range {v26 .. v26}, Le3/b$a;->b(Le3/b$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 188
    invoke-static/range {v26 .. v26}, Le3/b$a;->a(Le3/b$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    goto :goto_29

    :cond_45
    if-eqz v27, :cond_46

    .line 189
    invoke-static/range {v27 .. v27}, Le3/b$c;->d(Le3/b$c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 190
    invoke-static/range {v27 .. v27}, Le3/b$c;->c(Le3/b$c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 191
    :cond_46
    :goto_29
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    move-object/from16 v1, p8

    iput-object v0, v1, Le3/b$h;->b:Landroidx/media3/common/r;

    return-void
.end method

.method private static L(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->D()S

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->X(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v2, 0x2b

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x2d

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v0

    .line 44
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    new-instance v2, Landroidx/media3/common/x;

    .line 53
    .line 54
    new-instance v4, Landroidx/media3/container/e;

    .line 55
    .line 56
    invoke-direct {v4, v3, p0}, Landroidx/media3/container/e;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-array p0, v0, [Landroidx/media3/common/x$a;

    .line 60
    .line 61
    aput-object v4, p0, v1

    .line 62
    .line 63
    invoke-direct {v2, p0}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :catch_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/a1;->p(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/a1;->p(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static c(Landroidx/media3/common/util/j0;III)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v0, p2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_1
    sub-int v3, v0, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v1

    .line 32
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 5

    .line 1
    shr-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x60

    .line 6
    .line 7
    int-to-char v0, v0

    .line 8
    shr-int/lit8 v1, p0, 0x5

    .line 9
    .line 10
    and-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x60

    .line 13
    .line 14
    int-to-char v1, v1

    .line 15
    and-int/lit8 p0, p0, 0x1f

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x60

    .line 18
    .line 19
    int-to-char p0, p0

    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v3, v2, [C

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-char v0, v3, v4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-char v1, v3, v0

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aput-char p0, v3, v1

    .line 31
    .line 32
    :goto_0
    if-ge v4, v2, :cond_2

    .line 33
    .line 34
    aget-char p0, v3, v4

    .line 35
    .line 36
    const/16 v1, 0x61

    .line 37
    .line 38
    if-lt p0, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x7a

    .line 41
    .line 42
    if-le p0, v1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/2addr v4, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method private static e(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const v0, 0x76696465

    .line 9
    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    const v0, 0x74657874

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const v0, 0x7362746c

    .line 21
    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const v0, 0x73756274

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    const v0, 0x636c6370

    .line 31
    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const v0, 0x6d657461

    .line 37
    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x5

    .line 42
    return p0

    .line 43
    :cond_3
    const/4 p0, -0x1

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 46
    return p0
.end method

.method public static f(Landroidx/media3/common/util/j0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static g(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;
    .locals 11

    .line 1
    new-instance v0, Landroidx/media3/common/i$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/i$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/common/util/i0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    mul-int/2addr p0, v2

    .line 22
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->p(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    :goto_0
    if-ge v5, v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    move v7, v4

    .line 45
    :goto_1
    if-ge v7, v6, :cond_2

    .line 46
    .line 47
    const/4 v8, 0x6

    .line 48
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->r(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 56
    .line 57
    .line 58
    const/16 v9, 0xb

    .line 59
    .line 60
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->s(I)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x4

    .line 64
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->r(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->h(I)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    add-int/2addr v9, v2

    .line 72
    invoke-virtual {v0, v9}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    .line 79
    .line 80
    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-static {v8}, Landroidx/media3/common/i;->j(I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-eqz v10, :cond_0

    .line 107
    .line 108
    move v10, p0

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    const/4 v10, 0x2

    .line 111
    :goto_2
    invoke-virtual {v8, v10}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v9}, Landroidx/media3/common/i;->k(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v8, v9}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    .line 120
    .line 121
    .line 122
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method

.method private static h(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Le3/b$h;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v7, p8

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/16 v9, 0x10

    .line 19
    .line 20
    add-int/lit8 v10, v2, 0x10

    .line 21
    .line 22
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->W(I)V

    .line 23
    .line 24
    .line 25
    const/4 v10, 0x6

    .line 26
    const/16 v11, 0x8

    .line 27
    .line 28
    if-eqz p6, :cond_0

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->X(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    .line 39
    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    :goto_0
    const/4 v14, 0x4

    .line 43
    const/4 v12, 0x2

    .line 44
    if-eqz v13, :cond_d

    .line 45
    .line 46
    if-ne v13, v8, :cond_1

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    if-ne v13, v12, :cond_c

    .line 51
    .line 52
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/j0;->X(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->o()D

    .line 56
    .line 57
    .line 58
    move-result-wide v19

    .line 59
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    long-to-int v9, v9

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/j0;->X(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    and-int/lit8 v20, v19, 0x1

    .line 80
    .line 81
    if-eqz v20, :cond_2

    .line 82
    .line 83
    move/from16 v20, v8

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/16 v20, 0x0

    .line 87
    .line 88
    :goto_1
    and-int/lit8 v19, v19, 0x2

    .line 89
    .line 90
    if-eqz v19, :cond_3

    .line 91
    .line 92
    move/from16 v19, v8

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/16 v19, 0x0

    .line 96
    .line 97
    :goto_2
    const/16 v12, 0x20

    .line 98
    .line 99
    if-nez v20, :cond_a

    .line 100
    .line 101
    if-ne v13, v11, :cond_4

    .line 102
    .line 103
    const/4 v12, 0x3

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    const/16 v15, 0x10

    .line 106
    .line 107
    if-ne v13, v15, :cond_6

    .line 108
    .line 109
    if-eqz v19, :cond_5

    .line 110
    .line 111
    const/high16 v12, 0x10000000

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    const/4 v12, 0x2

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    const/16 v15, 0x18

    .line 117
    .line 118
    if-ne v13, v15, :cond_8

    .line 119
    .line 120
    if-eqz v19, :cond_7

    .line 121
    .line 122
    const/high16 v12, 0x50000000

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    const/16 v12, 0x15

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    if-ne v13, v12, :cond_b

    .line 129
    .line 130
    if-eqz v19, :cond_9

    .line 131
    .line 132
    const/high16 v12, 0x60000000

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    const/16 v12, 0x16

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    if-ne v13, v12, :cond_b

    .line 139
    .line 140
    move v12, v14

    .line 141
    goto :goto_3

    .line 142
    :cond_b
    const/4 v12, -0x1

    .line 143
    :goto_3
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    .line 144
    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    goto :goto_5

    .line 148
    :cond_c
    return-void

    .line 149
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->X(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->I()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    sub-int/2addr v12, v14

    .line 165
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-ne v13, v8, :cond_e

    .line 173
    .line 174
    const/16 v13, 0x10

    .line 175
    .line 176
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/j0;->X(I)V

    .line 177
    .line 178
    .line 179
    :cond_e
    move v13, v12

    .line 180
    const/4 v12, -0x1

    .line 181
    move/from16 v26, v10

    .line 182
    .line 183
    move v10, v9

    .line 184
    move/from16 v9, v26

    .line 185
    .line 186
    :goto_5
    const v15, 0x73617762

    .line 187
    .line 188
    .line 189
    const v14, 0x73616d72

    .line 190
    .line 191
    .line 192
    const v8, 0x69616d66

    .line 193
    .line 194
    .line 195
    if-ne v1, v8, :cond_f

    .line 196
    .line 197
    const/4 v9, -0x1

    .line 198
    const/4 v10, -0x1

    .line 199
    goto :goto_7

    .line 200
    :cond_f
    if-ne v1, v14, :cond_10

    .line 201
    .line 202
    const/16 v9, 0x1f40

    .line 203
    .line 204
    :goto_6
    const/4 v10, 0x1

    .line 205
    goto :goto_7

    .line 206
    :cond_10
    if-ne v1, v15, :cond_11

    .line 207
    .line 208
    const/16 v9, 0x3e80

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    const v8, 0x656e6361

    .line 216
    .line 217
    .line 218
    if-ne v1, v8, :cond_14

    .line 219
    .line 220
    invoke-static {v0, v2, v3}, Le3/b;->y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    if-eqz v8, :cond_13

    .line 225
    .line 226
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v6, :cond_12

    .line 235
    .line 236
    const/4 v6, 0x0

    .line 237
    goto :goto_8

    .line 238
    :cond_12
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v15, Le3/u;

    .line 241
    .line 242
    iget-object v15, v15, Le3/u;->b:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v6, v15}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    :goto_8
    iget-object v15, v7, Le3/b$h;->a:[Le3/u;

    .line 249
    .line 250
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v8, Le3/u;

    .line 253
    .line 254
    aput-object v8, v15, p9

    .line 255
    .line 256
    :cond_13
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->W(I)V

    .line 257
    .line 258
    .line 259
    :cond_14
    const v8, 0x61632d33

    .line 260
    .line 261
    .line 262
    const-string v15, "audio/mhm1"

    .line 263
    .line 264
    if-ne v1, v8, :cond_15

    .line 265
    .line 266
    const-string v1, "audio/ac3"

    .line 267
    .line 268
    :goto_9
    move v14, v12

    .line 269
    goto/16 :goto_d

    .line 270
    .line 271
    :cond_15
    const v8, 0x65632d33

    .line 272
    .line 273
    .line 274
    if-ne v1, v8, :cond_16

    .line 275
    .line 276
    const-string v1, "audio/eac3"

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_16
    const v8, 0x61632d34

    .line 280
    .line 281
    .line 282
    if-ne v1, v8, :cond_17

    .line 283
    .line 284
    const-string v1, "audio/ac4"

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_17
    const v8, 0x64747363

    .line 288
    .line 289
    .line 290
    if-ne v1, v8, :cond_18

    .line 291
    .line 292
    const-string v1, "audio/vnd.dts"

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_18
    const v8, 0x64747368

    .line 296
    .line 297
    .line 298
    if-eq v1, v8, :cond_2d

    .line 299
    .line 300
    const v8, 0x6474736c

    .line 301
    .line 302
    .line 303
    if-ne v1, v8, :cond_19

    .line 304
    .line 305
    goto/16 :goto_c

    .line 306
    .line 307
    :cond_19
    const v8, 0x64747365

    .line 308
    .line 309
    .line 310
    if-ne v1, v8, :cond_1a

    .line 311
    .line 312
    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_1a
    const v8, 0x64747378

    .line 316
    .line 317
    .line 318
    if-ne v1, v8, :cond_1b

    .line 319
    .line 320
    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_1b
    if-ne v1, v14, :cond_1c

    .line 324
    .line 325
    const-string v1, "audio/3gpp"

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_1c
    const v8, 0x73617762

    .line 329
    .line 330
    .line 331
    if-ne v1, v8, :cond_1d

    .line 332
    .line 333
    const-string v1, "audio/amr-wb"

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_1d
    const v8, 0x736f7774

    .line 337
    .line 338
    .line 339
    const-string v14, "audio/raw"

    .line 340
    .line 341
    if-ne v1, v8, :cond_1e

    .line 342
    .line 343
    :goto_a
    move-object v1, v14

    .line 344
    const/4 v14, 0x2

    .line 345
    goto/16 :goto_d

    .line 346
    .line 347
    :cond_1e
    const v8, 0x74776f73

    .line 348
    .line 349
    .line 350
    if-ne v1, v8, :cond_1f

    .line 351
    .line 352
    move-object v1, v14

    .line 353
    const/high16 v14, 0x10000000

    .line 354
    .line 355
    goto/16 :goto_d

    .line 356
    .line 357
    :cond_1f
    const v8, 0x6c70636d

    .line 358
    .line 359
    .line 360
    if-ne v1, v8, :cond_21

    .line 361
    .line 362
    const/4 v8, -0x1

    .line 363
    if-ne v12, v8, :cond_20

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_20
    move-object v1, v14

    .line 367
    goto :goto_9

    .line 368
    :cond_21
    const v8, 0x2e6d7032

    .line 369
    .line 370
    .line 371
    if-eq v1, v8, :cond_2c

    .line 372
    .line 373
    const v8, 0x2e6d7033

    .line 374
    .line 375
    .line 376
    if-ne v1, v8, :cond_22

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_22
    const v8, 0x6d686131

    .line 380
    .line 381
    .line 382
    if-ne v1, v8, :cond_23

    .line 383
    .line 384
    const-string v1, "audio/mha1"

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_23
    const v8, 0x6d686d31

    .line 388
    .line 389
    .line 390
    if-ne v1, v8, :cond_24

    .line 391
    .line 392
    move v14, v12

    .line 393
    move-object v1, v15

    .line 394
    goto :goto_d

    .line 395
    :cond_24
    const v8, 0x616c6163

    .line 396
    .line 397
    .line 398
    if-ne v1, v8, :cond_25

    .line 399
    .line 400
    const-string v1, "audio/alac"

    .line 401
    .line 402
    goto/16 :goto_9

    .line 403
    .line 404
    :cond_25
    const v8, 0x616c6177

    .line 405
    .line 406
    .line 407
    if-ne v1, v8, :cond_26

    .line 408
    .line 409
    const-string v1, "audio/g711-alaw"

    .line 410
    .line 411
    goto/16 :goto_9

    .line 412
    .line 413
    :cond_26
    const v8, 0x756c6177

    .line 414
    .line 415
    .line 416
    if-ne v1, v8, :cond_27

    .line 417
    .line 418
    const-string v1, "audio/g711-mlaw"

    .line 419
    .line 420
    goto/16 :goto_9

    .line 421
    .line 422
    :cond_27
    const v8, 0x4f707573

    .line 423
    .line 424
    .line 425
    if-ne v1, v8, :cond_28

    .line 426
    .line 427
    const-string v1, "audio/opus"

    .line 428
    .line 429
    goto/16 :goto_9

    .line 430
    .line 431
    :cond_28
    const v8, 0x664c6143

    .line 432
    .line 433
    .line 434
    if-ne v1, v8, :cond_29

    .line 435
    .line 436
    const-string v1, "audio/flac"

    .line 437
    .line 438
    goto/16 :goto_9

    .line 439
    .line 440
    :cond_29
    const v8, 0x6d6c7061

    .line 441
    .line 442
    .line 443
    if-ne v1, v8, :cond_2a

    .line 444
    .line 445
    const-string v1, "audio/true-hd"

    .line 446
    .line 447
    goto/16 :goto_9

    .line 448
    .line 449
    :cond_2a
    const v8, 0x69616d66

    .line 450
    .line 451
    .line 452
    if-ne v1, v8, :cond_2b

    .line 453
    .line 454
    const-string v1, "audio/iamf"

    .line 455
    .line 456
    goto/16 :goto_9

    .line 457
    .line 458
    :cond_2b
    move v14, v12

    .line 459
    const/4 v1, 0x0

    .line 460
    goto :goto_d

    .line 461
    :cond_2c
    :goto_b
    const-string v1, "audio/mpeg"

    .line 462
    .line 463
    goto/16 :goto_9

    .line 464
    .line 465
    :cond_2d
    :goto_c
    const-string v1, "audio/vnd.dts.hd"

    .line 466
    .line 467
    goto/16 :goto_9

    .line 468
    .line 469
    :goto_d
    move/from16 v25, v14

    .line 470
    .line 471
    const/4 v8, 0x0

    .line 472
    const/4 v12, 0x0

    .line 473
    const/16 v16, 0x0

    .line 474
    .line 475
    const/16 v24, 0x0

    .line 476
    .line 477
    :goto_e
    sub-int v14, v11, v2

    .line 478
    .line 479
    if-ge v14, v3, :cond_47

    .line 480
    .line 481
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->W(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 485
    .line 486
    .line 487
    move-result v14

    .line 488
    if-lez v14, :cond_2e

    .line 489
    .line 490
    const/4 v2, 0x1

    .line 491
    goto :goto_f

    .line 492
    :cond_2e
    const/4 v2, 0x0

    .line 493
    :goto_f
    const-string v3, "childAtomSize must be positive"

    .line 494
    .line 495
    invoke-static {v2, v3}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    const v3, 0x6d686143

    .line 503
    .line 504
    .line 505
    if-ne v2, v3, :cond_32

    .line 506
    .line 507
    const/16 v3, 0x8

    .line 508
    .line 509
    add-int/lit8 v2, v11, 0x8

    .line 510
    .line 511
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 512
    .line 513
    .line 514
    const/4 v2, 0x1

    .line 515
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 523
    .line 524
    .line 525
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    if-eqz v8, :cond_2f

    .line 530
    .line 531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    new-array v8, v2, [Ljava/lang/Object;

    .line 536
    .line 537
    const/4 v2, 0x0

    .line 538
    aput-object v3, v8, v2

    .line 539
    .line 540
    const-string v3, "mhm1.%02X"

    .line 541
    .line 542
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    move-object v8, v3

    .line 547
    move-object/from16 p7, v15

    .line 548
    .line 549
    goto :goto_10

    .line 550
    :cond_2f
    const/4 v2, 0x0

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    move-object/from16 p7, v15

    .line 556
    .line 557
    const/4 v8, 0x1

    .line 558
    new-array v15, v8, [Ljava/lang/Object;

    .line 559
    .line 560
    aput-object v3, v15, v2

    .line 561
    .line 562
    const-string v3, "mha1.%02X"

    .line 563
    .line 564
    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    move-object v8, v3

    .line 569
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    new-array v15, v3, [B

    .line 574
    .line 575
    invoke-virtual {v0, v15, v2, v3}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 576
    .line 577
    .line 578
    if-nez v12, :cond_30

    .line 579
    .line 580
    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    move-object v12, v3

    .line 585
    goto :goto_11

    .line 586
    :cond_30
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    check-cast v3, [B

    .line 591
    .line 592
    invoke-static {v15, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    move-object v12, v2

    .line 597
    :cond_31
    :goto_11
    const/4 v3, -0x1

    .line 598
    :goto_12
    const/4 v15, 0x1

    .line 599
    const/16 v17, 0x3

    .line 600
    .line 601
    const/16 v18, 0x0

    .line 602
    .line 603
    const/16 v19, 0x4

    .line 604
    .line 605
    const/16 v21, 0x2

    .line 606
    .line 607
    const v22, 0x616c6163

    .line 608
    .line 609
    .line 610
    const/16 v23, 0x8

    .line 611
    .line 612
    goto/16 :goto_1b

    .line 613
    .line 614
    :cond_32
    move-object/from16 p7, v15

    .line 615
    .line 616
    const v3, 0x6d686150

    .line 617
    .line 618
    .line 619
    if-ne v2, v3, :cond_34

    .line 620
    .line 621
    const/16 v3, 0x8

    .line 622
    .line 623
    add-int/lit8 v2, v11, 0x8

    .line 624
    .line 625
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-lez v2, :cond_31

    .line 633
    .line 634
    new-array v3, v2, [B

    .line 635
    .line 636
    const/4 v15, 0x0

    .line 637
    invoke-virtual {v0, v3, v15, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 638
    .line 639
    .line 640
    if-nez v12, :cond_33

    .line 641
    .line 642
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 643
    .line 644
    .line 645
    move-result-object v12

    .line 646
    goto :goto_11

    .line 647
    :cond_33
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    check-cast v2, [B

    .line 652
    .line 653
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 654
    .line 655
    .line 656
    move-result-object v12

    .line 657
    goto :goto_11

    .line 658
    :cond_34
    const v3, 0x65736473

    .line 659
    .line 660
    .line 661
    if-eq v2, v3, :cond_35

    .line 662
    .line 663
    if-eqz p6, :cond_36

    .line 664
    .line 665
    const v15, 0x77617665

    .line 666
    .line 667
    .line 668
    if-ne v2, v15, :cond_36

    .line 669
    .line 670
    :cond_35
    const/4 v15, 0x1

    .line 671
    const/16 v17, 0x3

    .line 672
    .line 673
    const/16 v18, 0x0

    .line 674
    .line 675
    const/16 v19, 0x4

    .line 676
    .line 677
    const/16 v21, 0x2

    .line 678
    .line 679
    const v22, 0x616c6163

    .line 680
    .line 681
    .line 682
    const/16 v23, 0x8

    .line 683
    .line 684
    goto/16 :goto_18

    .line 685
    .line 686
    :cond_36
    const v3, 0x62747274

    .line 687
    .line 688
    .line 689
    if-ne v2, v3, :cond_37

    .line 690
    .line 691
    invoke-static {v0, v11}, Le3/b;->j(Landroidx/media3/common/util/j0;I)Le3/b$a;

    .line 692
    .line 693
    .line 694
    move-result-object v24

    .line 695
    goto :goto_11

    .line 696
    :cond_37
    const v3, 0x64616333

    .line 697
    .line 698
    .line 699
    if-ne v2, v3, :cond_38

    .line 700
    .line 701
    const/16 v3, 0x8

    .line 702
    .line 703
    add-int/lit8 v2, v11, 0x8

    .line 704
    .line 705
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 706
    .line 707
    .line 708
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-static {v0, v2, v5, v6}, Lk2/b;->d(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    iput-object v2, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 717
    .line 718
    :goto_13
    move/from16 v23, v3

    .line 719
    .line 720
    const/4 v15, 0x1

    .line 721
    const/16 v17, 0x3

    .line 722
    .line 723
    const/16 v18, 0x0

    .line 724
    .line 725
    const/16 v19, 0x4

    .line 726
    .line 727
    const/16 v21, 0x2

    .line 728
    .line 729
    goto/16 :goto_17

    .line 730
    .line 731
    :cond_38
    const/16 v3, 0x8

    .line 732
    .line 733
    const v15, 0x64656333

    .line 734
    .line 735
    .line 736
    if-ne v2, v15, :cond_39

    .line 737
    .line 738
    add-int/lit8 v2, v11, 0x8

    .line 739
    .line 740
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 741
    .line 742
    .line 743
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-static {v0, v2, v5, v6}, Lk2/b;->h(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iput-object v2, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 752
    .line 753
    goto :goto_13

    .line 754
    :cond_39
    const v15, 0x64616334

    .line 755
    .line 756
    .line 757
    if-ne v2, v15, :cond_3a

    .line 758
    .line 759
    add-int/lit8 v2, v11, 0x8

    .line 760
    .line 761
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 762
    .line 763
    .line 764
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-static {v0, v2, v5, v6}, Lk2/c;->d(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    iput-object v2, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 773
    .line 774
    const/4 v15, 0x1

    .line 775
    const/16 v17, 0x3

    .line 776
    .line 777
    const/16 v18, 0x0

    .line 778
    .line 779
    const/16 v19, 0x4

    .line 780
    .line 781
    const/16 v21, 0x2

    .line 782
    .line 783
    const/16 v23, 0x8

    .line 784
    .line 785
    goto/16 :goto_17

    .line 786
    .line 787
    :cond_3a
    const v3, 0x646d6c70

    .line 788
    .line 789
    .line 790
    if-ne v2, v3, :cond_3c

    .line 791
    .line 792
    if-lez v13, :cond_3b

    .line 793
    .line 794
    move v9, v13

    .line 795
    const/4 v3, -0x1

    .line 796
    const/4 v10, 0x2

    .line 797
    goto/16 :goto_12

    .line 798
    .line 799
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 805
    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    const/4 v15, 0x0

    .line 817
    invoke-static {v0, v15}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    throw v0

    .line 822
    :cond_3c
    const/4 v15, 0x0

    .line 823
    const v3, 0x64647473

    .line 824
    .line 825
    .line 826
    if-eq v2, v3, :cond_3d

    .line 827
    .line 828
    const v3, 0x75647473

    .line 829
    .line 830
    .line 831
    if-ne v2, v3, :cond_3e

    .line 832
    .line 833
    :cond_3d
    const/4 v15, 0x1

    .line 834
    const/16 v17, 0x3

    .line 835
    .line 836
    const/16 v18, 0x0

    .line 837
    .line 838
    const/16 v19, 0x4

    .line 839
    .line 840
    const/16 v21, 0x2

    .line 841
    .line 842
    const/16 v23, 0x8

    .line 843
    .line 844
    goto/16 :goto_16

    .line 845
    .line 846
    :cond_3e
    const v3, 0x644f7073

    .line 847
    .line 848
    .line 849
    if-ne v2, v3, :cond_3f

    .line 850
    .line 851
    const/16 v23, 0x8

    .line 852
    .line 853
    add-int/lit8 v2, v14, -0x8

    .line 854
    .line 855
    sget-object v3, Le3/b;->a:[B

    .line 856
    .line 857
    array-length v12, v3

    .line 858
    add-int/2addr v12, v2

    .line 859
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 860
    .line 861
    .line 862
    move-result-object v12

    .line 863
    add-int/lit8 v15, v11, 0x8

    .line 864
    .line 865
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/j0;->W(I)V

    .line 866
    .line 867
    .line 868
    array-length v3, v3

    .line 869
    invoke-virtual {v0, v12, v3, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 870
    .line 871
    .line 872
    invoke-static {v12}, Lk2/k0;->a([B)Ljava/util/List;

    .line 873
    .line 874
    .line 875
    move-result-object v12

    .line 876
    const/4 v3, -0x1

    .line 877
    const/4 v15, 0x1

    .line 878
    const/16 v17, 0x3

    .line 879
    .line 880
    const/16 v18, 0x0

    .line 881
    .line 882
    const/16 v19, 0x4

    .line 883
    .line 884
    const/16 v21, 0x2

    .line 885
    .line 886
    :goto_14
    const v22, 0x616c6163

    .line 887
    .line 888
    .line 889
    goto/16 :goto_1b

    .line 890
    .line 891
    :cond_3f
    const/16 v23, 0x8

    .line 892
    .line 893
    const v3, 0x64664c61

    .line 894
    .line 895
    .line 896
    if-ne v2, v3, :cond_40

    .line 897
    .line 898
    add-int/lit8 v2, v14, -0xc

    .line 899
    .line 900
    add-int/lit8 v3, v14, -0x8

    .line 901
    .line 902
    new-array v3, v3, [B

    .line 903
    .line 904
    const/16 v12, 0x66

    .line 905
    .line 906
    const/4 v15, 0x0

    .line 907
    aput-byte v12, v3, v15

    .line 908
    .line 909
    const/16 v12, 0x4c

    .line 910
    .line 911
    const/4 v15, 0x1

    .line 912
    aput-byte v12, v3, v15

    .line 913
    .line 914
    const/16 v12, 0x61

    .line 915
    .line 916
    const/16 v21, 0x2

    .line 917
    .line 918
    aput-byte v12, v3, v21

    .line 919
    .line 920
    const/16 v12, 0x43

    .line 921
    .line 922
    const/16 v17, 0x3

    .line 923
    .line 924
    aput-byte v12, v3, v17

    .line 925
    .line 926
    add-int/lit8 v12, v11, 0xc

    .line 927
    .line 928
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    .line 929
    .line 930
    .line 931
    const/4 v12, 0x4

    .line 932
    invoke-virtual {v0, v3, v12, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 933
    .line 934
    .line 935
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    move/from16 v19, v12

    .line 940
    .line 941
    const/4 v3, -0x1

    .line 942
    const/16 v18, 0x0

    .line 943
    .line 944
    :goto_15
    const v22, 0x616c6163

    .line 945
    .line 946
    .line 947
    move-object v12, v2

    .line 948
    goto/16 :goto_1b

    .line 949
    .line 950
    :cond_40
    const v3, 0x616c6163

    .line 951
    .line 952
    .line 953
    const/4 v15, 0x1

    .line 954
    const/16 v17, 0x3

    .line 955
    .line 956
    const/16 v19, 0x4

    .line 957
    .line 958
    const/16 v21, 0x2

    .line 959
    .line 960
    if-ne v2, v3, :cond_41

    .line 961
    .line 962
    add-int/lit8 v2, v14, -0xc

    .line 963
    .line 964
    new-array v9, v2, [B

    .line 965
    .line 966
    add-int/lit8 v10, v11, 0xc

    .line 967
    .line 968
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->W(I)V

    .line 969
    .line 970
    .line 971
    const/4 v10, 0x0

    .line 972
    invoke-virtual {v0, v9, v10, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 973
    .line 974
    .line 975
    invoke-static {v9}, Landroidx/media3/common/util/j;->u([B)Landroid/util/Pair;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v10, Ljava/lang/Integer;

    .line 982
    .line 983
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 984
    .line 985
    .line 986
    move-result v10

    .line 987
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 988
    .line 989
    check-cast v2, Ljava/lang/Integer;

    .line 990
    .line 991
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 992
    .line 993
    .line 994
    move-result v2

    .line 995
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 996
    .line 997
    .line 998
    move-result-object v12

    .line 999
    move/from16 v22, v3

    .line 1000
    .line 1001
    move v9, v10

    .line 1002
    const/4 v3, -0x1

    .line 1003
    const/16 v18, 0x0

    .line 1004
    .line 1005
    move v10, v2

    .line 1006
    goto/16 :goto_1b

    .line 1007
    .line 1008
    :cond_41
    const v3, 0x69616362

    .line 1009
    .line 1010
    .line 1011
    if-ne v2, v3, :cond_42

    .line 1012
    .line 1013
    add-int/lit8 v2, v11, 0x9

    .line 1014
    .line 1015
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->M()I

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    new-array v3, v2, [B

    .line 1023
    .line 1024
    const/4 v12, 0x0

    .line 1025
    invoke-virtual {v0, v3, v12, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    move/from16 v18, v12

    .line 1033
    .line 1034
    const/4 v3, -0x1

    .line 1035
    goto :goto_15

    .line 1036
    :cond_42
    const/16 v18, 0x0

    .line 1037
    .line 1038
    goto :goto_17

    .line 1039
    :goto_16
    new-instance v2, Landroidx/media3/common/r$b;

    .line 1040
    .line 1041
    invoke-direct {v2}, Landroidx/media3/common/r$b;-><init>()V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v2, v4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    invoke-virtual {v2, v10}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v2, v9}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    invoke-virtual {v2, v6}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    invoke-virtual {v2, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    iput-object v2, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 1073
    .line 1074
    :goto_17
    const/4 v3, -0x1

    .line 1075
    goto/16 :goto_14

    .line 1076
    .line 1077
    :goto_18
    if-ne v2, v3, :cond_43

    .line 1078
    .line 1079
    move v2, v11

    .line 1080
    :goto_19
    const/4 v3, -0x1

    .line 1081
    goto :goto_1a

    .line 1082
    :cond_43
    invoke-static {v0, v3, v11, v14}, Le3/b;->c(Landroidx/media3/common/util/j0;III)I

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    goto :goto_19

    .line 1087
    :goto_1a
    if-eq v2, v3, :cond_46

    .line 1088
    .line 1089
    invoke-static {v0, v2}, Le3/b;->m(Landroidx/media3/common/util/j0;I)Le3/b$c;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v16

    .line 1093
    invoke-static/range {v16 .. v16}, Le3/b$c;->a(Le3/b$c;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-static/range {v16 .. v16}, Le3/b$c;->b(Le3/b$c;)[B

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    if-eqz v2, :cond_46

    .line 1102
    .line 1103
    const-string v12, "audio/vorbis"

    .line 1104
    .line 1105
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v12

    .line 1109
    if-eqz v12, :cond_44

    .line 1110
    .line 1111
    invoke-static {v2}, Lk2/v0;->e([B)Lcom/google/common/collect/ImmutableList;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v12

    .line 1115
    goto :goto_1b

    .line 1116
    :cond_44
    const-string v12, "audio/mp4a-latm"

    .line 1117
    .line 1118
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v12

    .line 1122
    if-eqz v12, :cond_45

    .line 1123
    .line 1124
    invoke-static {v2}, Lk2/a;->e([B)Lk2/a$b;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v8

    .line 1128
    iget v9, v8, Lk2/a$b;->a:I

    .line 1129
    .line 1130
    iget v10, v8, Lk2/a$b;->b:I

    .line 1131
    .line 1132
    iget-object v8, v8, Lk2/a$b;->c:Ljava/lang/String;

    .line 1133
    .line 1134
    :cond_45
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v12

    .line 1138
    :cond_46
    :goto_1b
    add-int/2addr v11, v14

    .line 1139
    move/from16 v2, p2

    .line 1140
    .line 1141
    move/from16 v3, p3

    .line 1142
    .line 1143
    move-object/from16 v15, p7

    .line 1144
    .line 1145
    goto/16 :goto_e

    .line 1146
    .line 1147
    :cond_47
    iget-object v0, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 1148
    .line 1149
    if-nez v0, :cond_4a

    .line 1150
    .line 1151
    if-eqz v1, :cond_4a

    .line 1152
    .line 1153
    new-instance v0, Landroidx/media3/common/r$b;

    .line 1154
    .line 1155
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0, v4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    invoke-virtual {v0, v8}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    invoke-virtual {v0, v10}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    move/from16 v1, v25

    .line 1179
    .line 1180
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v0, v12}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-virtual {v0, v6}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    invoke-virtual {v0, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    if-eqz v16, :cond_48

    .line 1197
    .line 1198
    invoke-static/range {v16 .. v16}, Le3/b$c;->d(Le3/b$c;)J

    .line 1199
    .line 1200
    .line 1201
    move-result-wide v1

    .line 1202
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 1203
    .line 1204
    .line 1205
    move-result v1

    .line 1206
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    invoke-static/range {v16 .. v16}, Le3/b$c;->c(Le3/b$c;)J

    .line 1211
    .line 1212
    .line 1213
    move-result-wide v2

    .line 1214
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 1215
    .line 1216
    .line 1217
    move-result v2

    .line 1218
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 1219
    .line 1220
    .line 1221
    goto :goto_1c

    .line 1222
    :cond_48
    if-eqz v24, :cond_49

    .line 1223
    .line 1224
    invoke-static/range {v24 .. v24}, Le3/b$a;->b(Le3/b$a;)J

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v1

    .line 1228
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 1229
    .line 1230
    .line 1231
    move-result v1

    .line 1232
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v1

    .line 1236
    invoke-static/range {v24 .. v24}, Le3/b$a;->a(Le3/b$a;)J

    .line 1237
    .line 1238
    .line 1239
    move-result-wide v2

    .line 1240
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 1241
    .line 1242
    .line 1243
    move-result v2

    .line 1244
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 1245
    .line 1246
    .line 1247
    :cond_49
    :goto_1c
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    iput-object v0, v7, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 1252
    .line 1253
    :cond_4a
    return-void
.end method

.method private static i(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;
    .locals 15

    .line 1
    new-instance v0, Landroidx/media3/common/i$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/i$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/common/util/i0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    mul-int/2addr p0, v2

    .line 22
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->p(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x6

    .line 35
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->r(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/16 v7, 0xc

    .line 47
    .line 48
    const/16 v8, 0xa

    .line 49
    .line 50
    const/4 v9, 0x2

    .line 51
    if-ne v4, v9, :cond_2

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    move v4, v7

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v4, v8

    .line 60
    :goto_0
    invoke-virtual {v0, v4}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    .line 61
    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    move v8, v7

    .line 66
    :cond_1
    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    if-gt v4, v9, :cond_5

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    move v4, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v4, v2

    .line 77
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    .line 78
    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v8, v2

    .line 84
    :goto_2
    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_3
    const/16 v4, 0xd

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x4

    .line 96
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const-string v8, "BoxParsers"

    .line 101
    .line 102
    if-eq v6, p0, :cond_6

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "Unsupported obu_type: "

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    const-string p0, "Unsupported obu_extension_flag"

    .line 136
    .line 137
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 150
    .line 151
    .line 152
    if-eqz v6, :cond_8

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    const/16 v10, 0x7f

    .line 159
    .line 160
    if-le v6, v10, :cond_8

    .line 161
    .line 162
    const-string p0, "Excessive obu_size"

    .line 163
    .line 164
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_8
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_9

    .line 184
    .line 185
    const-string p0, "Unsupported reduced_still_picture_header"

    .line 186
    .line 187
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_a

    .line 200
    .line 201
    const-string p0, "Unsupported timing_info_present_flag"

    .line 202
    .line 203
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_b

    .line 216
    .line 217
    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 218
    .line 219
    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :cond_b
    const/4 v8, 0x5

    .line 228
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->h(I)I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    const/4 v11, 0x0

    .line 233
    move v12, v11

    .line 234
    :goto_4
    const/4 v13, 0x7

    .line 235
    if-gt v12, v10, :cond_d

    .line 236
    .line 237
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->h(I)I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    if-le v14, v13, :cond_c

    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 247
    .line 248
    .line 249
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_d
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    add-int/2addr v7, p0

    .line 261
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    .line 262
    .line 263
    .line 264
    add-int/2addr v5, p0

    .line 265
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->r(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_e

    .line 273
    .line 274
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/i0;->r(I)V

    .line 275
    .line 276
    .line 277
    :cond_e
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/i0;->r(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_f

    .line 285
    .line 286
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->r(I)V

    .line 287
    .line 288
    .line 289
    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_10

    .line 294
    .line 295
    move v7, v9

    .line 296
    goto :goto_5

    .line 297
    :cond_10
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->h(I)I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    :goto_5
    if-lez v7, :cond_11

    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_11

    .line 308
    .line 309
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->r(I)V

    .line 310
    .line 311
    .line 312
    :cond_11
    if-eqz v5, :cond_12

    .line 313
    .line 314
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 315
    .line 316
    .line 317
    :cond_12
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-ne v6, v9, :cond_13

    .line 325
    .line 326
    if-eqz v3, :cond_13

    .line 327
    .line 328
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    .line 329
    .line 330
    .line 331
    :cond_13
    if-eq v6, p0, :cond_14

    .line 332
    .line 333
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_14

    .line 338
    .line 339
    move v11, p0

    .line 340
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_17

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v11, :cond_15

    .line 359
    .line 360
    if-ne v3, p0, :cond_15

    .line 361
    .line 362
    if-ne v5, v4, :cond_15

    .line 363
    .line 364
    if-nez v2, :cond_15

    .line 365
    .line 366
    move v1, p0

    .line 367
    goto :goto_6

    .line 368
    :cond_15
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->h(I)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    :goto_6
    invoke-static {v3}, Landroidx/media3/common/i;->j(I)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v0, v2}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-ne v1, p0, :cond_16

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_16
    move p0, v9

    .line 384
    :goto_7
    invoke-virtual {v2, p0}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-static {v5}, Landroidx/media3/common/i;->k(I)I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-virtual {p0, v1}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    .line 393
    .line 394
    .line 395
    :cond_17
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    return-object p0
.end method

.method private static j(Landroidx/media3/common/util/j0;I)Le3/b$a;
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    new-instance v2, Le3/b$a;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0, v1}, Le3/b$a;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method static k(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x66726d61

    .line 26
    .line 27
    .line 28
    if-ne v9, v10, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const v10, 0x7363686d

    .line 40
    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->X(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const v10, 0x73636869

    .line 54
    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "cenc"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    const-string p1, "cbc1"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    const-string p1, "cens"

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    const-string p1, "cbcs"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 103
    .line 104
    invoke-static {p2, v0}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eq v5, v1, :cond_7

    .line 108
    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v7, v4}, Le3/b;->z(Landroidx/media3/common/util/j0;IILjava/lang/String;)Le3/u;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    move v2, p1

    .line 124
    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 125
    .line 126
    invoke-static {v2, p1}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Le3/u;

    .line 134
    .line 135
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method private static l(Landroidx/media3/container/d$b;)Landroid/util/Pair;
    .locals 8

    .line 1
    const v0, 0x656c7374

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Le3/b;->p(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v2, v1, [J

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v1, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v0, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    aput-wide v6, v2, v4

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    :goto_2
    aput-wide v6, v3, v4

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->D()S

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v5, :cond_3

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Unsupported media rate."

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static m(Landroidx/media3/common/util/j0;I)Le3/b$c;
    .locals 12

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Le3/b;->n(Landroidx/media3/common/util/j0;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Le3/b;->n(Landroidx/media3/common/util/j0;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Landroidx/media3/common/y;->h(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Le3/b;->n(Landroidx/media3/common/util/j0;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array v5, p1, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, v5, v6, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Le3/b$c;

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    cmp-long p1, v3, v6

    .line 115
    .line 116
    const-wide/16 v8, -0x1

    .line 117
    .line 118
    if-lez p1, :cond_4

    .line 119
    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v8

    .line 123
    :goto_0
    cmp-long p1, v0, v6

    .line 124
    .line 125
    if-lez p1, :cond_5

    .line 126
    .line 127
    move-wide v6, v0

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move-wide v6, v8

    .line 130
    :goto_1
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v10

    .line 133
    invoke-direct/range {v1 .. v7}, Le3/b$c;-><init>(Ljava/lang/String;[BJJ)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_6
    :goto_2
    new-instance p0, Le3/b$c;

    .line 138
    .line 139
    const-wide/16 v4, -0x1

    .line 140
    .line 141
    const-wide/16 v6, -0x1

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    move-object v1, p0

    .line 145
    invoke-direct/range {v1 .. v7}, Le3/b$c;-><init>(Ljava/lang/String;[BJJ)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method private static n(Landroidx/media3/common/util/j0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static o(I)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static p(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method private static q(Landroidx/media3/common/util/j0;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static r(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Le3/j;->d(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Landroidx/media3/common/x;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method private static s(Landroidx/media3/common/util/j0;)Le3/b$e;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Le3/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-ge v3, v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    add-int v7, v2, v3

    .line 47
    .line 48
    aget-byte v6, v6, v7

    .line 49
    .line 50
    const/4 v7, -0x1

    .line 51
    if-eq v6, v7, :cond_4

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    :goto_2
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    cmp-long v2, v0, v2

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    :goto_3
    move-wide v6, v4

    .line 71
    goto :goto_4

    .line 72
    :cond_3
    const-wide/32 v5, 0xf4240

    .line 73
    .line 74
    .line 75
    move-wide v3, v0

    .line 76
    move-wide v7, v9

    .line 77
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    move-wide v6, v0

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Le3/b;->d(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    new-instance p0, Le3/b$e;

    .line 99
    .line 100
    move-object v3, p0

    .line 101
    move-wide v4, v9

    .line 102
    invoke-direct/range {v3 .. v8}, Le3/b$e;-><init>(JJLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method

.method public static t(Landroidx/media3/container/d$b;)Landroidx/media3/common/x;
    .locals 10

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    invoke-static {v0}, Le3/b;->q(Landroidx/media3/common/util/j0;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_0
    const/16 v5, 0x8

    .line 57
    .line 58
    if-ge v4, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x4

    .line 65
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v6, v5

    .line 69
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-le v4, v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/lit8 v7, v7, -0x1

    .line 107
    .line 108
    if-ltz v7, :cond_2

    .line 109
    .line 110
    if-ge v7, v1, :cond_2

    .line 111
    .line 112
    aget-object v7, v3, v7

    .line 113
    .line 114
    add-int v8, v4, v6

    .line 115
    .line 116
    invoke-static {p0, v8, v7}, Le3/j;->i(Landroidx/media3/common/util/j0;ILjava/lang/String;)Landroidx/media3/container/b;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v9, "Skipped metadata with unknown key index: "

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "BoxParsers"

    .line 144
    .line 145
    invoke-static {v8, v7}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 149
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->W(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance v2, Landroidx/media3/common/x;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static u(Landroidx/media3/common/util/j0;IIILe3/b$h;)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x6d657474

    .line 7
    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p1, Landroidx/media3/common/r$b;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, p4, Le3/b$h;->b:Landroidx/media3/common/r;

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static v(Landroidx/media3/common/util/j0;)Landroidx/media3/container/f;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Le3/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Landroidx/media3/container/f;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/f;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method private static w(Landroidx/media3/common/util/j0;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static x(Landroidx/media3/common/util/j0;II)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x70726f6a

    .line 19
    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lk2/u;->a(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x73696e66

    .line 31
    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Le3/b;->k(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static z(Landroidx/media3/common/util/j0;IILjava/lang/String;)Le3/u;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x74656e63

    .line 20
    .line 21
    .line 22
    if-ne v3, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Le3/b;->p(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 40
    .line 41
    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 v1, p1, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0xf

    .line 54
    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    new-array v7, p1, [B

    .line 73
    .line 74
    invoke-virtual {p0, v7, v0, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-array v2, p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    new-instance p0, Le3/u;

    .line 92
    .line 93
    move-object v3, p0

    .line 94
    move-object v5, p3

    .line 95
    invoke-direct/range {v3 .. v10}, Le3/u;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method
