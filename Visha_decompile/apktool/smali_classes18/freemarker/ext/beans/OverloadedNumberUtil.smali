.class public abstract Lfreemarker/ext/beans/OverloadedNumberUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
    }
.end annotation


# static fields
.field public static synthetic A:Ljava/lang/Class;

.field public static synthetic B:Ljava/lang/Class;

.field public static synthetic C:Ljava/lang/Class;

.field public static synthetic D:Ljava/lang/Class;

.field public static synthetic a:Ljava/lang/Class;

.field public static synthetic b:Ljava/lang/Class;

.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;

.field public static synthetic r:Ljava/lang/Class;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;

.field public static synthetic u:Ljava/lang/Class;

.field public static synthetic v:Ljava/lang/Class;

.field public static synthetic w:Ljava/lang/Class;

.field public static synthetic x:Ljava/lang/Class;

.field public static synthetic y:Ljava/lang/Class;

.field public static synthetic z:Ljava/lang/Class;


# direct methods
.method public static a(Ljava/lang/Number;I)Ljava/lang/Number;
    .locals 25

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.math.BigDecimal"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_0
    if-ne v1, v2, :cond_2

    move-object/from16 v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    and-int/lit16 v2, v0, 0x13c

    if-eqz v2, :cond_1

    and-int/lit16 v0, v0, 0x2c0

    if-eqz v0, :cond_1

    invoke-static {v1}, La47;->d(Ljava/math/BigDecimal;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "java.lang.Integer"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_3
    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    const/16 v5, -0x80

    const/16 v6, 0x7f

    if-ne v1, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    if-gt v1, v6, :cond_4

    if-lt v1, v5, :cond_4

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Integer;

    int-to-byte v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;-><init>(Ljava/lang/Integer;B)V

    return-object v0

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    if-gt v1, v4, :cond_5

    if-lt v1, v3, :cond_5

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Integer;

    int-to-short v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;-><init>(Ljava/lang/Integer;S)V

    return-object v0

    :cond_5
    return-object p0

    :cond_6
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "java.lang.Long"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_7
    const-wide/16 v7, -0x8000

    const-wide/16 v9, 0x7fff

    const-wide/16 v11, -0x80

    const-wide/16 v13, 0x7f

    const-wide/32 v15, -0x80000000

    const-wide/32 v17, 0x7fffffff

    if-ne v1, v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_8

    cmp-long v3, v1, v13

    if-gtz v3, :cond_8

    cmp-long v3, v1, v11

    if-ltz v3, :cond_8

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;-><init>(Ljava/lang/Long;B)V

    return-object v0

    :cond_8
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_9

    cmp-long v3, v1, v9

    if-gtz v3, :cond_9

    cmp-long v3, v1, v7

    if-ltz v3, :cond_9

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;-><init>(Ljava/lang/Long;S)V

    return-object v0

    :cond_9
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    cmp-long v0, v1, v17

    if-gtz v0, :cond_a

    cmp-long v0, v1, v15

    if-ltz v0, :cond_a

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;-><init>(Ljava/lang/Long;I)V

    return-object v0

    :cond_a
    return-object p0

    :cond_b
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v2, :cond_c

    const-string v2, "java.lang.Double"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_c
    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-ne v1, v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    and-int/lit16 v3, v0, 0x13c

    if-nez v3, :cond_d

    goto/16 :goto_3

    :cond_d
    const-wide/high16 v3, 0x4340000000000000L    # 9.007199254740992E15

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_18

    const-wide/high16 v3, -0x3cc0000000000000L    # -9.007199254740992E15

    cmpg-double v3, v1, v3

    if-gez v3, :cond_e

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-double v5, v3

    sub-double v5, v1, v5

    cmpl-double v19, v5, v19

    if-nez v19, :cond_f

    goto :goto_1

    :cond_f
    const-wide/16 v20, 0x1

    if-lez v19, :cond_11

    const-wide v23, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v19, v5, v23

    if-gez v19, :cond_10

    :goto_0
    move/from16 v21, v22

    goto :goto_1

    :cond_10
    const-wide v23, 0x3feffffde7210be9L    # 0.999999

    cmpl-double v5, v5, v23

    if-lez v5, :cond_18

    add-long v3, v3, v20

    goto :goto_0

    :cond_11
    const-wide v23, -0x414f39085f4a1273L    # -1.0E-6

    cmpl-double v19, v5, v23

    if-lez v19, :cond_12

    goto :goto_0

    :cond_12
    const-wide v23, -0x4010000218def417L    # -0.999999

    cmpg-double v5, v5, v23

    if-gez v5, :cond_18

    sub-long v3, v3, v20

    goto :goto_0

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_13

    cmp-long v5, v3, v13

    if-gtz v5, :cond_13

    cmp-long v5, v3, v11

    if-ltz v5, :cond_13

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    long-to-int v2, v3

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;-><init>(Ljava/lang/Double;B)V

    return-object v0

    :cond_13
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_14

    cmp-long v5, v3, v9

    if-gtz v5, :cond_14

    cmp-long v5, v3, v7

    if-ltz v5, :cond_14

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    long-to-int v2, v3

    int-to-short v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;-><init>(Ljava/lang/Double;S)V

    return-object v0

    :cond_14
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_16

    cmp-long v5, v3, v17

    if-gtz v5, :cond_16

    cmp-long v5, v3, v15

    if-ltz v5, :cond_16

    long-to-int v1, v3

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    const/high16 v0, -0x1000000

    if-lt v1, v0, :cond_15

    const/high16 v0, 0x1000000

    if-gt v1, v0, :cond_15

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;-><init>(Ljava/lang/Double;I)V

    goto :goto_2

    :cond_15
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;-><init>(Ljava/lang/Double;I)V

    :goto_2
    return-object v0

    :cond_16
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_18

    if-eqz v21, :cond_17

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v3, v4}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;-><init>(Ljava/lang/Double;J)V

    return-object v0

    :cond_17
    cmp-long v5, v3, v15

    if-ltz v5, :cond_18

    cmp-long v5, v3, v17

    if-gtz v5, :cond_18

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v3, v4}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;-><init>(Ljava/lang/Double;J)V

    return-object v0

    :cond_18
    :goto_3
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_19

    const-wide v3, -0x3810000020000000L    # -3.4028234663852886E38

    cmpl-double v0, v1, v3

    if-ltz v0, :cond_19

    const-wide v3, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_19

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_19
    return-object p0

    :cond_1a
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v2, :cond_1b

    const-string v2, "java.lang.Float"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_1b
    if-ne v1, v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    and-int/lit16 v2, v0, 0x13c

    if-nez v2, :cond_1c

    goto/16 :goto_7

    :cond_1c
    const/high16 v2, 0x4b800000    # 1.6777216E7f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_26

    const/high16 v2, -0x34800000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1d

    goto/16 :goto_7

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v7, v2

    sub-float/2addr v1, v7

    float-to-double v7, v1

    cmpl-double v1, v7, v19

    if-nez v1, :cond_1e

    goto :goto_5

    :cond_1e
    if-lt v2, v5, :cond_26

    if-gt v2, v6, :cond_26

    if-lez v1, :cond_20

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v7, v9

    if-gez v1, :cond_1f

    :goto_4
    move/from16 v21, v22

    goto :goto_5

    :cond_1f
    const-wide v9, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v1, v7, v9

    if-lez v1, :cond_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    const-wide v9, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v1, v7, v9

    if-lez v1, :cond_21

    goto :goto_4

    :cond_21
    const-wide v9, -0x40100014f8b588e3L    # -0.99999

    cmpg-double v1, v7, v9

    if-gez v1, :cond_26

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :goto_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_22

    if-gt v2, v6, :cond_22

    if-lt v2, v5, :cond_22

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;-><init>(Ljava/lang/Float;B)V

    return-object v0

    :cond_22
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_23

    if-gt v2, v4, :cond_23

    if-lt v2, v3, :cond_23

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-short v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;-><init>(Ljava/lang/Float;S)V

    return-object v0

    :cond_23
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_24

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;-><init>(Ljava/lang/Float;I)V

    return-object v0

    :cond_24
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_26

    if-eqz v21, :cond_25

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;-><init>(Ljava/lang/Float;I)V

    goto :goto_6

    :cond_25
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;-><init>(Ljava/lang/Float;B)V

    :goto_6
    return-object v0

    :cond_26
    :goto_7
    return-object p0

    :cond_27
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v2, :cond_28

    const-string v2, "java.lang.Byte"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_28
    if-ne v1, v2, :cond_29

    return-object p0

    :cond_29
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v2, :cond_2a

    const-string v2, "java.lang.Short"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_2a
    if-ne v1, v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    if-gt v1, v6, :cond_2b

    if-lt v1, v5, :cond_2b

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Short;

    int-to-byte v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;-><init>(Ljava/lang/Short;B)V

    return-object v0

    :cond_2b
    return-object p0

    :cond_2c
    sget-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v2, :cond_2d

    const-string v2, "java.math.BigInteger"

    invoke-static {v2}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_2d
    if-ne v1, v2, :cond_35

    and-int/lit16 v1, v0, 0xfc

    if-eqz v1, :cond_35

    move-object/from16 v1, p0

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2e

    const/4 v3, 0x7

    if-gt v2, v3, :cond_2e

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2e
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2f

    const/16 v3, 0xf

    if-gt v2, v3, :cond_2f

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2f
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_30

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_30

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_30
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_31

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_31

    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_31
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_33

    const/16 v3, 0x18

    if-le v2, v3, :cond_32

    const/16 v4, 0x19

    if-ne v2, v4, :cond_33

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    if-lt v4, v3, :cond_33

    :cond_32
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_33
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_35

    const/16 v0, 0x35

    if-le v2, v0, :cond_34

    const/16 v3, 0x36

    if-ne v2, v3, :cond_35

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-lt v2, v0, :cond_35

    :cond_34
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_35
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 24

    invoke-static/range {p0 .. p0}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    const-string v4, "java.lang.Integer"

    if-nez v3, :cond_1

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    const-string v12, "java.math.BigInteger"

    const-string v13, "java.math.BigDecimal"

    const-string v14, "java.lang.Short"

    const-string v15, "java.lang.Byte"

    const-string v16, "java.lang.Float"

    const-string v17, "java.lang.Double"

    const-string v18, "java.lang.Long"

    if-ne v0, v3, :cond_10

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_2
    if-ne v1, v0, :cond_3

    return v11

    :cond_3
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_4
    if-ne v1, v0, :cond_5

    return v6

    :cond_5
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_6

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_6
    if-ne v1, v0, :cond_7

    return v7

    :cond_7
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_8

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_8
    if-ne v1, v0, :cond_9

    return v9

    :cond_9
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_a
    if-ne v1, v0, :cond_b

    return v10

    :cond_b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_c
    if-ne v1, v0, :cond_d

    return v5

    :cond_d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_e
    if-ne v1, v0, :cond_f

    return v8

    :cond_f
    return v2

    :cond_10
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v3, :cond_11

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_11
    const/16 v19, -0x3

    if-ne v0, v3, :cond_20

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_12

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_12
    if-ne v1, v0, :cond_13

    return v10

    :cond_13
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_14

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_14
    if-ne v1, v0, :cond_15

    return v7

    :cond_15
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_16

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_16
    if-ne v1, v0, :cond_17

    return v8

    :cond_17
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_18

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_18
    if-ne v1, v0, :cond_19

    return v19

    :cond_19
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_1a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_1a
    if-ne v1, v0, :cond_1b

    return v9

    :cond_1b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_1c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_1c
    if-ne v1, v0, :cond_1d

    return v6

    :cond_1d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_1e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_1e
    if-ne v1, v0, :cond_1f

    return v11

    :cond_1f
    return v2

    :cond_20
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v3, :cond_21

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_21
    const/16 v20, -0x6

    const/16 v21, -0x5

    const/16 v22, -0x4

    if-ne v0, v3, :cond_30

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_22

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_22
    if-ne v1, v0, :cond_23

    return v22

    :cond_23
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_24

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_24
    if-ne v1, v0, :cond_25

    return v19

    :cond_25
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_26

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_26
    if-ne v1, v0, :cond_27

    return v10

    :cond_27
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_28

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_28
    if-ne v1, v0, :cond_29

    return v20

    :cond_29
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_2a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_2a
    if-ne v1, v0, :cond_2b

    return v21

    :cond_2b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_2c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_2c
    if-ne v1, v0, :cond_2d

    return v11

    :cond_2d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_2e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_2e
    if-ne v1, v0, :cond_2f

    return v9

    :cond_2f
    return v2

    :cond_30
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v3, :cond_31

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_31
    if-ne v0, v3, :cond_40

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_32

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_32
    if-ne v1, v0, :cond_33

    return v19

    :cond_33
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_34

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_34
    if-ne v1, v0, :cond_35

    return v9

    :cond_35
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_36

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_36
    if-ne v1, v0, :cond_37

    return v11

    :cond_37
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_38

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_38
    if-ne v1, v0, :cond_39

    return v21

    :cond_39
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_3a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_3a
    if-ne v1, v0, :cond_3b

    return v22

    :cond_3b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_3c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_3c
    if-ne v1, v0, :cond_3d

    return v8

    :cond_3d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_3e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_3e
    if-ne v1, v0, :cond_3f

    return v10

    :cond_3f
    return v2

    :cond_40
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v3, :cond_41

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_41
    const/16 v23, 0x6

    if-ne v0, v3, :cond_50

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_42

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_42
    if-ne v1, v0, :cond_43

    return v8

    :cond_43
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_44

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_44
    if-ne v1, v0, :cond_45

    return v7

    :cond_45
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_46

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_46
    if-ne v1, v0, :cond_47

    return v23

    :cond_47
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_48

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_48
    if-ne v1, v0, :cond_49

    return v5

    :cond_49
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_4a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_4a
    if-ne v1, v0, :cond_4b

    return v11

    :cond_4b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_4c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_4c
    if-ne v1, v0, :cond_4d

    const/4 v0, 0x7

    return v0

    :cond_4d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_4e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_4e
    if-ne v1, v0, :cond_4f

    return v6

    :cond_4f
    return v2

    :cond_50
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v3, :cond_51

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_51
    if-ne v0, v3, :cond_60

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_52

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_52
    if-ne v1, v0, :cond_53

    return v11

    :cond_53
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_54

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_54
    if-ne v1, v0, :cond_55

    return v8

    :cond_55
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_56

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_56
    if-ne v1, v0, :cond_57

    return v5

    :cond_57
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_58

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_58
    if-ne v1, v0, :cond_59

    return v6

    :cond_59
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_5a

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_5a
    if-ne v1, v0, :cond_5b

    return v10

    :cond_5b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_5c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_5c
    if-ne v1, v0, :cond_5d

    return v23

    :cond_5d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_5e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_5e
    if-ne v1, v0, :cond_5f

    return v7

    :cond_5f
    return v2

    :cond_60
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v3, :cond_61

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_61
    if-ne v0, v3, :cond_70

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_62

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_62
    if-ne v1, v0, :cond_63

    return v21

    :cond_63
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_64

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_64
    if-ne v1, v0, :cond_65

    return v22

    :cond_65
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_66

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_66
    if-ne v1, v0, :cond_67

    return v10

    :cond_67
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_68

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_68
    if-ne v1, v0, :cond_69

    return v9

    :cond_69
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_6a

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_6a
    if-ne v1, v0, :cond_6b

    const/4 v0, -0x7

    return v0

    :cond_6b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_6c

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_6c
    if-ne v1, v0, :cond_6d

    return v20

    :cond_6d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v0, :cond_6e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_6e
    if-ne v1, v0, :cond_6f

    return v19

    :cond_6f
    return v2

    :cond_70
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v3, :cond_71

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_71
    if-ne v0, v3, :cond_7f

    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v0, :cond_72

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_72
    if-ne v1, v0, :cond_73

    return v9

    :cond_73
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v0, :cond_74

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_74
    if-ne v1, v0, :cond_75

    return v10

    :cond_75
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v0, :cond_76

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_76
    if-ne v1, v0, :cond_77

    return v8

    :cond_77
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v0, :cond_78

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_78
    if-ne v1, v0, :cond_79

    return v11

    :cond_79
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v0, :cond_7a

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_7a
    if-ne v1, v0, :cond_7b

    return v22

    :cond_7b
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v0, :cond_7c

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_7c
    if-ne v1, v0, :cond_7d

    return v19

    :cond_7d
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v0, :cond_7e

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_7e
    if-ne v1, v0, :cond_7f

    return v7

    :cond_7f
    return v2
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    const-string v4, "java.lang.Integer"

    if-nez v3, :cond_1

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_1
    const-string v5, "java.lang.Short"

    const-string v6, "freemarker.ext.beans.OverloadedNumberUtil$LongOrByte"

    const-string v7, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte"

    const-string v8, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte"

    const-string v9, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong"

    const-string v10, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger"

    const-string v11, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat"

    const-string v12, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat"

    const-string v13, "freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger"

    const-string v14, "java.math.BigInteger"

    const-string v15, "java.lang.Byte"

    const-string v16, "java.lang.Float"

    const-string v17, "java.lang.Double"

    const-string v18, "java.lang.Long"

    const-string v19, "java.math.BigDecimal"

    const-string v20, "freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal"

    const v21, 0x7fffffff

    if-ne v1, v3, :cond_3c

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_2
    if-ne v0, v1, :cond_3

    const/16 v0, 0x791b

    return v0

    :cond_3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_4

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_4
    if-ne v0, v1, :cond_5

    const v0, 0xa02b

    return v0

    :cond_5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_6

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_6
    if-ne v0, v1, :cond_7

    return v21

    :cond_7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_8

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_8
    if-ne v0, v1, :cond_9

    return v21

    :cond_9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_a

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_a
    if-ne v0, v1, :cond_b

    return v21

    :cond_b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_c

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_c
    if-ne v0, v1, :cond_d

    const/16 v0, 0x2713

    return v0

    :cond_d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_e

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_e
    if-ne v0, v1, :cond_f

    return v21

    :cond_f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_10

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_10
    if-ne v0, v1, :cond_11

    const/16 v0, 0x520b

    return v0

    :cond_11
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_12

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_12
    if-ne v0, v1, :cond_13

    return v21

    :cond_13
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_14

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_14
    if-ne v0, v1, :cond_15

    const/16 v0, 0x55f3

    return v0

    :cond_15
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_16

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_16
    if-ne v0, v1, :cond_17

    const/16 v0, 0x55f3

    return v0

    :cond_17
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_18

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_18
    if-ne v0, v1, :cond_19

    return v21

    :cond_19
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_1a

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_1a
    if-ne v0, v1, :cond_1b

    return v2

    :cond_1b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_1c

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_1c
    if-ne v0, v1, :cond_1d

    const/16 v0, 0x55f3

    return v0

    :cond_1d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_1e

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_1e
    if-ne v0, v1, :cond_1f

    const/16 v0, 0x520b

    return v0

    :cond_1f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_20

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_20
    if-ne v0, v1, :cond_21

    const/16 v0, 0x2713

    return v0

    :cond_21
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_22

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_22
    if-ne v0, v1, :cond_23

    const/16 v0, 0x520b

    return v0

    :cond_23
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_24
    if-ne v0, v1, :cond_25

    const/16 v0, 0x2713

    return v0

    :cond_25
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_26

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_26
    if-ne v0, v1, :cond_27

    const/16 v0, 0x520b

    return v0

    :cond_27
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_28

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_28
    if-ne v0, v1, :cond_29

    const/16 v0, 0x520b

    return v0

    :cond_29
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_2a

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_2a
    if-ne v0, v1, :cond_2b

    const/16 v0, 0x520b

    return v0

    :cond_2b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_2c

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_2c
    if-ne v0, v1, :cond_2d

    const/16 v0, 0x3e83

    return v0

    :cond_2d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_2e

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_2e
    if-ne v0, v1, :cond_2f

    return v21

    :cond_2f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_30

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_30
    if-ne v0, v1, :cond_31

    return v21

    :cond_31
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_32

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_32
    if-ne v0, v1, :cond_33

    return v21

    :cond_33
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_34

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_34
    if-ne v0, v1, :cond_35

    const/16 v0, 0x3e83

    return v0

    :cond_35
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_36

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_36
    if-ne v0, v1, :cond_37

    return v2

    :cond_37
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_38

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_38
    if-ne v0, v1, :cond_39

    const/16 v0, 0x55f3

    return v0

    :cond_39
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_3a

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_3a
    if-ne v0, v1, :cond_3b

    const/16 v0, 0x3e83

    return v0

    :cond_3b
    return v21

    :cond_3c
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v3, :cond_3d

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_3d
    if-ne v1, v3, :cond_78

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_3e

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_3e
    if-ne v0, v1, :cond_3f

    const/16 v0, 0x2714

    return v0

    :cond_3f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_40

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_40
    if-ne v0, v1, :cond_41

    const/16 v0, 0x791c

    return v0

    :cond_41
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_42

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_42
    if-ne v0, v1, :cond_43

    const v0, 0xa02c

    return v0

    :cond_43
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_44

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_44
    if-ne v0, v1, :cond_45

    return v21

    :cond_45
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_46

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_46
    if-ne v0, v1, :cond_47

    return v21

    :cond_47
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_48

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_48
    if-ne v0, v1, :cond_49

    const/16 v0, 0x2714

    return v0

    :cond_49
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_4a

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_4a
    if-ne v0, v1, :cond_4b

    return v21

    :cond_4b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_4c

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_4c
    if-ne v0, v1, :cond_4d

    return v2

    :cond_4d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_4e

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_4e
    if-ne v0, v1, :cond_4f

    return v21

    :cond_4f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_50

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_50
    if-ne v0, v1, :cond_51

    const/16 v0, 0x520c

    return v0

    :cond_51
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_52

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_52
    if-ne v0, v1, :cond_53

    const/16 v0, 0x520c

    return v0

    :cond_53
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_54

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_54
    if-ne v0, v1, :cond_55

    const/16 v0, 0x520c

    return v0

    :cond_55
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_56

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_56
    if-ne v0, v1, :cond_57

    const/16 v0, 0x2714

    return v0

    :cond_57
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_58

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_58
    if-ne v0, v1, :cond_59

    const/16 v0, 0x520c

    return v0

    :cond_59
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_5a

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_5a
    if-ne v0, v1, :cond_5b

    return v2

    :cond_5b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_5c

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_5c
    if-ne v0, v1, :cond_5d

    const/16 v0, 0x2714

    return v0

    :cond_5d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_5e

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_5e
    if-ne v0, v1, :cond_5f

    return v2

    :cond_5f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_60

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_60
    if-ne v0, v1, :cond_61

    const/16 v0, 0x2714

    return v0

    :cond_61
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_62

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_62
    if-ne v0, v1, :cond_63

    const/16 v0, 0x520c

    return v0

    :cond_63
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_64

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_64
    if-ne v0, v1, :cond_65

    const/16 v0, 0x520c

    return v0

    :cond_65
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_66

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_66
    if-ne v0, v1, :cond_67

    const/16 v0, 0x520c

    return v0

    :cond_67
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_68

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_68
    if-ne v0, v1, :cond_69

    const/16 v0, 0x3a9c

    return v0

    :cond_69
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_6a

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_6a
    if-ne v0, v1, :cond_6b

    const/16 v0, 0x3a9c

    return v0

    :cond_6b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_6c

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_6c
    if-ne v0, v1, :cond_6d

    return v21

    :cond_6d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_6e

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_6e
    if-ne v0, v1, :cond_6f

    return v21

    :cond_6f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_70

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_70
    if-ne v0, v1, :cond_71

    const/16 v0, 0x3a9c

    return v0

    :cond_71
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_72

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_72
    if-ne v0, v1, :cond_73

    const/16 v0, 0x2714

    return v0

    :cond_73
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_74

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_74
    if-ne v0, v1, :cond_75

    const/16 v0, 0x520c

    return v0

    :cond_75
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_76

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_76
    if-ne v0, v1, :cond_77

    const/16 v0, 0x3a9c

    return v0

    :cond_77
    return v21

    :cond_78
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v3, :cond_79

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_79
    if-ne v1, v3, :cond_b4

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_7a

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_7a
    const/16 v3, 0x4e27

    if-ne v0, v1, :cond_7b

    return v3

    :cond_7b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_7c

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_7c
    if-ne v0, v1, :cond_7d

    const/16 v0, 0x7d07

    return v0

    :cond_7d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_7e

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_7e
    if-ne v0, v1, :cond_7f

    const/16 v0, 0x7d07

    return v0

    :cond_7f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_80

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_80
    if-ne v0, v1, :cond_81

    const/16 v0, 0x7537

    return v0

    :cond_81
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_82

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_82
    if-ne v0, v1, :cond_83

    const/16 v0, 0x2717

    return v0

    :cond_83
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_84

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_84
    if-ne v0, v1, :cond_85

    return v3

    :cond_85
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_86

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_86
    if-ne v0, v1, :cond_87

    return v21

    :cond_87
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_88

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_88
    if-ne v0, v1, :cond_89

    const/16 v0, 0x520f

    return v0

    :cond_89
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_8a

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_8a
    if-ne v0, v1, :cond_8b

    return v2

    :cond_8b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_8c

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_8c
    if-ne v0, v1, :cond_8d

    return v2

    :cond_8d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_8e

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_8e
    if-ne v0, v1, :cond_8f

    return v2

    :cond_8f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_90

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_90
    if-ne v0, v1, :cond_91

    return v2

    :cond_91
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_92

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_92
    if-ne v0, v1, :cond_93

    return v3

    :cond_93
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_94

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_94
    if-ne v0, v1, :cond_95

    return v2

    :cond_95
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_96

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_96
    if-ne v0, v1, :cond_97

    const/16 v0, 0x520f

    return v0

    :cond_97
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_98

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_98
    if-ne v0, v1, :cond_99

    return v3

    :cond_99
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_9a

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_9a
    if-ne v0, v1, :cond_9b

    const/16 v0, 0x520f

    return v0

    :cond_9b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_9c

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_9c
    if-ne v0, v1, :cond_9d

    return v3

    :cond_9d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_9e

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_9e
    if-ne v0, v1, :cond_9f

    const/16 v0, 0x2717

    return v0

    :cond_9f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_a0

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_a0
    if-ne v0, v1, :cond_a1

    const/16 v0, 0x2717

    return v0

    :cond_a1
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_a2

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_a2
    if-ne v0, v1, :cond_a3

    const/16 v0, 0x2717

    return v0

    :cond_a3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_a4

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_a4
    if-ne v0, v1, :cond_a5

    return v3

    :cond_a5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_a6

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_a6
    if-ne v0, v1, :cond_a7

    const/16 v0, 0x7537

    return v0

    :cond_a7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_a8

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_a8
    if-ne v0, v1, :cond_a9

    return v3

    :cond_a9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_aa

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_aa
    if-ne v0, v1, :cond_ab

    return v3

    :cond_ab
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_ac

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_ac
    if-ne v0, v1, :cond_ad

    return v3

    :cond_ad
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_ae

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_ae
    if-ne v0, v1, :cond_af

    return v3

    :cond_af
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_b0

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_b0
    if-ne v0, v1, :cond_b1

    return v2

    :cond_b1
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_b2

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_b2
    if-ne v0, v1, :cond_b3

    return v3

    :cond_b3
    return v21

    :cond_b4
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v3, :cond_b5

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_b5
    if-ne v1, v3, :cond_f0

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_b6

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_b6
    if-ne v0, v1, :cond_b7

    const/16 v0, 0x7536

    return v0

    :cond_b7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_b8

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_b8
    if-ne v0, v1, :cond_b9

    const v0, 0x80ee

    return v0

    :cond_b9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_ba

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_ba
    if-ne v0, v1, :cond_bb

    const v0, 0x80ee

    return v0

    :cond_bb
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_bc

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_bc
    if-ne v0, v1, :cond_bd

    const v0, 0x9c46

    return v0

    :cond_bd
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_be

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_be
    if-ne v0, v1, :cond_bf

    return v21

    :cond_bf
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_c0

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_c0
    if-ne v0, v1, :cond_c1

    const/16 v0, 0x4e26

    return v0

    :cond_c1
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_c2

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_c2
    if-ne v0, v1, :cond_c3

    return v21

    :cond_c3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_c4

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_c4
    if-ne v0, v1, :cond_c5

    const/16 v0, 0x7536

    return v0

    :cond_c5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_c6

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_c6
    if-ne v0, v1, :cond_c7

    const/16 v0, 0x7536

    return v0

    :cond_c7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_c8

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_c8
    if-ne v0, v1, :cond_c9

    const/16 v0, 0x59de

    return v0

    :cond_c9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_ca

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_ca
    if-ne v0, v1, :cond_cb

    const/16 v0, 0x7536

    return v0

    :cond_cb
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_cc

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_cc
    if-ne v0, v1, :cond_cd

    const v0, 0x9c46

    return v0

    :cond_cd
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_ce

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_ce
    if-ne v0, v1, :cond_cf

    const/16 v0, 0x5dc6

    return v0

    :cond_cf
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_d0

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_d0
    if-ne v0, v1, :cond_d1

    const/16 v0, 0x59de

    return v0

    :cond_d1
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_d2

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_d2
    if-ne v0, v1, :cond_d3

    const/16 v0, 0x5dc6

    return v0

    :cond_d3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_d4

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_d4
    if-ne v0, v1, :cond_d5

    const/16 v0, 0x4e26

    return v0

    :cond_d5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_d6

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_d6
    if-ne v0, v1, :cond_d7

    const/16 v0, 0x5dc6

    return v0

    :cond_d7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_d8

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_d8
    if-ne v0, v1, :cond_d9

    const/16 v0, 0x4e26

    return v0

    :cond_d9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_da

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_da
    if-ne v0, v1, :cond_db

    return v2

    :cond_db
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_dc

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_dc
    if-ne v0, v1, :cond_dd

    return v2

    :cond_dd
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_de

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_de
    if-ne v0, v1, :cond_df

    return v2

    :cond_df
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_e0

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_e0
    if-ne v0, v1, :cond_e1

    const/16 v0, 0x7536

    return v0

    :cond_e1
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_e2

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_e2
    if-ne v0, v1, :cond_e3

    const v0, 0x9c46

    return v0

    :cond_e3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_e4

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_e4
    if-ne v0, v1, :cond_e5

    const v0, 0x9c46

    return v0

    :cond_e5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_e6

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_e6
    if-ne v0, v1, :cond_e7

    const/16 v0, 0x5dc6

    return v0

    :cond_e7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_e8

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_e8
    if-ne v0, v1, :cond_e9

    const/16 v0, 0x5dc6

    return v0

    :cond_e9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_ea

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_ea
    if-ne v0, v1, :cond_eb

    const/16 v0, 0x5dc6

    return v0

    :cond_eb
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_ec

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_ec
    if-ne v0, v1, :cond_ed

    const/16 v0, 0x59de

    return v0

    :cond_ed
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_ee

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_ee
    if-ne v0, v1, :cond_ef

    const/16 v0, 0x5dc6

    return v0

    :cond_ef
    return v21

    :cond_f0
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v3, :cond_f1

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_f1
    if-ne v1, v3, :cond_12b

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_f2

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_f2
    if-ne v0, v1, :cond_f3

    return v21

    :cond_f3
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_f4

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_f4
    if-ne v0, v1, :cond_f5

    const v0, 0x88b9

    return v0

    :cond_f5
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_f6

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_f6
    if-ne v0, v1, :cond_f7

    const v0, 0xafc9

    return v0

    :cond_f7
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_f8

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_f8
    if-ne v0, v1, :cond_f9

    return v21

    :cond_f9
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_fa

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_fa
    if-ne v0, v1, :cond_fb

    return v21

    :cond_fb
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_fc

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_fc
    if-ne v0, v1, :cond_fd

    return v21

    :cond_fd
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_fe

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_fe
    if-ne v0, v1, :cond_ff

    return v21

    :cond_ff
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_100

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_100
    if-ne v0, v1, :cond_101

    return v21

    :cond_101
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_102

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_102
    if-ne v0, v1, :cond_103

    return v21

    :cond_103
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_104

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_104
    if-ne v0, v1, :cond_105

    return v21

    :cond_105
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_106

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_106
    if-ne v0, v1, :cond_107

    return v21

    :cond_107
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_108

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_108
    if-ne v0, v1, :cond_109

    return v21

    :cond_109
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_10a

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_10a
    if-ne v0, v1, :cond_10b

    const/16 v0, 0x55f1

    return v0

    :cond_10b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_10c

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_10c
    if-ne v0, v1, :cond_10d

    const/16 v0, 0x61a9

    return v0

    :cond_10d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_10e

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_10e
    if-ne v0, v1, :cond_10f

    const/16 v0, 0x59d9

    return v0

    :cond_10f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_110

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_110
    if-ne v0, v1, :cond_111

    return v21

    :cond_111
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_112

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_112
    if-ne v0, v1, :cond_113

    return v21

    :cond_113
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_114

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_114
    if-ne v0, v1, :cond_115

    const/16 v0, 0x5209

    return v0

    :cond_115
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_116

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_116
    if-ne v0, v1, :cond_117

    return v21

    :cond_117
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_118

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_118
    if-ne v0, v1, :cond_119

    const/16 v0, 0x59d9

    return v0

    :cond_119
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_11a

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_11a
    if-ne v0, v1, :cond_11b

    return v21

    :cond_11b
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_11c

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_11c
    if-ne v0, v1, :cond_11d

    return v21

    :cond_11d
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_11e

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_11e
    if-ne v0, v1, :cond_11f

    return v21

    :cond_11f
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_120

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_120
    if-ne v0, v1, :cond_121

    return v21

    :cond_121
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_122

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_122
    if-ne v0, v1, :cond_123

    return v21

    :cond_123
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_124

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_124
    if-ne v0, v1, :cond_125

    const/16 v0, 0x4651

    return v0

    :cond_125
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_126

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_126
    if-ne v0, v1, :cond_127

    return v21

    :cond_127
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_128

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_128
    if-ne v0, v1, :cond_129

    return v21

    :cond_129
    sget-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v0, :cond_12a

    const-string v0, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v0}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_12a
    return v21

    :cond_12b
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v3, :cond_12c

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_12c
    if-ne v1, v3, :cond_167

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_12d

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_12d
    if-ne v0, v1, :cond_12e

    return v21

    :cond_12e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_12f

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_12f
    if-ne v0, v1, :cond_130

    const v0, 0x84d2

    return v0

    :cond_130
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_131

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_131
    if-ne v0, v1, :cond_132

    const v0, 0xabe2

    return v0

    :cond_132
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_133

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_133
    if-ne v0, v1, :cond_134

    return v21

    :cond_134
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_135

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_135
    if-ne v0, v1, :cond_136

    return v21

    :cond_136
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_137

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_137
    if-ne v0, v1, :cond_138

    return v21

    :cond_138
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_139

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_139
    if-ne v0, v1, :cond_13a

    const/16 v0, 0x2712

    return v0

    :cond_13a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_13b

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_13b
    if-ne v0, v1, :cond_13c

    return v21

    :cond_13c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_13d

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_13d
    if-ne v0, v1, :cond_13e

    return v21

    :cond_13e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_13f

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_13f
    if-ne v0, v1, :cond_140

    return v21

    :cond_140
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_141

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_141
    if-ne v0, v1, :cond_142

    return v21

    :cond_142
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_143

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_143
    if-ne v0, v1, :cond_144

    return v21

    :cond_144
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_145

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_145
    if-ne v0, v1, :cond_146

    return v21

    :cond_146
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_147

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_147
    if-ne v0, v1, :cond_148

    const/16 v0, 0x520a

    return v0

    :cond_148
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_149

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_149
    if-ne v0, v1, :cond_14a

    const/16 v0, 0x5dc2

    return v0

    :cond_14a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_14b

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_14b
    if-ne v0, v1, :cond_14c

    const/16 v0, 0x55f2

    return v0

    :cond_14c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_14d

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_14d
    if-ne v0, v1, :cond_14e

    const/16 v0, 0x55f2

    return v0

    :cond_14e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_14f

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_14f
    if-ne v0, v1, :cond_150

    return v2

    :cond_150
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_151

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_151
    if-ne v0, v1, :cond_152

    return v21

    :cond_152
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_153

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_153
    if-ne v0, v1, :cond_154

    const/16 v0, 0x55f2

    return v0

    :cond_154
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_155

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_155
    if-ne v0, v1, :cond_156

    const/16 v0, 0x55f2

    return v0

    :cond_156
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_157

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_157
    if-ne v0, v1, :cond_158

    return v21

    :cond_158
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_159

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_159
    if-ne v0, v1, :cond_15a

    return v21

    :cond_15a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_15b

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_15b
    if-ne v0, v1, :cond_15c

    return v21

    :cond_15c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_15d

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_15d
    if-ne v0, v1, :cond_15e

    return v21

    :cond_15e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_15f

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_15f
    if-ne v0, v1, :cond_160

    const/16 v0, 0x426a

    return v0

    :cond_160
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_161

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_161
    if-ne v0, v1, :cond_162

    const/16 v0, 0x520a

    return v0

    :cond_162
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_163

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_163
    if-ne v0, v1, :cond_164

    const/16 v0, 0x5dc2

    return v0

    :cond_164
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_165

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_165
    if-ne v0, v1, :cond_166

    const/16 v0, 0x426a

    return v0

    :cond_166
    return v21

    :cond_167
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v3, :cond_168

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_168
    if-ne v1, v3, :cond_1a3

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_169

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_169
    const/16 v3, 0x4e28

    if-ne v0, v1, :cond_16a

    return v3

    :cond_16a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_16b

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_16b
    if-ne v0, v1, :cond_16c

    return v2

    :cond_16c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_16d

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_16d
    if-ne v0, v1, :cond_16e

    return v3

    :cond_16e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_16f

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_16f
    if-ne v0, v1, :cond_170

    return v3

    :cond_170
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_171

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_171
    if-ne v0, v1, :cond_172

    return v3

    :cond_172
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_173

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_173
    if-ne v0, v1, :cond_174

    return v3

    :cond_174
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v1, :cond_175

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_175
    if-ne v0, v1, :cond_176

    const/16 v0, 0x2718

    return v0

    :cond_176
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_177

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_177
    if-ne v0, v1, :cond_178

    return v3

    :cond_178
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_179

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_179
    if-ne v0, v1, :cond_17a

    return v3

    :cond_17a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_17b

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_17b
    if-ne v0, v1, :cond_17c

    return v3

    :cond_17c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_17d

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_17d
    if-ne v0, v1, :cond_17e

    return v3

    :cond_17e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_17f

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_17f
    if-ne v0, v1, :cond_180

    return v3

    :cond_180
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_181

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_181
    if-ne v0, v1, :cond_182

    return v3

    :cond_182
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_183

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_183
    if-ne v0, v1, :cond_184

    return v3

    :cond_184
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_185

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_185
    if-ne v0, v1, :cond_186

    return v3

    :cond_186
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_187

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_187
    if-ne v0, v1, :cond_188

    return v3

    :cond_188
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_189

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_189
    if-ne v0, v1, :cond_18a

    return v3

    :cond_18a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_18b

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_18b
    if-ne v0, v1, :cond_18c

    return v3

    :cond_18c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_18d

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_18d
    if-ne v0, v1, :cond_18e

    return v3

    :cond_18e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_18f

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_18f
    if-ne v0, v1, :cond_190

    return v3

    :cond_190
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_191

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_191
    if-ne v0, v1, :cond_192

    return v3

    :cond_192
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_193

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_193
    if-ne v0, v1, :cond_194

    const/16 v0, 0x2718

    return v0

    :cond_194
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_195

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_195
    if-ne v0, v1, :cond_196

    const/16 v0, 0x2718

    return v0

    :cond_196
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_197

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_197
    if-ne v0, v1, :cond_198

    const/16 v0, 0x2718

    return v0

    :cond_198
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_199

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_199
    if-ne v0, v1, :cond_19a

    const/16 v0, 0x2718

    return v0

    :cond_19a
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_19b

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_19b
    if-ne v0, v1, :cond_19c

    const/16 v0, 0x2718

    return v0

    :cond_19c
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_19d

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_19d
    if-ne v0, v1, :cond_19e

    return v3

    :cond_19e
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_19f

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_19f
    if-ne v0, v1, :cond_1a0

    return v3

    :cond_1a0
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_1a1

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_1a1
    if-ne v0, v1, :cond_1a2

    const/16 v0, 0x2718

    return v0

    :cond_1a2
    return v21

    :cond_1a3
    sget-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    if-nez v3, :cond_1a4

    invoke-static {v14}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/OverloadedNumberUtil;->h:Ljava/lang/Class;

    :cond_1a4
    if-ne v1, v3, :cond_1de

    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    if-nez v1, :cond_1a5

    invoke-static {v4}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->b:Ljava/lang/Class;

    :cond_1a5
    const/16 v3, 0x2715

    if-ne v0, v1, :cond_1a6

    return v3

    :cond_1a6
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    if-nez v1, :cond_1a7

    invoke-static/range {v20 .. v20}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->i:Ljava/lang/Class;

    :cond_1a7
    if-ne v0, v1, :cond_1a8

    return v3

    :cond_1a8
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_1a9

    invoke-static/range {v19 .. v19}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->a:Ljava/lang/Class;

    :cond_1a9
    if-ne v0, v1, :cond_1aa

    const v0, 0x9c45

    return v0

    :cond_1aa
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    if-nez v1, :cond_1ab

    invoke-static/range {v18 .. v18}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->c:Ljava/lang/Class;

    :cond_1ab
    if-ne v0, v1, :cond_1ac

    return v3

    :cond_1ac
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    if-nez v1, :cond_1ad

    invoke-static/range {v17 .. v17}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->d:Ljava/lang/Class;

    :cond_1ad
    if-ne v0, v1, :cond_1ae

    return v21

    :cond_1ae
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    if-nez v1, :cond_1af

    invoke-static/range {v16 .. v16}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->e:Ljava/lang/Class;

    :cond_1af
    if-ne v0, v1, :cond_1b0

    return v21

    :cond_1b0
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    if-nez v1, :cond_1b1

    invoke-static {v15}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->f:Ljava/lang/Class;

    :cond_1b1
    if-ne v0, v1, :cond_1b2

    return v3

    :cond_1b2
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    if-nez v1, :cond_1b3

    invoke-static {v13}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->j:Ljava/lang/Class;

    :cond_1b3
    if-ne v0, v1, :cond_1b4

    return v3

    :cond_1b4
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    if-nez v1, :cond_1b5

    invoke-static {v12}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->k:Ljava/lang/Class;

    :cond_1b5
    if-ne v0, v1, :cond_1b6

    return v21

    :cond_1b6
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_1b7

    invoke-static {v11}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->l:Ljava/lang/Class;

    :cond_1b7
    if-ne v0, v1, :cond_1b8

    const/16 v0, 0x520d

    return v0

    :cond_1b8
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_1b9

    invoke-static {v10}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->m:Ljava/lang/Class;

    :cond_1b9
    if-ne v0, v1, :cond_1ba

    const/16 v0, 0x520d

    return v0

    :cond_1ba
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_1bb

    invoke-static {v9}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->n:Ljava/lang/Class;

    :cond_1bb
    if-ne v0, v1, :cond_1bc

    const/16 v0, 0x520d

    return v0

    :cond_1bc
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_1bd

    invoke-static {v8}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->o:Ljava/lang/Class;

    :cond_1bd
    if-ne v0, v1, :cond_1be

    return v3

    :cond_1be
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_1bf

    invoke-static {v7}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->p:Ljava/lang/Class;

    :cond_1bf
    if-ne v0, v1, :cond_1c0

    const/16 v0, 0x520d

    return v0

    :cond_1c0
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_1c1

    invoke-static {v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->q:Ljava/lang/Class;

    :cond_1c1
    if-ne v0, v1, :cond_1c2

    return v3

    :cond_1c2
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    if-nez v1, :cond_1c3

    invoke-static {v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->g:Ljava/lang/Class;

    :cond_1c3
    if-ne v0, v1, :cond_1c4

    return v3

    :cond_1c4
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_1c5

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$LongOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->r:Ljava/lang/Class;

    :cond_1c5
    if-ne v0, v1, :cond_1c6

    return v3

    :cond_1c6
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_1c7

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->s:Ljava/lang/Class;

    :cond_1c7
    if-ne v0, v1, :cond_1c8

    return v3

    :cond_1c8
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_1c9

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->t:Ljava/lang/Class;

    :cond_1c9
    if-ne v0, v1, :cond_1ca

    const/16 v0, 0x61ad

    return v0

    :cond_1ca
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    if-nez v1, :cond_1cb

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->u:Ljava/lang/Class;

    :cond_1cb
    if-ne v0, v1, :cond_1cc

    const/16 v0, 0x61ad

    return v0

    :cond_1cc
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    if-nez v1, :cond_1cd

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->v:Ljava/lang/Class;

    :cond_1cd
    if-ne v0, v1, :cond_1ce

    const/16 v0, 0x61ad

    return v0

    :cond_1ce
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    if-nez v1, :cond_1cf

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->w:Ljava/lang/Class;

    :cond_1cf
    if-ne v0, v1, :cond_1d0

    return v2

    :cond_1d0
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    if-nez v1, :cond_1d1

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->x:Ljava/lang/Class;

    :cond_1d1
    if-ne v0, v1, :cond_1d2

    return v2

    :cond_1d2
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    if-nez v1, :cond_1d3

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->y:Ljava/lang/Class;

    :cond_1d3
    if-ne v0, v1, :cond_1d4

    return v2

    :cond_1d4
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    if-nez v1, :cond_1d5

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->z:Ljava/lang/Class;

    :cond_1d5
    if-ne v0, v1, :cond_1d6

    return v2

    :cond_1d6
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    if-nez v1, :cond_1d7

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->A:Ljava/lang/Class;

    :cond_1d7
    if-ne v0, v1, :cond_1d8

    return v2

    :cond_1d8
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    if-nez v1, :cond_1d9

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->B:Ljava/lang/Class;

    :cond_1d9
    if-ne v0, v1, :cond_1da

    return v3

    :cond_1da
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    if-nez v1, :cond_1db

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->C:Ljava/lang/Class;

    :cond_1db
    if-ne v0, v1, :cond_1dc

    const/16 v0, 0x520d

    return v0

    :cond_1dc
    sget-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    if-nez v1, :cond_1dd

    const-string v1, "freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort"

    invoke-static {v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/OverloadedNumberUtil;->D:Ljava/lang/Class;

    :cond_1dd
    if-ne v0, v1, :cond_1de

    return v2

    :cond_1de
    return v21
.end method
