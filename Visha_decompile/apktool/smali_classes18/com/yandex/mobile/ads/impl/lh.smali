.class final Lcom/yandex/mobile/ads/impl/lh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lh$d;,
        Lcom/yandex/mobile/ads/impl/lh$e;,
        Lcom/yandex/mobile/ads/impl/lh$c;,
        Lcom/yandex/mobile/ads/impl/lh$a;,
        Lcom/yandex/mobile/ads/impl/lh$b;
    }
.end annotation


# static fields
.field private static final a:[B

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/lh;->a:[B

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/ag1;)I
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a(IILcom/yandex/mobile/ads/impl/ag1;)Landroid/util/Pair;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v1

    :goto_0
    sub-int v2, v1, p0

    move/from16 v4, p1

    if-ge v2, v4, :cond_14

    .line 29
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    if-eqz v7, :cond_13

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_12

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

    .line 32
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 36
    invoke-virtual {v0, v13}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 37
    sget-object v3, Lcom/yandex/mobile/ads/impl/lo;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/yandex/mobile/ads/impl/ag1;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

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

    .line 38
    :cond_4
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 39
    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 40
    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 41
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
    if-eqz v3, :cond_11

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    if-eqz v3, :cond_10

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 42
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 46
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-nez v3, :cond_9

    .line 47
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 48
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 49
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 50
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v12

    const/16 v7, 0x10

    .line 51
    new-array v13, v7, [B

    .line 52
    invoke-virtual {v0, v13, v6, v7}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v7

    .line 54
    new-array v8, v7, [B

    .line 55
    invoke-virtual {v0, v8, v6, v7}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 56
    :goto_a
    new-instance v7, Lcom/yandex/mobile/ads/impl/w52;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/yandex/mobile/ads/impl/w52;-><init>(ZLjava/lang/String;I[BII[B)V

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    if-eqz v5, :cond_f

    .line 57
    sget v3, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_12

    return-object v3

    .line 58
    :cond_f
    const-string v0, "tenc atom is mandatory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v1, 0x0

    .line 59
    const-string v0, "schi atom is mandatory"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v1, 0x0

    .line 60
    const-string v0, "frma atom is mandatory"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_12
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x0

    .line 61
    const-string v0, "childAtomSize must be positive"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/v52;Lcom/yandex/mobile/ads/impl/kh$a;Lcom/yandex/mobile/ads/impl/ie0;)Lcom/yandex/mobile/ads/impl/b62;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 62
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    new-instance v5, Lcom/yandex/mobile/ads/impl/lh$d;

    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-direct {v5, v3, v6}, Lcom/yandex/mobile/ads/impl/lh$d;-><init>(Lcom/yandex/mobile/ads/impl/kh$b;Lcom/yandex/mobile/ads/impl/jc0;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 64
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 65
    new-instance v5, Lcom/yandex/mobile/ads/impl/lh$e;

    invoke-direct {v5, v3}, Lcom/yandex/mobile/ads/impl/lh$e;-><init>(Lcom/yandex/mobile/ads/impl/kh$b;)V

    .line 66
    :goto_0
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/lh$c;->b()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 67
    new-instance v9, Lcom/yandex/mobile/ads/impl/b62;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/b62;-><init>(Lcom/yandex/mobile/ads/impl/v52;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v7, 0x7374636f

    .line 68
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const v7, 0x636f3634

    .line 69
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v6

    .line 71
    :goto_1
    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const v10, 0x73747363

    .line 72
    invoke-virtual {v0, v10}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v10

    .line 73
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget-object v10, v10, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const v11, 0x73747473

    .line 75
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v11

    .line 76
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-object v11, v11, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const v12, 0x73747373

    .line 78
    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 79
    iget-object v12, v12, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const v13, 0x63747473

    .line 80
    invoke-virtual {v0, v13}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 82
    :goto_3
    new-instance v13, Lcom/yandex/mobile/ads/impl/lh$a;

    invoke-direct {v13, v10, v7, v9}, Lcom/yandex/mobile/ads/impl/lh$a;-><init>(Lcom/yandex/mobile/ads/impl/ag1;Lcom/yandex/mobile/ads/impl/ag1;Z)V

    const/16 v7, 0xc

    .line 83
    invoke-virtual {v11, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 84
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v9

    sub-int/2addr v9, v8

    .line 85
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v10

    .line 86
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v14

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 88
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    const/4 v4, -0x1

    if-eqz v12, :cond_7

    .line 89
    invoke-virtual {v12, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 90
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v7

    if-lez v7, :cond_6

    .line 91
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    move v7, v6

    .line 92
    :goto_5
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/lh$c;->a()I

    move-result v6

    .line 93
    iget-object v8, v1, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    if-eq v6, v4, :cond_9

    .line 94
    const-string v4, "audio/raw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 95
    const-string v4, "audio/g711-mlaw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 96
    const-string v4, "audio/g711-alaw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v9, :cond_9

    if-nez v15, :cond_9

    if-nez v7, :cond_9

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    .line 97
    iget v0, v13, Lcom/yandex/mobile/ads/impl/lh$a;->a:I

    new-array v4, v0, [J

    .line 98
    new-array v0, v0, [I

    .line 99
    :goto_7
    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/lh$a;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 100
    iget v5, v13, Lcom/yandex/mobile/ads/impl/lh$a;->b:I

    iget-wide v9, v13, Lcom/yandex/mobile/ads/impl/lh$a;->d:J

    aput-wide v9, v4, v5

    .line 101
    iget v9, v13, Lcom/yandex/mobile/ads/impl/lh$a;->c:I

    aput v9, v0, v5

    goto :goto_7

    :cond_a
    int-to-long v9, v14

    .line 102
    invoke-static {v6, v4, v0, v9, v10}, Lcom/yandex/mobile/ads/impl/pb0;->a(I[J[IJ)Lcom/yandex/mobile/ads/impl/pb0$a;

    move-result-object v0

    .line 103
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->a:[J

    .line 104
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->b:[I

    .line 105
    iget v6, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->c:I

    .line 106
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->d:[J

    .line 107
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->e:[I

    .line 108
    iget-wide v11, v0, Lcom/yandex/mobile/ads/impl/pb0$a;->f:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v9

    move-object v6, v10

    move-wide v15, v11

    goto/16 :goto_14

    .line 109
    :cond_b
    new-array v4, v3, [J

    .line 110
    new-array v6, v3, [I

    .line 111
    new-array v7, v3, [J

    .line 112
    new-array v8, v3, [I

    move-object/from16 v23, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v36, v9

    move/from16 v9, p1

    :goto_8
    move/from16 p1, v36

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_14

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_9
    if-nez v27, :cond_c

    .line 113
    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/lh$a;->a()Z

    move-result v22

    if-eqz v22, :cond_c

    move/from16 v30, v14

    move/from16 v31, v15

    .line 114
    iget-wide v14, v13, Lcom/yandex/mobile/ads/impl/lh$a;->d:J

    move/from16 v32, v3

    .line 115
    iget v3, v13, Lcom/yandex/mobile/ads/impl/lh$a;->c:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_9

    :cond_c
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_d

    .line 116
    const-string v2, "Unexpected end of chunk data"

    invoke-static {v10, v2}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 118
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 119
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 120
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_e

    :cond_d
    if-eqz v0, :cond_f

    :goto_a
    if-nez v24, :cond_e

    if-lez v16, :cond_e

    .line 121
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v24

    .line 122
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v24, v24, -0x1

    :cond_f
    move/from16 v3, v21

    .line 123
    aput-wide v28, v4, v1

    .line 124
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/lh$c;->c()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_10

    move v11, v10

    :cond_10
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 125
    aput-wide v14, v7, v1

    if-nez v12, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 126
    :goto_b
    aput v10, v8, v1

    if-ne v1, v2, :cond_12

    const/4 v10, 0x1

    .line 127
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_12

    .line 128
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_12
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_13

    if-lez p1, :cond_13

    .line 130
    invoke-virtual/range {v23 .. v23}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    .line 131
    invoke-virtual/range {v23 .. v23}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    :goto_c
    move/from16 p1, v2

    goto :goto_d

    :cond_13
    move v3, v14

    move/from16 v14, p1

    goto :goto_c

    .line 132
    :goto_d
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v10

    move/from16 v36, v14

    move/from16 v14, p1

    goto/16 :goto_8

    :cond_14
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_e
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_16

    :goto_f
    if-lez v16, :cond_16

    .line 133
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x0

    goto :goto_10

    .line 134
    :cond_15
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x1

    :goto_10
    if-nez v9, :cond_18

    if-nez v30, :cond_18

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    move/from16 v2, v24

    if-nez v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v14, p0

    goto :goto_13

    :cond_18
    move/from16 v2, v24

    .line 135
    :cond_19
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "Inconsistent stbl box for track "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p0

    iget v15, v14, Lcom/yandex/mobile/ads/impl/v52;->a:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1a

    .line 136
    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1a
    const-string v0, ""

    :goto_12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v10, v0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move-object v5, v7

    move-object v6, v8

    move v4, v11

    move-wide v15, v12

    .line 138
    :goto_14
    iget-wide v11, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    const-wide/32 v9, 0xf4240

    move-wide v7, v15

    invoke-static/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 139
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    if-nez v1, :cond_1b

    .line 140
    iget-wide v0, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    invoke-static {v5, v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a([JJ)V

    .line 141
    new-instance v9, Lcom/yandex/mobile/ads/impl/b62;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/b62;-><init>(Lcom/yandex/mobile/ads/impl/v52;[J[II[J[IJ)V

    return-object v9

    .line 142
    :cond_1b
    array-length v1, v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1d

    iget v1, v14, Lcom/yandex/mobile/ads/impl/v52;->b:I

    if-ne v1, v7, :cond_1d

    array-length v1, v5

    const/4 v7, 0x2

    if-lt v1, v7, :cond_1d

    .line 143
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    .line 145
    aget-wide v8, v1, v7

    .line 146
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    aget-wide v21, v1, v7

    iget-wide v10, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    iget-wide v12, v14, Lcom/yandex/mobile/ads/impl/v52;->d:J

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    .line 147
    invoke-static/range {v21 .. v26}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v10

    add-long/2addr v10, v8

    .line 148
    array-length v1, v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    const/4 v7, 0x4

    .line 149
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 150
    array-length v13, v5

    sub-int/2addr v13, v7

    .line 151
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    aget-wide v21, v5, v7

    cmp-long v7, v21, v8

    if-gtz v7, :cond_1d

    aget-wide v12, v5, v12

    cmp-long v7, v8, v12

    if-gez v7, :cond_1d

    aget-wide v12, v5, v1

    cmp-long v1, v12, v10

    if-gez v1, :cond_1d

    cmp-long v1, v10, v15

    if-gtz v1, :cond_1d

    sub-long v23, v15, v10

    sub-long v25, v8, v21

    .line 153
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    int-to-long v7, v1

    iget-wide v9, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    .line 154
    invoke-static/range {v25 .. v30}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 155
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    int-to-long v9, v1

    iget-wide v11, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    move-wide/from16 v25, v9

    move-wide/from16 v27, v11

    .line 156
    invoke-static/range {v23 .. v28}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-nez v1, :cond_1c

    cmp-long v1, v9, v11

    if-eqz v1, :cond_1d

    :cond_1c
    const-wide/32 v11, 0x7fffffff

    cmp-long v1, v7, v11

    if-gtz v1, :cond_1d

    cmp-long v1, v9, v11

    if-gtz v1, :cond_1d

    long-to-int v0, v7

    move-object/from16 v1, p2

    .line 157
    iput v0, v1, Lcom/yandex/mobile/ads/impl/ie0;->a:I

    long-to-int v0, v9

    .line 158
    iput v0, v1, Lcom/yandex/mobile/ads/impl/ie0;->b:I

    .line 159
    iget-wide v0, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    invoke-static {v5, v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a([JJ)V

    .line 160
    iget-object v0, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    iget-wide v11, v14, Lcom/yandex/mobile/ads/impl/v52;->d:J

    const-wide/32 v9, 0xf4240

    .line 161
    invoke-static/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 162
    new-instance v9, Lcom/yandex/mobile/ads/impl/b62;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/b62;-><init>(Lcom/yandex/mobile/ads/impl/v52;[J[II[J[IJ)V

    return-object v9

    .line 163
    :cond_1d
    iget-object v1, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    array-length v7, v1

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_1f

    aget-wide v7, v1, v10

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-nez v7, :cond_1f

    .line 164
    iget-object v0, v14, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    aget-wide v0, v0, v10

    .line 167
    :goto_15
    array-length v7, v5

    if-ge v10, v7, :cond_1e

    .line 168
    aget-wide v7, v5, v10

    sub-long v17, v7, v0

    iget-wide v7, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v7

    .line 169
    invoke-static/range {v17 .. v22}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    aput-wide v7, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1e
    sub-long v17, v15, v0

    .line 170
    iget-wide v0, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v0

    .line 171
    invoke-static/range {v17 .. v22}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 172
    new-instance v9, Lcom/yandex/mobile/ads/impl/b62;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/b62;-><init>(Lcom/yandex/mobile/ads/impl/v52;[J[II[J[IJ)V

    return-object v9

    .line 173
    :cond_1f
    iget v7, v14, Lcom/yandex/mobile/ads/impl/v52;->b:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    goto :goto_16

    :cond_20
    move v7, v10

    .line 174
    :goto_16
    array-length v8, v1

    new-array v8, v8, [I

    .line 175
    array-length v1, v1

    new-array v1, v1, [I

    .line 176
    iget-object v9, v14, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    .line 177
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v10

    move v12, v11

    move v13, v12

    move v15, v13

    .line 178
    :goto_17
    iget-object v10, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    move/from16 p1, v4

    array-length v4, v10

    if-ge v11, v4, :cond_24

    move-object/from16 v16, v3

    .line 179
    aget-wide v3, v9, v11

    const-wide/16 v21, -0x1

    cmp-long v21, v3, v21

    if-eqz v21, :cond_23

    .line 180
    aget-wide v22, v10, v11

    move-object/from16 v21, v9

    iget-wide v9, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    move/from16 p2, v12

    move/from16 v28, v13

    iget-wide v12, v14, Lcom/yandex/mobile/ads/impl/v52;->d:J

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    .line 181
    invoke-static/range {v22 .. v27}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v9

    const/4 v12, 0x1

    .line 182
    invoke-static {v5, v3, v4, v12}, Lcom/yandex/mobile/ads/impl/f92;->b([JJZ)I

    move-result v13

    aput v13, v8, v11

    add-long/2addr v3, v9

    .line 183
    invoke-static {v5, v3, v4, v7}, Lcom/yandex/mobile/ads/impl/f92;->a([JJZ)I

    move-result v3

    aput v3, v1, v11

    .line 184
    :goto_18
    aget v3, v8, v11

    aget v4, v1, v11

    if-ge v3, v4, :cond_21

    aget v9, v6, v3

    and-int/2addr v9, v12

    if-nez v9, :cond_21

    add-int/lit8 v3, v3, 0x1

    .line 185
    aput v3, v8, v11

    goto :goto_18

    :cond_21
    sub-int v9, v4, v3

    add-int v9, v9, p2

    if-eq v15, v3, :cond_22

    move v10, v12

    goto :goto_19

    :cond_22
    const/4 v10, 0x0

    :goto_19
    or-int v3, v28, v10

    move v13, v3

    move v15, v4

    goto :goto_1a

    :cond_23
    move-object/from16 v21, v9

    move/from16 p2, v12

    move/from16 v28, v13

    const/4 v12, 0x1

    move/from16 v9, p2

    :goto_1a
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p1

    move v12, v9

    move-object/from16 v3, v16

    move-object/from16 v9, v21

    goto :goto_17

    :cond_24
    move-object/from16 v16, v3

    move v9, v12

    move/from16 v28, v13

    const/4 v12, 0x1

    if-eq v9, v0, :cond_25

    goto :goto_1b

    :cond_25
    const/4 v12, 0x0

    :goto_1b
    or-int v0, v28, v12

    if-eqz v0, :cond_26

    .line 186
    new-array v3, v9, [J

    goto :goto_1c

    :cond_26
    move-object v3, v2

    :goto_1c
    if-eqz v0, :cond_27

    .line 187
    new-array v4, v9, [I

    goto :goto_1d

    :cond_27
    move-object/from16 v4, v16

    :goto_1d
    if-eqz v0, :cond_28

    const/4 v7, 0x0

    goto :goto_1e

    :cond_28
    move/from16 v7, p1

    :goto_1e
    if-eqz v0, :cond_29

    .line 188
    new-array v10, v9, [I

    goto :goto_1f

    :cond_29
    move-object v10, v6

    .line 189
    :goto_1f
    new-array v9, v9, [J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v17, 0x0

    .line 190
    :goto_20
    iget-object v13, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    array-length v13, v13

    if-ge v11, v13, :cond_2d

    .line 191
    iget-object v13, v14, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    aget-wide v27, v13, v11

    .line 192
    aget v13, v8, v11

    .line 193
    aget v15, v1, v11

    move-object/from16 v29, v1

    if-eqz v0, :cond_2a

    sub-int v1, v15, v13

    .line 194
    invoke-static {v2, v13, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 p1, v2

    move-object/from16 v2, v16

    .line 195
    invoke-static {v2, v13, v4, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    invoke-static {v6, v13, v10, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    :cond_2a
    move-object/from16 p1, v2

    move-object/from16 v2, v16

    :goto_21
    if-ge v13, v15, :cond_2c

    move-object/from16 v16, v10

    move v1, v11

    .line 197
    iget-wide v10, v14, Lcom/yandex/mobile/ads/impl/v52;->d:J

    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v17

    move-wide/from16 v25, v10

    invoke-static/range {v21 .. v26}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v10

    .line 198
    aget-wide v21, v5, v13

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    sub-long v5, v21, v27

    move/from16 p2, v1

    move-object/from16 v21, v2

    const-wide/16 v1, 0x0

    .line 199
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    iget-wide v5, v14, Lcom/yandex/mobile/ads/impl/v52;->c:J

    const-wide/32 v32, 0xf4240

    move-wide/from16 v34, v5

    .line 200
    invoke-static/range {v30 .. v35}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v5

    add-long/2addr v10, v5

    .line 201
    aput-wide v10, v9, v12

    if-eqz v0, :cond_2b

    .line 202
    aget v5, v4, v12

    if-le v5, v7, :cond_2b

    .line 203
    aget v5, v21, v13

    move v7, v5

    :cond_2b
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p2

    move-object/from16 v10, v16

    move-object/from16 v2, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_21

    :cond_2c
    move-object/from16 v21, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v16, v10

    move/from16 p2, v11

    const-wide/16 v1, 0x0

    .line 204
    iget-object v5, v14, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    aget-wide v5, v5, p2

    add-long v17, v17, v5

    add-int/lit8 v11, p2, 0x1

    move-object/from16 v2, p1

    move-object/from16 v16, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v1, v29

    goto/16 :goto_20

    :cond_2d
    move-object/from16 v16, v10

    .line 205
    iget-wide v0, v14, Lcom/yandex/mobile/ads/impl/v52;->d:J

    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v17

    move-wide/from16 v25, v0

    .line 206
    invoke-static/range {v21 .. v26}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v10

    .line 207
    new-instance v12, Lcom/yandex/mobile/ads/impl/b62;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    move-object v5, v9

    move-object/from16 v6, v16

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/b62;-><init>(Lcom/yandex/mobile/ads/impl/v52;[J[II[J[IJ)V

    return-object v12

    .line 208
    :cond_2e
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0
.end method

.method private static a(ILcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/lh$b;
    .locals 12

    add-int/lit8 p0, p0, 0xc

    .line 1
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/lh;->a(Lcom/yandex/mobile/ads/impl/ag1;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 9
    :cond_2
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 10
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/lh;->a(Lcom/yandex/mobile/ads/impl/ag1;)I

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/w01;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v0

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v3

    .line 19
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 20
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/lh;->a(Lcom/yandex/mobile/ads/impl/ag1;)I

    move-result p0

    .line 21
    new-array v5, p0, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p1, v5, v6, p0}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 23
    new-instance p0, Lcom/yandex/mobile/ads/impl/lh$b;

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    const-wide/16 v8, -0x1

    if-lez p1, :cond_4

    move-wide v10, v3

    goto :goto_0

    :cond_4
    move-wide v10, v8

    :goto_0
    cmp-long p1, v0, v6

    if-lez p1, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    move-object v1, p0

    move-object v3, v5

    move-wide v4, v10

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/lh$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 25
    :cond_6
    :goto_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/lh$b;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/lh$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/kh$a;Lcom/yandex/mobile/ads/impl/ie0;JLcom/yandex/mobile/ads/impl/f40;ZZLcom/yandex/mobile/ads/impl/fe0;)Ljava/util/ArrayList;
    .locals 67
    .param p4    # Lcom/yandex/mobile/ads/impl/f40;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-wide/16 v16, 0x0

    const v4, 0x6d646961

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/16 v8, 0x8

    .line 209
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 210
    :goto_0
    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/kh$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_ac

    .line 211
    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/kh$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/kh$a;

    .line 212
    iget v12, v11, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v13, 0x7472616b

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p7

    move v2, v4

    move v1, v6

    move v13, v7

    move-object v3, v9

    move/from16 v39, v10

    const v4, 0x6d696e66

    const v5, 0x7374626c

    const/4 v9, 0x5

    move-object/from16 v6, p1

    goto/16 :goto_68

    :cond_0
    const v12, 0x6d766864

    .line 213
    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v12

    .line 214
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-virtual {v11, v4}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v13

    .line 216
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x68646c72    # 4.3148E24f

    .line 217
    invoke-virtual {v13, v4}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 220
    invoke-virtual {v4, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 221
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v4

    const v14, 0x736f756e

    const/4 v5, -0x1

    if-ne v4, v14, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    const v14, 0x76696465

    if-ne v4, v14, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const v14, 0x74657874

    if-eq v4, v14, :cond_5

    const v14, 0x7362746c

    if-eq v4, v14, :cond_5

    const v14, 0x73756274

    if-eq v4, v14, :cond_5

    const v14, 0x636c6370

    if-ne v4, v14, :cond_3

    goto :goto_1

    :cond_3
    const v14, 0x6d657461

    if-ne v4, v14, :cond_4

    const/4 v4, 0x5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x3

    :goto_2
    if-ne v4, v5, :cond_6

    move v13, v7

    move-object/from16 v40, v9

    move/from16 v39, v10

    const/4 v0, 0x0

    const/4 v9, 0x5

    goto/16 :goto_65

    :cond_6
    const v14, 0x746b6864

    .line 222
    invoke-virtual {v11, v14}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v14

    .line 223
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    iget-object v14, v14, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 225
    invoke-virtual {v14, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 226
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v24

    shr-int/lit8 v3, v24, 0x18

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_7

    move v15, v8

    goto :goto_3

    :cond_7
    move v15, v7

    .line 227
    :goto_3
    invoke-virtual {v14, v15}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 228
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v15

    const/4 v2, 0x4

    .line 229
    invoke-virtual {v14, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 230
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v24

    if-nez v3, :cond_8

    move v8, v2

    :cond_8
    const/4 v2, 0x0

    :goto_4
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v8, :cond_c

    .line 231
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v28

    add-int v29, v24, v2

    aget-byte v7, v28, v29

    if-eq v7, v5, :cond_b

    if-nez v3, :cond_9

    .line 232
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v2

    goto :goto_5

    :cond_9
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v2

    :goto_5
    cmp-long v7, v2, v16

    if-nez v7, :cond_a

    :goto_6
    move-wide/from16 v2, v26

    :cond_a
    const/16 v7, 0x10

    goto :goto_7

    :cond_b
    add-int/2addr v2, v6

    const/16 v7, 0x10

    goto :goto_4

    .line 233
    :cond_c
    invoke-virtual {v14, v8}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    goto :goto_6

    .line 234
    :goto_7
    invoke-virtual {v14, v7}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 235
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    .line 236
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v8

    const/4 v5, 0x4

    .line 237
    invoke-virtual {v14, v5}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 238
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v5

    .line 239
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v14

    const/high16 v6, 0x10000

    if-nez v7, :cond_d

    if-ne v8, v6, :cond_d

    const/high16 v6, -0x10000

    if-ne v5, v6, :cond_e

    if-nez v14, :cond_e

    const/16 v5, 0x5a

    goto :goto_8

    :cond_d
    const/high16 v6, -0x10000

    :cond_e
    if-nez v7, :cond_10

    if-ne v8, v6, :cond_10

    const/high16 v6, 0x10000

    if-ne v5, v6, :cond_f

    if-nez v14, :cond_f

    const/16 v5, 0x10e

    goto :goto_8

    :cond_f
    const/high16 v6, -0x10000

    :cond_10
    if-ne v7, v6, :cond_11

    if-nez v8, :cond_11

    if-nez v5, :cond_11

    if-ne v14, v6, :cond_11

    const/16 v5, 0xb4

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    cmp-long v6, p2, v26

    if-nez v6, :cond_12

    move-wide/from16 v28, v2

    goto :goto_9

    :cond_12
    move-wide/from16 v28, p2

    .line 240
    :goto_9
    iget-object v2, v12, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v3, 0x8

    .line 241
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 242
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_13

    const/16 v3, 0x8

    goto :goto_a

    :cond_13
    const/16 v3, 0x10

    .line 243
    :goto_a
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 244
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v2

    cmp-long v6, v28, v26

    if-nez v6, :cond_14

    move-wide/from16 v30, v26

    :goto_b
    const v6, 0x6d696e66

    goto :goto_c

    :cond_14
    const-wide/32 v30, 0xf4240

    move-wide/from16 v32, v2

    .line 245
    invoke-static/range {v28 .. v33}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v6

    move-wide/from16 v30, v6

    goto :goto_b

    .line 246
    :goto_c
    invoke-virtual {v13, v6}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v7

    .line 247
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    .line 248
    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v7

    .line 249
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x6d646864

    .line 250
    invoke-virtual {v13, v6}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v6

    .line 251
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v8, 0x8

    .line 253
    invoke-virtual {v6, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 254
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_15

    const/16 v12, 0x8

    goto :goto_d

    :cond_15
    const/16 v12, 0x10

    .line 255
    :goto_d
    invoke-virtual {v6, v12}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 256
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v12

    if-nez v8, :cond_16

    const/4 v8, 0x4

    goto :goto_e

    :cond_16
    const/16 v8, 0x8

    .line 257
    :goto_e
    invoke-virtual {v6, v8}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 258
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v6

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v14, v6, 0xa

    and-int/lit8 v14, v14, 0x1f

    add-int/lit8 v14, v14, 0x60

    int-to-char v14, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v14, 0x5

    shr-int/lit8 v26, v6, 0x5

    and-int/lit8 v14, v26, 0x1f

    add-int/lit8 v14, v14, 0x60

    int-to-char v14, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const v8, 0x73747364

    .line 261
    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v7

    .line 262
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/16 v12, 0xc

    .line 264
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 265
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    .line 266
    new-array v13, v12, [Lcom/yandex/mobile/ads/impl/w52;

    const/4 v14, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    :goto_f
    if-ge v14, v12, :cond_a2

    .line 267
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v0

    move/from16 v26, v12

    .line 268
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    move/from16 v39, v10

    if-lez v12, :cond_17

    const/16 v27, 0x1

    goto :goto_10

    :cond_17
    const/16 v27, 0x0

    .line 269
    :goto_10
    const-string v10, "childAtomSize must be positive"

    if-eqz v27, :cond_a1

    move-object/from16 v40, v9

    .line 270
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v9

    move-wide/from16 v28, v2

    const v2, 0x61766331

    if-eq v9, v2, :cond_5e

    const v2, 0x61766333

    if-eq v9, v2, :cond_5e

    const v2, 0x656e6376

    if-eq v9, v2, :cond_5e

    const v2, 0x6d317620

    if-eq v9, v2, :cond_5e

    const v2, 0x6d703476

    if-eq v9, v2, :cond_5e

    const v2, 0x68766331

    if-eq v9, v2, :cond_5e

    const v2, 0x68657631

    if-eq v9, v2, :cond_5e

    const v2, 0x73323633

    if-eq v9, v2, :cond_5e

    const v2, 0x48323633

    if-eq v9, v2, :cond_5e

    const v2, 0x76703038

    if-eq v9, v2, :cond_5e

    const v2, 0x76703039

    if-eq v9, v2, :cond_5e

    const v2, 0x61763031

    if-eq v9, v2, :cond_5e

    const v2, 0x64766176

    if-eq v9, v2, :cond_5e

    const v2, 0x64766131

    if-eq v9, v2, :cond_5e

    const v2, 0x64766865

    if-eq v9, v2, :cond_5e

    const v2, 0x64766831

    if-ne v9, v2, :cond_18

    move/from16 v46, v0

    move/from16 v36, v4

    move/from16 v41, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move/from16 v45, v12

    move-object/from16 v43, v13

    move/from16 v44, v14

    const/16 v0, 0x10

    const/4 v12, 0x0

    goto/16 :goto_38

    :cond_18
    const v2, 0x6d703461

    const v3, 0x616c6163

    if-eq v9, v2, :cond_19

    const v2, 0x656e6361

    if-eq v9, v2, :cond_19

    const v2, 0x61632d33

    if-eq v9, v2, :cond_19

    const v2, 0x65632d33

    if-eq v9, v2, :cond_19

    const v2, 0x61632d34

    if-eq v9, v2, :cond_19

    const v2, 0x6d6c7061

    if-eq v9, v2, :cond_19

    const v2, 0x64747363

    if-eq v9, v2, :cond_19

    const v2, 0x64747365

    if-eq v9, v2, :cond_19

    const v2, 0x64747368

    if-eq v9, v2, :cond_19

    const v2, 0x6474736c

    if-eq v9, v2, :cond_19

    const v2, 0x64747378

    if-eq v9, v2, :cond_19

    const v2, 0x73616d72

    if-eq v9, v2, :cond_19

    const v2, 0x73617762

    if-eq v9, v2, :cond_19

    const v2, 0x6c70636d

    if-eq v9, v2, :cond_19

    const v2, 0x736f7774

    if-eq v9, v2, :cond_19

    const v2, 0x74776f73

    if-eq v9, v2, :cond_19

    const v2, 0x2e6d7032

    if-eq v9, v2, :cond_19

    const v2, 0x2e6d7033

    if-eq v9, v2, :cond_19

    const v2, 0x6d686131

    if-eq v9, v2, :cond_19

    const v2, 0x6d686d31

    if-eq v9, v2, :cond_19

    if-eq v9, v3, :cond_19

    const v2, 0x616c6177

    if-eq v9, v2, :cond_19

    const v2, 0x756c6177

    if-eq v9, v2, :cond_19

    const v2, 0x4f707573

    if-eq v9, v2, :cond_19

    const v2, 0x664c6143

    if-ne v9, v2, :cond_1a

    :cond_19
    move/from16 v36, v4

    const/16 v2, 0x10

    goto/16 :goto_19

    :cond_1a
    const v2, 0x54544d4c

    if-eq v9, v2, :cond_1b

    const v2, 0x74783367

    if-eq v9, v2, :cond_1b

    const v2, 0x77767474

    if-eq v9, v2, :cond_1b

    const v2, 0x73747070

    if-eq v9, v2, :cond_1b

    const v2, 0x63363038

    if-ne v9, v2, :cond_1c

    :cond_1b
    const/16 v2, 0x10

    goto :goto_14

    :cond_1c
    const v2, 0x6d657474

    if-ne v9, v2, :cond_1e

    const/16 v2, 0x10

    add-int/lit8 v3, v0, 0x10

    .line 271
    invoke-virtual {v7, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const v2, 0x6d657474

    if-ne v9, v2, :cond_1d

    .line 272
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    .line 273
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 274
    new-instance v3, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    invoke-virtual {v3, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v32

    :goto_11
    move/from16 v53, v0

    move/from16 v36, v4

    :goto_12
    move-object/from16 v18, v6

    move-object/from16 v37, v8

    move-object/from16 v19, v11

    move/from16 v56, v12

    move-object/from16 v43, v13

    move/from16 v44, v14

    :goto_13
    const/4 v1, -0x1

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    goto/16 :goto_5f

    :cond_1d
    move/from16 v36, v4

    goto/16 :goto_18

    :cond_1e
    const v2, 0x63616d6d

    if-ne v9, v2, :cond_1d

    .line 275
    new-instance v2, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 276
    invoke-virtual {v2, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v2

    .line 277
    const-string v3, "application/x-camera-motion"

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v32

    goto :goto_11

    :goto_14
    add-int/lit8 v3, v0, 0x10

    .line 279
    invoke-virtual {v7, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const v3, 0x54544d4c

    const-wide v36, 0x7fffffffffffffffL

    if-ne v9, v3, :cond_1f

    .line 280
    const-string v3, "application/ttml+xml"

    :goto_15
    move-wide/from16 v9, v36

    const/4 v2, 0x0

    :goto_16
    move/from16 v36, v4

    goto :goto_17

    :cond_1f
    const v3, 0x74783367

    if-ne v9, v3, :cond_20

    add-int/lit8 v3, v12, -0x10

    .line 281
    new-array v2, v3, [B

    const/4 v9, 0x0

    .line 282
    invoke-virtual {v7, v2, v9, v3}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 283
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v2

    const-string v3, "application/x-quicktime-tx3g"

    move-wide/from16 v9, v36

    goto :goto_16

    :cond_20
    const v2, 0x77767474

    if-ne v9, v2, :cond_21

    .line 284
    const-string v3, "application/x-mp4-vtt"

    goto :goto_15

    :cond_21
    const v2, 0x73747070

    if-ne v9, v2, :cond_22

    .line 285
    const-string v3, "application/ttml+xml"

    move/from16 v36, v4

    move-wide/from16 v9, v16

    const/4 v2, 0x0

    goto :goto_17

    :cond_22
    const v2, 0x63363038

    if-ne v9, v2, :cond_24

    .line 286
    const-string v3, "application/x-mp4-cea-608"

    move-wide/from16 v9, v36

    const/4 v2, 0x0

    const/16 v33, 0x1

    goto :goto_16

    .line 287
    :goto_17
    new-instance v4, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 288
    invoke-virtual {v4, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v4

    .line 289
    invoke-virtual {v4, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v3

    .line 291
    invoke-virtual {v3, v9, v10}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(J)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v32

    :cond_23
    :goto_18
    move/from16 v53, v0

    goto/16 :goto_12

    .line 294
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_19
    add-int/lit8 v4, v0, 0x10

    .line 295
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    if-eqz p6, :cond_25

    .line 296
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v2

    const/4 v4, 0x6

    .line 297
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    goto :goto_1a

    :cond_25
    const/16 v2, 0x8

    .line 298
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_27

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v4, 0x2

    if-ne v2, v4, :cond_23

    const/16 v2, 0x10

    .line 299
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 300
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->p()J

    move-result-wide v41

    invoke-static/range {v41 .. v42}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v41

    .line 301
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v2, v3

    .line 302
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v3

    const/16 v4, 0x14

    .line 303
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    move/from16 v34, v2

    const/4 v4, 0x0

    goto :goto_1c

    .line 304
    :cond_27
    :goto_1b
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v3

    const/4 v4, 0x6

    .line 305
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 306
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->u()I

    move-result v4

    .line 307
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v34

    move/from16 v41, v3

    const/16 v25, 0x4

    add-int/lit8 v3, v34, -0x4

    invoke-virtual {v7, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 308
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    move/from16 v34, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    const/16 v2, 0x10

    .line 309
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    :cond_28
    move/from16 v3, v41

    move/from16 v66, v34

    move/from16 v34, v4

    move/from16 v4, v66

    .line 310
    :goto_1c
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v2

    move/from16 v41, v3

    const v3, 0x656e6361

    if-ne v9, v3, :cond_2b

    .line 311
    invoke-static {v0, v12, v7}, Lcom/yandex/mobile/ads/impl/lh;->a(IILcom/yandex/mobile/ads/impl/ag1;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 312
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v1, :cond_29

    move/from16 v42, v9

    const/4 v9, 0x0

    goto :goto_1d

    :cond_29
    move/from16 v42, v9

    .line 313
    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/yandex/mobile/ads/impl/w52;

    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/w52;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/yandex/mobile/ads/impl/f40;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f40;

    move-result-object v9

    .line 314
    :goto_1d
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/mobile/ads/impl/w52;

    aput-object v3, v13, v14

    move-object v3, v9

    move/from16 v9, v42

    goto :goto_1e

    :cond_2a
    move-object v3, v1

    .line 315
    :goto_1e
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    :goto_1f
    move/from16 v19, v2

    const v2, 0x61632d33

    goto :goto_20

    :cond_2b
    move-object v3, v1

    goto :goto_1f

    :goto_20
    if-ne v9, v2, :cond_2c

    .line 316
    const-string v9, "audio/ac3"

    :goto_21
    const v2, 0x6d6c7061

    goto/16 :goto_26

    :cond_2c
    const v2, 0x65632d33

    if-ne v9, v2, :cond_2d

    .line 317
    const-string v9, "audio/eac3"

    goto :goto_21

    :cond_2d
    const v2, 0x61632d34

    if-ne v9, v2, :cond_2e

    .line 318
    const-string v9, "audio/ac4"

    goto :goto_21

    :cond_2e
    const v2, 0x64747363

    if-ne v9, v2, :cond_2f

    .line 319
    const-string v9, "audio/vnd.dts"

    goto :goto_21

    :cond_2f
    const v2, 0x64747368

    if-eq v9, v2, :cond_30

    const v2, 0x6474736c

    if-ne v9, v2, :cond_31

    :cond_30
    const v2, 0x6d6c7061

    goto/16 :goto_25

    :cond_31
    const v2, 0x64747365

    if-ne v9, v2, :cond_32

    .line 320
    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_21

    :cond_32
    const v2, 0x64747378

    if-ne v9, v2, :cond_33

    .line 321
    const-string v2, "audio/vnd.dts.uhd;profile=p2"

    :goto_22
    move-object v9, v2

    goto :goto_21

    :cond_33
    const v2, 0x73616d72

    if-ne v9, v2, :cond_34

    .line 322
    const-string v2, "audio/3gpp"

    goto :goto_22

    :cond_34
    const v2, 0x73617762

    if-ne v9, v2, :cond_35

    .line 323
    const-string v2, "audio/amr-wb"

    goto :goto_22

    :cond_35
    const v2, 0x6c70636d

    if-eq v9, v2, :cond_36

    const v2, 0x736f7774

    if-ne v9, v2, :cond_37

    :cond_36
    const v2, 0x6d6c7061

    goto/16 :goto_24

    :cond_37
    const v2, 0x74776f73

    if-ne v9, v2, :cond_38

    .line 324
    const-string v2, "audio/raw"

    const/high16 v9, 0x10000000

    move-object/from16 v18, v2

    const v2, 0x6d6c7061

    goto/16 :goto_27

    :cond_38
    const v2, 0x2e6d7032

    if-eq v9, v2, :cond_39

    const v2, 0x2e6d7033

    if-ne v9, v2, :cond_3a

    :cond_39
    const v2, 0x6d6c7061

    goto :goto_23

    :cond_3a
    const v2, 0x6d686131

    if-ne v9, v2, :cond_3b

    .line 325
    const-string v2, "audio/mha1"

    goto :goto_22

    :cond_3b
    const v2, 0x6d686d31

    if-ne v9, v2, :cond_3c

    .line 326
    const-string v2, "audio/mhm1"

    goto :goto_22

    :cond_3c
    const v2, 0x616c6163

    if-ne v9, v2, :cond_3d

    .line 327
    const-string v2, "audio/alac"

    goto :goto_22

    :cond_3d
    const v2, 0x616c6177

    if-ne v9, v2, :cond_3e

    .line 328
    const-string v2, "audio/g711-alaw"

    goto :goto_22

    :cond_3e
    const v2, 0x756c6177

    if-ne v9, v2, :cond_3f

    .line 329
    const-string v2, "audio/g711-mlaw"

    goto :goto_22

    :cond_3f
    const v2, 0x4f707573

    if-ne v9, v2, :cond_40

    .line 330
    const-string v2, "audio/opus"

    goto :goto_22

    :cond_40
    const v2, 0x664c6143

    if-ne v9, v2, :cond_41

    .line 331
    const-string v2, "audio/flac"

    goto :goto_22

    :cond_41
    const v2, 0x6d6c7061

    if-ne v9, v2, :cond_42

    .line 332
    const-string v9, "audio/true-hd"

    goto :goto_26

    :cond_42
    const/4 v9, -0x1

    const/16 v18, 0x0

    goto :goto_27

    .line 333
    :goto_23
    const-string v9, "audio/mpeg"

    goto :goto_26

    .line 334
    :goto_24
    const-string v9, "audio/raw"

    move-object/from16 v18, v9

    const/4 v9, 0x2

    goto :goto_27

    .line 335
    :goto_25
    const-string v9, "audio/vnd.dts.hd"

    :goto_26
    move-object/from16 v18, v9

    const/4 v9, -0x1

    :goto_27
    move-object/from16 v43, v13

    move/from16 v44, v14

    move/from16 v2, v19

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v6

    move/from16 v6, v34

    move-object/from16 v34, v32

    const/16 v32, 0x0

    move/from16 v66, v41

    move/from16 v41, v5

    move/from16 v5, v66

    :goto_28
    sub-int v1, v2, v0

    if-ge v1, v12, :cond_5b

    .line 336
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 337
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    if-lez v1, :cond_43

    const/16 v45, 0x1

    goto :goto_29

    :cond_43
    const/16 v45, 0x0

    :goto_29
    if-eqz v45, :cond_5a

    move/from16 v45, v12

    .line 338
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    move/from16 v46, v0

    const v0, 0x6d686143

    if-ne v12, v0, :cond_44

    add-int/lit8 v0, v1, -0xd

    .line 339
    new-array v12, v0, [B

    add-int/lit8 v14, v2, 0xd

    .line 340
    invoke-virtual {v7, v14}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 v14, 0x0

    .line 341
    invoke-virtual {v7, v12, v14, v0}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 342
    invoke-static {v12}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v0

    move-object v14, v0

    move/from16 v48, v4

    :goto_2a
    const/4 v12, 0x0

    goto/16 :goto_36

    :cond_44
    const v0, 0x65736473

    if-eq v12, v0, :cond_45

    if-eqz p6, :cond_46

    const v0, 0x77617665

    if-ne v12, v0, :cond_46

    :cond_45
    move/from16 v48, v4

    move-object/from16 v47, v14

    const/16 v0, 0xc

    const v4, 0x616c6163

    const v14, 0x65736473

    goto/16 :goto_2e

    :cond_46
    const v0, 0x64616333

    if-ne v12, v0, :cond_47

    const/16 v0, 0x8

    add-int/lit8 v12, v2, 0x8

    .line 343
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 344
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v8, v3}, Lcom/yandex/mobile/ads/impl/t;->a(Lcom/yandex/mobile/ads/impl/ag1;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v12

    move/from16 v48, v4

    move-object/from16 v34, v12

    goto :goto_2a

    :cond_47
    move-object/from16 v47, v14

    const/16 v0, 0x8

    const v14, 0x64656333

    if-ne v12, v14, :cond_48

    add-int/lit8 v12, v2, 0x8

    .line 345
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 346
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v8, v3}, Lcom/yandex/mobile/ads/impl/t;->b(Lcom/yandex/mobile/ads/impl/ag1;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v12

    move/from16 v48, v4

    move-object/from16 v34, v12

    :goto_2b
    move-object/from16 v14, v47

    goto :goto_2a

    :cond_48
    const v14, 0x64616334

    if-ne v12, v14, :cond_4a

    add-int/lit8 v12, v2, 0x8

    .line 347
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 348
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    .line 349
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 350
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    const/16 v34, 0x5

    shr-int/lit8 v14, v14, 0x5

    if-ne v14, v12, :cond_49

    const v12, 0xbb80

    goto :goto_2c

    :cond_49
    const v12, 0xac44

    .line 351
    :goto_2c
    new-instance v14, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 352
    invoke-virtual {v14, v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 353
    const-string v14, "audio/ac4"

    invoke-virtual {v0, v14}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    const/4 v14, 0x2

    .line 354
    invoke-virtual {v0, v14}, Lcom/yandex/mobile/ads/impl/jc0$a;->c(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/jc0$a;->l(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v0

    :goto_2d
    move-object/from16 v34, v0

    move/from16 v48, v4

    goto :goto_2b

    :cond_4a
    const v0, 0x646d6c70

    if-ne v12, v0, :cond_4c

    if-lez v4, :cond_4b

    move v6, v4

    move/from16 v48, v6

    move-object/from16 v14, v47

    const/4 v5, 0x2

    goto/16 :goto_2a

    .line 359
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_4c
    const v0, 0x64647473

    if-ne v12, v0, :cond_4d

    .line 360
    new-instance v0, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 361
    invoke-virtual {v0, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/jc0$a;->c(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/jc0$a;->l(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v0

    goto :goto_2d

    :cond_4d
    const v0, 0x644f7073

    if-ne v12, v0, :cond_4e

    const/16 v0, 0x8

    add-int/lit8 v12, v1, -0x8

    .line 368
    sget-object v14, Lcom/yandex/mobile/ads/impl/lh;->a:[B

    array-length v0, v14

    add-int/2addr v0, v12

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move/from16 v48, v4

    const/16 v38, 0x8

    add-int/lit8 v4, v2, 0x8

    .line 369
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 370
    array-length v4, v14

    invoke-virtual {v7, v0, v4, v12}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 371
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/if1;->a([B)Ljava/util/ArrayList;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_2a

    :cond_4e
    move/from16 v48, v4

    const/16 v38, 0x8

    const v0, 0x64664c61

    if-ne v12, v0, :cond_4f

    const/16 v0, 0xc

    add-int/lit8 v4, v1, -0xc

    add-int/lit8 v12, v1, -0x8

    .line 372
    new-array v12, v12, [B

    const/16 v14, 0x66

    const/16 v20, 0x0

    .line 373
    aput-byte v14, v12, v20

    const/16 v14, 0x4c

    const/16 v22, 0x1

    .line 374
    aput-byte v14, v12, v22

    const/16 v14, 0x61

    const/16 v22, 0x2

    .line 375
    aput-byte v14, v12, v22

    const/16 v14, 0x43

    const/16 v22, 0x3

    .line 376
    aput-byte v14, v12, v22

    add-int/lit8 v14, v2, 0xc

    .line 377
    invoke-virtual {v7, v14}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 v14, 0x4

    .line 378
    invoke-virtual {v7, v12, v14, v4}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 379
    invoke-static {v12}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_2a

    :cond_4f
    const/16 v0, 0xc

    const v4, 0x616c6163

    if-ne v12, v4, :cond_50

    add-int/lit8 v5, v1, -0xc

    .line 380
    new-array v6, v5, [B

    add-int/lit8 v12, v2, 0xc

    .line 381
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 v12, 0x0

    .line 382
    invoke-virtual {v7, v6, v12, v5}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 383
    new-instance v5, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {v5, v6}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    const/16 v12, 0x9

    .line 384
    invoke-virtual {v5, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 385
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v12

    const/16 v14, 0x14

    .line 386
    invoke-virtual {v5, v14}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 387
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v5

    .line 388
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 389
    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 390
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 391
    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v6

    move-object v14, v6

    move v6, v12

    goto/16 :goto_2a

    :cond_50
    const/4 v12, 0x0

    goto/16 :goto_35

    :goto_2e
    if-ne v12, v14, :cond_51

    move v12, v2

    :goto_2f
    const/4 v0, -0x1

    goto :goto_33

    .line 392
    :cond_51
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v12

    if-lt v12, v2, :cond_52

    const/4 v14, 0x1

    goto :goto_30

    :cond_52
    const/4 v14, 0x0

    :goto_30
    if-eqz v14, :cond_59

    :goto_31
    sub-int v14, v12, v2

    if-ge v14, v1, :cond_56

    .line 393
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 394
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v14

    if-lez v14, :cond_53

    const/16 v22, 0x1

    goto :goto_32

    :cond_53
    const/16 v22, 0x0

    :goto_32
    if-eqz v22, :cond_55

    .line 395
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v0

    const v4, 0x65736473

    if-ne v0, v4, :cond_54

    goto :goto_2f

    :cond_54
    add-int/2addr v12, v14

    const/16 v0, 0xc

    const v4, 0x616c6163

    goto :goto_31

    :cond_55
    const/4 v0, 0x0

    .line 396
    invoke-static {v10, v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_56
    const/4 v0, -0x1

    const/4 v12, -0x1

    :goto_33
    if-eq v12, v0, :cond_50

    .line 397
    invoke-static {v12, v7}, Lcom/yandex/mobile/ads/impl/lh;->a(ILcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/lh$b;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lh$b;->a(Lcom/yandex/mobile/ads/impl/lh$b;)Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lh$b;->b(Lcom/yandex/mobile/ads/impl/lh$b;)[B

    move-result-object v11

    if-eqz v11, :cond_58

    .line 400
    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57

    .line 401
    new-instance v5, Lcom/yandex/mobile/ads/impl/zf1;

    .line 402
    array-length v6, v11

    invoke-direct {v5, v6, v11}, Lcom/yandex/mobile/ads/impl/zf1;-><init>(I[B)V

    const/4 v12, 0x0

    .line 403
    invoke-static {v5, v12}, Lcom/yandex/mobile/ads/impl/e;->a(Lcom/yandex/mobile/ads/impl/zf1;Z)Lcom/yandex/mobile/ads/impl/e$a;

    move-result-object v5

    .line 404
    iget v6, v5, Lcom/yandex/mobile/ads/impl/e$a;->a:I

    .line 405
    iget v13, v5, Lcom/yandex/mobile/ads/impl/e$a;->b:I

    .line 406
    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/e$a;->c:Ljava/lang/String;

    move/from16 v66, v13

    move-object v13, v5

    move/from16 v5, v66

    goto :goto_34

    :cond_57
    const/4 v12, 0x0

    .line 407
    :goto_34
    invoke-static {v11}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v11

    move-object/from16 v32, v0

    move-object v14, v11

    move-object v11, v4

    goto :goto_36

    :cond_58
    const/4 v12, 0x0

    move-object/from16 v32, v0

    move-object v11, v4

    :goto_35
    move-object/from16 v14, v47

    :goto_36
    add-int/2addr v2, v1

    move/from16 v12, v45

    move/from16 v0, v46

    move/from16 v4, v48

    goto/16 :goto_28

    :cond_59
    const/4 v0, 0x0

    .line 408
    invoke-static {v0, v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_5a
    const/4 v0, 0x0

    .line 409
    invoke-static {v10, v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_5b
    move/from16 v46, v0

    move/from16 v45, v12

    move-object/from16 v47, v14

    const/4 v12, 0x0

    if-nez v34, :cond_5d

    if-eqz v11, :cond_5d

    .line 410
    new-instance v0, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 411
    invoke-virtual {v0, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v13}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/jc0$a;->c(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/jc0$a;->l(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v9}, Lcom/yandex/mobile/ads/impl/jc0$a;->i(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move-object/from16 v14, v47

    .line 417
    invoke-virtual {v0, v14}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 418
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    if-eqz v32, :cond_5c

    .line 420
    invoke-static/range {v32 .. v32}, Lcom/yandex/mobile/ads/impl/lh$b;->c(Lcom/yandex/mobile/ads/impl/lh$b;)J

    move-result-wide v1

    .line 421
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/hq0;->b(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->b(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v1

    invoke-static/range {v32 .. v32}, Lcom/yandex/mobile/ads/impl/lh$b;->d(Lcom/yandex/mobile/ads/impl/lh$b;)J

    move-result-wide v2

    .line 422
    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/hq0;->b(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->j(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    .line 423
    :cond_5c
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v32

    move-object/from16 v37, v8

    :goto_37
    move/from16 v5, v41

    move/from16 v56, v45

    move/from16 v53, v46

    goto/16 :goto_13

    :cond_5d
    move-object/from16 v37, v8

    move-object/from16 v32, v34

    goto :goto_37

    :cond_5e
    move/from16 v46, v0

    move/from16 v36, v4

    move/from16 v41, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move/from16 v45, v12

    move-object/from16 v43, v13

    move/from16 v44, v14

    const/4 v12, 0x0

    const/16 v0, 0x10

    :goto_38
    add-int/lit8 v1, v46, 0x10

    .line 424
    invoke-virtual {v7, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 425
    invoke-virtual {v7, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 426
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v0

    .line 427
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v1

    const/16 v2, 0x32

    .line 428
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 429
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v2

    const v3, 0x656e6376

    if-ne v9, v3, :cond_61

    move/from16 v5, v45

    move/from16 v4, v46

    .line 430
    invoke-static {v4, v5, v7}, Lcom/yandex/mobile/ads/impl/lh;->a(IILcom/yandex/mobile/ads/impl/ag1;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 431
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v11, p4

    if-nez v11, :cond_5f

    const/4 v13, 0x0

    goto :goto_39

    .line 432
    :cond_5f
    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/yandex/mobile/ads/impl/w52;

    iget-object v13, v13, Lcom/yandex/mobile/ads/impl/w52;->b:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/yandex/mobile/ads/impl/f40;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f40;

    move-result-object v13

    .line 433
    :goto_39
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/yandex/mobile/ads/impl/w52;

    aput-object v6, v43, v44

    goto :goto_3a

    :cond_60
    move-object/from16 v11, p4

    move-object v13, v11

    .line 434
    :goto_3a
    invoke-virtual {v7, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    :goto_3b
    const v6, 0x6d317620

    goto :goto_3c

    :cond_61
    move-object/from16 v11, p4

    move/from16 v5, v45

    move/from16 v4, v46

    move-object v13, v11

    goto :goto_3b

    :goto_3c
    if-ne v9, v6, :cond_62

    .line 435
    const-string v14, "video/mpeg"

    move-object/from16 v20, v14

    const v14, 0x48323633

    goto :goto_3d

    :cond_62
    const v14, 0x48323633

    if-ne v9, v14, :cond_63

    .line 436
    const-string v20, "video/3gpp"

    goto :goto_3d

    :cond_63
    const/16 v20, 0x0

    :goto_3d
    const/high16 v21, 0x3f800000    # 1.0f

    move v11, v2

    move-object/from16 v37, v8

    move/from16 v50, v12

    move-object/from16 v51, v13

    move-object/from16 v6, v20

    move/from16 v3, v21

    move/from16 v48, v35

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v35, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x1

    const/16 v47, -0x1

    const/16 v49, -0x1

    :goto_3e
    sub-int v13, v11, v4

    if-ge v13, v5, :cond_9a

    .line 437
    invoke-virtual {v7, v11}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 438
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v13

    move-object/from16 v52, v12

    .line 439
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    if-nez v12, :cond_64

    .line 440
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v53

    move/from16 v54, v2

    sub-int v2, v53, v4

    if-ne v2, v5, :cond_65

    move/from16 v60, v0

    move/from16 v59, v1

    move/from16 v58, v3

    move/from16 v53, v4

    move/from16 v56, v5

    move-object/from16 v57, v8

    :goto_3f
    move-object/from16 v65, v14

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    goto/16 :goto_5c

    :cond_64
    move/from16 v54, v2

    :cond_65
    if-lez v12, :cond_66

    const/4 v2, 0x1

    goto :goto_40

    :cond_66
    const/4 v2, 0x0

    :goto_40
    if-eqz v2, :cond_99

    .line 441
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    move/from16 v53, v4

    const v4, 0x61766343

    if-ne v2, v4, :cond_6a

    if-nez v6, :cond_67

    const/4 v2, 0x1

    goto :goto_41

    :cond_67
    const/4 v2, 0x0

    :goto_41
    if-eqz v2, :cond_69

    const/16 v2, 0x8

    add-int/2addr v13, v2

    .line 442
    invoke-virtual {v7, v13}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 443
    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/ni;->a(Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/ni;

    move-result-object v2

    .line 444
    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/ni;->a:Ljava/util/List;

    .line 445
    iget v6, v2, Lcom/yandex/mobile/ads/impl/ni;->b:I

    if-nez v50, :cond_68

    .line 446
    iget v3, v2, Lcom/yandex/mobile/ads/impl/ni;->e:F

    .line 447
    :cond_68
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/ni;->f:Ljava/lang/String;

    const-string v13, "video/avc"

    :goto_42
    move/from16 v60, v0

    move/from16 v59, v1

    move-object/from16 v65, v2

    move-object/from16 v52, v4

    move/from16 v56, v5

    move/from16 v48, v6

    move-object/from16 v57, v8

    move/from16 v55, v9

    move-object v6, v13

    :goto_43
    move/from16 v2, v54

    :goto_44
    const v0, 0x65736473

    :goto_45
    const/4 v4, 0x3

    :goto_46
    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    const/4 v14, 0x6

    goto/16 :goto_5b

    :cond_69
    const/4 v2, 0x0

    .line 448
    invoke-static {v2, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_6a
    const v4, 0x68766343

    if-ne v2, v4, :cond_6e

    if-nez v6, :cond_6b

    const/4 v2, 0x1

    goto :goto_47

    :cond_6b
    const/4 v2, 0x0

    :goto_47
    if-eqz v2, :cond_6d

    const/16 v2, 0x8

    add-int/2addr v13, v2

    .line 449
    invoke-virtual {v7, v13}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 450
    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/tf0;->a(Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/tf0;

    move-result-object v2

    .line 451
    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/tf0;->a:Ljava/util/List;

    .line 452
    iget v6, v2, Lcom/yandex/mobile/ads/impl/tf0;->b:I

    if-nez v50, :cond_6c

    .line 453
    iget v3, v2, Lcom/yandex/mobile/ads/impl/tf0;->c:F

    .line 454
    :cond_6c
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/tf0;->d:Ljava/lang/String;

    const-string v13, "video/hevc"

    goto :goto_42

    :cond_6d
    const/4 v2, 0x0

    .line 455
    invoke-static {v2, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_6e
    const v4, 0x64766343

    if-eq v2, v4, :cond_6f

    const v4, 0x64767643

    if-ne v2, v4, :cond_70

    :cond_6f
    move/from16 v60, v0

    move/from16 v59, v1

    move/from16 v58, v3

    move/from16 v56, v5

    move-object/from16 v57, v8

    move/from16 v55, v9

    move-object/from16 v65, v14

    const v0, 0x65736473

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    const/4 v14, 0x6

    goto/16 :goto_5a

    :cond_70
    const v4, 0x76706343

    if-ne v2, v4, :cond_74

    if-nez v6, :cond_71

    const/4 v2, 0x1

    goto :goto_48

    :cond_71
    const/4 v2, 0x0

    :goto_48
    if-eqz v2, :cond_73

    const v4, 0x76703038

    if-ne v9, v4, :cond_72

    .line 456
    const-string v2, "video/x-vnd.on2.vp8"

    :goto_49
    move/from16 v60, v0

    move/from16 v59, v1

    move-object v6, v2

    :goto_4a
    move/from16 v56, v5

    move-object/from16 v57, v8

    move/from16 v55, v9

    move-object/from16 v65, v14

    goto :goto_43

    :cond_72
    const-string v2, "video/x-vnd.on2.vp9"

    goto :goto_49

    :cond_73
    const/4 v2, 0x0

    .line 457
    invoke-static {v2, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_74
    const v4, 0x61763143

    if-ne v2, v4, :cond_77

    if-nez v6, :cond_75

    const/4 v2, 0x1

    goto :goto_4b

    :cond_75
    const/4 v2, 0x0

    :goto_4b
    if-eqz v2, :cond_76

    .line 458
    const-string v2, "video/av01"

    goto :goto_49

    :cond_76
    const/4 v2, 0x0

    .line 459
    invoke-static {v2, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_77
    const v4, 0x636c6c69

    if-ne v2, v4, :cond_79

    if-nez v35, :cond_78

    const/16 v2, 0x19

    .line 460
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v35

    :cond_78
    move-object/from16 v2, v35

    const/16 v4, 0x15

    .line 461
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 462
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v60, v0

    move/from16 v59, v1

    move-object/from16 v35, v2

    goto :goto_4a

    :cond_79
    const v4, 0x6d646376

    if-ne v2, v4, :cond_7b

    if-nez v35, :cond_7a

    const/16 v2, 0x19

    .line 464
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v35

    :cond_7a
    move-object/from16 v2, v35

    .line 465
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v4

    .line 466
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v13

    move/from16 v55, v9

    .line 467
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v9

    move/from16 v56, v5

    .line 468
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v5

    move-object/from16 v57, v8

    .line 469
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v8

    move/from16 v58, v3

    .line 470
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v3

    move/from16 v59, v1

    .line 471
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v1

    move/from16 v60, v0

    .line 472
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v0

    .line 473
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v61

    .line 474
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v63

    move-object/from16 v65, v14

    const/4 v14, 0x1

    .line 475
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 478
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x2710

    .line 484
    div-long v0, v61, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x2710

    .line 485
    div-long v0, v63, v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v35, v2

    :goto_4c
    move/from16 v2, v54

    move/from16 v3, v58

    goto/16 :goto_44

    :cond_7b
    move/from16 v60, v0

    move/from16 v59, v1

    move/from16 v58, v3

    move/from16 v56, v5

    move-object/from16 v57, v8

    move/from16 v55, v9

    move-object/from16 v65, v14

    const v0, 0x64323633

    if-ne v2, v0, :cond_7e

    if-nez v6, :cond_7c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_7c
    const/4 v0, 0x0

    :goto_4d
    if-eqz v0, :cond_7d

    .line 486
    const-string v0, "video/3gpp"

    move-object v6, v0

    goto :goto_4c

    :cond_7d
    const/4 v0, 0x0

    .line 487
    invoke-static {v0, v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_7e
    const v0, 0x65736473

    if-ne v2, v0, :cond_82

    if-nez v6, :cond_7f

    const/4 v1, 0x1

    goto :goto_4e

    :cond_7f
    const/4 v1, 0x0

    :goto_4e
    if-eqz v1, :cond_81

    .line 488
    invoke-static {v13, v7}, Lcom/yandex/mobile/ads/impl/lh;->a(ILcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/lh$b;

    move-result-object v1

    .line 489
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lh$b;->a(Lcom/yandex/mobile/ads/impl/lh$b;)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lh$b;->b(Lcom/yandex/mobile/ads/impl/lh$b;)[B

    move-result-object v3

    if-eqz v3, :cond_80

    .line 491
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v3

    goto :goto_4f

    :cond_80
    move-object/from16 v3, v52

    :goto_4f
    move-object/from16 v45, v1

    move-object v6, v2

    move-object/from16 v52, v3

    :goto_50
    move/from16 v2, v54

    move/from16 v3, v58

    goto/16 :goto_45

    :cond_81
    const/4 v1, 0x0

    .line 492
    invoke-static {v1, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_82
    const v1, 0x70617370

    if-ne v2, v1, :cond_83

    const/16 v1, 0x8

    add-int/2addr v13, v1

    .line 493
    invoke-virtual {v7, v13}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 494
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    .line 495
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v3, v2

    move/from16 v2, v54

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    const/4 v14, 0x6

    const/16 v50, 0x1

    goto/16 :goto_5b

    :cond_83
    const/16 v1, 0x8

    const v3, 0x73763364

    if-ne v2, v3, :cond_86

    add-int/lit8 v8, v13, 0x8

    :goto_51
    sub-int v1, v8, v13

    if-ge v1, v12, :cond_85

    .line 496
    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 497
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    .line 498
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_84

    .line 499
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v2

    add-int/2addr v1, v8

    invoke-static {v2, v8, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v57, v1

    goto :goto_50

    :cond_84
    add-int/2addr v8, v1

    goto :goto_51

    :cond_85
    move/from16 v2, v54

    move/from16 v3, v58

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    const/4 v14, 0x6

    const/16 v57, 0x0

    goto/16 :goto_5b

    :cond_86
    const v1, 0x73743364

    if-ne v2, v1, :cond_8c

    .line 500
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v1

    const/4 v4, 0x3

    .line 501
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-nez v1, :cond_87

    .line 502
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v1

    if-eqz v1, :cond_8b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_89

    if-eq v1, v4, :cond_88

    :cond_87
    :goto_52
    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v13, 0x10

    const/4 v14, 0x6

    goto/16 :goto_59

    :cond_88
    move v2, v4

    move/from16 v3, v58

    goto/16 :goto_46

    :cond_89
    move/from16 v3, v58

    const/4 v2, 0x2

    goto/16 :goto_46

    :cond_8a
    move/from16 v3, v58

    const/4 v2, 0x1

    goto/16 :goto_46

    :cond_8b
    move/from16 v3, v58

    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_8c
    const/4 v4, 0x3

    const v1, 0x636f6c72

    if-ne v2, v1, :cond_87

    .line 503
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    const v2, 0x6e636c78

    if-eq v1, v2, :cond_8e

    const v2, 0x6e636c63

    if-ne v1, v2, :cond_8d

    goto :goto_53

    .line 504
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported color type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/kh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtomParsers"

    invoke-static {v2, v1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 505
    :cond_8e
    :goto_53
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v1

    .line 506
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v2

    const/4 v3, 0x2

    .line 507
    invoke-virtual {v7, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    const/16 v3, 0x13

    if-ne v12, v3, :cond_8f

    .line 508
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_8f

    const/4 v3, 0x1

    goto :goto_54

    :cond_8f
    const/4 v3, 0x0

    .line 509
    :goto_54
    sget-object v5, Lcom/yandex/mobile/ads/impl/rq;->g:Lcom/yandex/mobile/ads/impl/km$a;

    const/4 v5, 0x7

    const/4 v8, 0x1

    if-eq v1, v8, :cond_92

    const/16 v8, 0x9

    if-eq v1, v8, :cond_91

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eq v1, v8, :cond_90

    if-eq v1, v9, :cond_90

    const/4 v13, 0x6

    if-eq v1, v13, :cond_90

    if-eq v1, v5, :cond_90

    const/4 v1, -0x1

    goto :goto_55

    :cond_90
    const/4 v1, 0x2

    goto :goto_55

    :cond_91
    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v1, 0x6

    goto :goto_55

    :cond_92
    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v1, 0x1

    :goto_55
    if-eqz v3, :cond_93

    const/4 v3, 0x1

    :goto_56
    const/4 v13, 0x1

    goto :goto_57

    :cond_93
    const/4 v3, 0x2

    goto :goto_56

    :goto_57
    if-eq v2, v13, :cond_96

    const/16 v13, 0x10

    if-eq v2, v13, :cond_95

    const/16 v14, 0x12

    if-eq v2, v14, :cond_94

    const/4 v14, 0x6

    if-eq v2, v14, :cond_97

    if-eq v2, v5, :cond_97

    const/4 v5, -0x1

    goto :goto_58

    :cond_94
    const/4 v14, 0x6

    goto :goto_58

    :cond_95
    const/4 v14, 0x6

    move v5, v14

    goto :goto_58

    :cond_96
    const/16 v13, 0x10

    const/4 v14, 0x6

    :cond_97
    move v5, v4

    :goto_58
    move/from16 v49, v1

    move/from16 v47, v3

    move/from16 v46, v5

    :cond_98
    :goto_59
    move/from16 v2, v54

    move/from16 v3, v58

    goto :goto_5b

    .line 510
    :goto_5a
    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/t30;->a(Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/t30;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 511
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/t30;->a:Ljava/lang/String;

    .line 512
    const-string v2, "video/dolby-vision"

    move-object/from16 v65, v1

    move-object v6, v2

    goto :goto_59

    :goto_5b
    add-int/2addr v11, v12

    move-object/from16 v12, v52

    move/from16 v4, v53

    move/from16 v9, v55

    move/from16 v5, v56

    move-object/from16 v8, v57

    move/from16 v1, v59

    move/from16 v0, v60

    move-object/from16 v14, v65

    goto/16 :goto_3e

    :cond_99
    const/4 v1, 0x0

    .line 513
    invoke-static {v10, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_9a
    move/from16 v60, v0

    move/from16 v59, v1

    move/from16 v54, v2

    move/from16 v58, v3

    move/from16 v53, v4

    move/from16 v56, v5

    move-object/from16 v57, v8

    move-object/from16 v52, v12

    goto/16 :goto_3f

    :goto_5c
    if-nez v6, :cond_9b

    move/from16 v5, v41

    move/from16 v35, v48

    const/4 v1, -0x1

    goto/16 :goto_5f

    .line 514
    :cond_9b
    new-instance v0, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 515
    invoke-virtual {v0, v15}, Lcom/yandex/mobile/ads/impl/jc0$a;->g(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move-object/from16 v1, v65

    .line 517
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v1, v60

    .line 518
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->o(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v1, v59

    .line 519
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->f(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v3, v58

    .line 520
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->b(F)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v5, v41

    .line 521
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/jc0$a;->k(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move-object/from16 v1, v57

    .line 522
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->a([B)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v2, v54

    .line 523
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->n(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move-object/from16 v1, v52

    .line 524
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move-object/from16 v11, v51

    .line 525
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    move/from16 v2, v49

    const/4 v1, -0x1

    if-ne v2, v1, :cond_9c

    move/from16 v3, v47

    move/from16 v6, v46

    if-ne v3, v1, :cond_9d

    if-ne v6, v1, :cond_9d

    if-eqz v35, :cond_9f

    goto :goto_5d

    :cond_9c
    move/from16 v6, v46

    move/from16 v3, v47

    .line 526
    :cond_9d
    :goto_5d
    new-instance v10, Lcom/yandex/mobile/ads/impl/rq;

    if-eqz v35, :cond_9e

    .line 527
    invoke-virtual/range {v35 .. v35}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    goto :goto_5e

    :cond_9e
    const/4 v11, 0x0

    :goto_5e
    invoke-direct {v10, v2, v3, v6, v11}, Lcom/yandex/mobile/ads/impl/rq;-><init>(III[B)V

    .line 528
    invoke-virtual {v0, v10}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/rq;)Lcom/yandex/mobile/ads/impl/jc0$a;

    :cond_9f
    if-eqz v45, :cond_a0

    .line 529
    invoke-static/range {v45 .. v45}, Lcom/yandex/mobile/ads/impl/lh$b;->c(Lcom/yandex/mobile/ads/impl/lh$b;)J

    move-result-wide v2

    .line 530
    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/hq0;->b(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->b(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v2

    invoke-static/range {v45 .. v45}, Lcom/yandex/mobile/ads/impl/lh$b;->d(Lcom/yandex/mobile/ads/impl/lh$b;)J

    move-result-wide v10

    .line 531
    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/hq0;->b(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/jc0$a;->j(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    .line 532
    :cond_a0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v32

    move/from16 v35, v48

    :goto_5f
    add-int v0, v53, v56

    .line 533
    invoke-virtual {v7, v0}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 v0, 0x1

    add-int/lit8 v14, v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    move/from16 v12, v26

    move-wide/from16 v2, v28

    move/from16 v4, v36

    move-object/from16 v8, v37

    move/from16 v10, v39

    move-object/from16 v9, v40

    move-object/from16 v13, v43

    goto/16 :goto_f

    :cond_a1
    const/4 v0, 0x0

    .line 534
    invoke-static {v10, v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_a2
    move-wide/from16 v28, v2

    move/from16 v36, v4

    move-object/from16 v18, v6

    move-object/from16 v40, v9

    move/from16 v39, v10

    move-object/from16 v19, v11

    move-object/from16 v43, v13

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/16 v13, 0x10

    if-nez p5, :cond_a8

    const v1, 0x65647473

    move-object/from16 v11, v19

    .line 535
    invoke-virtual {v11, v1}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v1

    if-eqz v1, :cond_a9

    const v2, 0x656c7374

    .line 536
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v1

    if-nez v1, :cond_a3

    move-object v1, v0

    goto :goto_63

    .line 537
    :cond_a3
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v2, 0x8

    .line 538
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 539
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 540
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v4

    .line 541
    new-array v5, v4, [J

    .line 542
    new-array v6, v4, [J

    const/4 v7, 0x0

    :goto_60
    if-ge v7, v4, :cond_a7

    const/4 v8, 0x1

    if-ne v3, v8, :cond_a4

    .line 543
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v23

    goto :goto_61

    :cond_a4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v23

    :goto_61
    aput-wide v23, v5, v7

    if-ne v3, v8, :cond_a5

    .line 544
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->p()J

    move-result-wide v23

    move v12, v3

    goto :goto_62

    :cond_a5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v10

    move v12, v3

    int-to-long v2, v10

    move-wide/from16 v23, v2

    :goto_62
    aput-wide v23, v6, v7

    .line 545
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->r()S

    move-result v2

    if-ne v2, v8, :cond_a6

    const/4 v2, 0x2

    .line 546
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    add-int/2addr v7, v8

    move v3, v12

    const/16 v2, 0x8

    goto :goto_60

    .line 547
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_a7
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_63
    if-eqz v1, :cond_a9

    .line 549
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 550
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    move-object/from16 v37, v1

    goto :goto_64

    :cond_a8
    move-object/from16 v11, v19

    :cond_a9
    move-object v2, v0

    move-object/from16 v37, v2

    :goto_64
    if-nez v32, :cond_aa

    :goto_65
    move-object v14, v0

    :goto_66
    move-object/from16 v0, p7

    goto :goto_67

    .line 551
    :cond_aa
    new-instance v14, Lcom/yandex/mobile/ads/impl/v52;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 552
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v36

    move-object/from16 v34, v43

    move-object/from16 v36, v2

    invoke-direct/range {v23 .. v37}, Lcom/yandex/mobile/ads/impl/v52;-><init>(IIJJJLcom/yandex/mobile/ads/impl/jc0;I[Lcom/yandex/mobile/ads/impl/w52;I[J[J)V

    goto :goto_66

    .line 553
    :goto_67
    invoke-interface {v0, v14}, Lcom/yandex/mobile/ads/impl/fe0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/v52;

    if-nez v1, :cond_ab

    move-object/from16 v6, p1

    move-object/from16 v3, v40

    const/4 v1, 0x1

    const v2, 0x6d646961

    const v4, 0x6d696e66

    const v5, 0x7374626c

    goto :goto_68

    :cond_ab
    const v2, 0x6d646961

    .line 554
    invoke-virtual {v11, v2}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v3

    .line 555
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d696e66

    .line 556
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v3

    .line 557
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    .line 558
    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, p1

    .line 560
    invoke-static {v1, v3, v6}, Lcom/yandex/mobile/ads/impl/lh;->a(Lcom/yandex/mobile/ads/impl/v52;Lcom/yandex/mobile/ads/impl/kh$a;Lcom/yandex/mobile/ads/impl/ie0;)Lcom/yandex/mobile/ads/impl/b62;

    move-result-object v1

    move-object/from16 v3, v40

    .line 561
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_68
    add-int/lit8 v10, v39, 0x1

    move-object/from16 v0, p0

    move v6, v1

    move v4, v2

    move-object v9, v3

    move v7, v13

    const/16 v8, 0x8

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_ac
    move-object v3, v9

    return-object v3
.end method
