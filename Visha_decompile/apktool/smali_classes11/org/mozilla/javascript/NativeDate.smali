.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/TimeZone;

.field public static final d:D

.field public static final e:Ljava/text/DateFormat;

.field public static final f:Ljava/text/DateFormat;

.field public static final g:Ljava/text/DateFormat;

.field public static final h:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = -0x7349f3ade5310b76L


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Date"

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->c:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeDate;->d:D

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->e:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy h:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->f:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->g:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->h:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static A(D)D
    .locals 4

    const-wide v0, 0x4194997000000000L    # 8.64E7

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public static B(D)I
    .locals 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->c(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static C(D)I
    .locals 11

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v0, 0x421d63c37f000000L    # 3.1556952E10

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x409ec80000000000L    # 1970.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->z(D)D

    move-result-wide v2

    cmpl-double v4, v2, p0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-lez v4, :cond_1

    sub-double/2addr v0, v5

    goto :goto_0

    :cond_1
    const-wide v7, 0x4194997000000000L    # 8.64E7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->n(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v2, v9

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_2

    add-double/2addr v0, v5

    :cond_2
    :goto_0
    double-to-int p0, v0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Ljava/lang/StringBuilder;II)V
    .locals 3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_3

    const v2, 0x3b9aca00

    if-ge p1, v2, :cond_2

    move v2, v1

    :goto_0
    mul-int/lit8 p2, v2, 0xa

    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v2, p2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, -0xa

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    const/16 p2, 0x30

    if-lez v0, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eq v2, v1, :cond_5

    div-int v0, p1, v2

    add-int/2addr v0, p2

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, v2, 0xa

    goto :goto_2

    :cond_5
    add-int/2addr p1, p2

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static E(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "JanFebMarAprMayJunJulAugSepOctNovDec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static F(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "SunMonTueWedThuFriSat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static G(DI)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq p2, v4, :cond_1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->B(D)I

    move-result v4

    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeDate;->F(Ljava/lang/StringBuilder;I)V

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result v7

    invoke-static {v0, v7}, Lorg/mozilla/javascript/NativeDate;->E(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result v7

    invoke-static {v0, v7, v6}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v7

    if-gez v7, :cond_0

    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v7, v7

    :cond_0
    invoke-static {v0, v7, v5}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    if-eq p2, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq p2, v5, :cond_4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->p(D)I

    move-result p2

    invoke-static {v0, p2, v6}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 p2, 0x3a

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->v(D)I

    move-result v4

    invoke-static {v0, v4, v6}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->x(D)I

    move-result p2

    invoke-static {v0, p2, v6}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    sget-wide v6, Lorg/mozilla/javascript/NativeDate;->d:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->l(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p2, v6

    div-int/lit8 v4, p2, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/2addr p2, v1

    add-int/2addr v4, p2

    if-lez v4, :cond_2

    const-string p2, " GMT+"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p2, " GMT-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v4, v4

    :goto_0
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const-wide/16 v4, 0x0

    cmpg-double p2, p0, v4

    if-gez p2, :cond_3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/NativeDate;->o(I)I

    move-result p2

    int-to-double v1, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result p2

    int-to-double v3, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result p2

    int-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeDate;->t(DDD)D

    move-result-wide v1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->A(D)D

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide p0

    :cond_3
    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/mozilla/javascript/NativeDate;->e:Ljava/text/DateFormat;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H([Ljava/lang/Object;)D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x7

    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-ge v4, v1, :cond_4

    array-length v8, v0

    if-ge v4, v8, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    if-ne v4, v7, :cond_3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v2, v4

    goto :goto_2

    :cond_3
    aput-wide v5, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    aget-wide v0, v2, v3

    cmpl-double v4, v0, v5

    if-ltz v4, :cond_5

    const-wide v4, 0x4058c00000000000L    # 99.0

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_5

    const-wide v4, 0x409db00000000000L    # 1900.0

    add-double/2addr v0, v4

    aput-wide v0, v2, v3

    :cond_5
    aget-wide v8, v2, v3

    const/4 v0, 0x1

    aget-wide v10, v2, v0

    aget-wide v12, v2, v7

    const/4 v0, 0x3

    aget-wide v14, v2, v0

    const/4 v0, 0x4

    aget-wide v16, v2, v0

    const/4 v0, 0x5

    aget-wide v18, v2, v0

    const/4 v0, 0x6

    aget-wide v20, v2, v0

    invoke-static/range {v8 .. v21}, Lorg/mozilla/javascript/NativeDate;->I(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static I(DDDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->t(DDD)D

    move-result-wide p0

    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->u(DDDD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static J(Ljava/lang/String;)D
    .locals 36

    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/NativeDate;->T(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v0, -0x1

    move v5, v0

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/16 v18, 0x0

    :cond_1
    :goto_0
    const-wide/high16 v19, 0x7ff8000000000000L    # Double.NaN

    if-ge v4, v7, :cond_31

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x39

    const/16 v10, 0x20

    const/16 v8, 0x30

    const/16 v9, 0x2d

    if-le v0, v10, :cond_2

    const/16 v10, 0x2c

    if-eq v0, v10, :cond_2

    if-ne v0, v9, :cond_3

    :cond_2
    move/from16 v23, v3

    move v3, v8

    move v8, v5

    goto/16 :goto_11

    :cond_3
    const/16 v10, 0x28

    const/16 v23, 0x1

    if-ne v0, v10, :cond_6

    move v4, v1

    :cond_4
    :goto_1
    if-ge v4, v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v4, 0x1

    if-ne v0, v10, :cond_5

    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    add-int/lit8 v23, v23, -0x1

    if-gtz v23, :cond_4

    goto :goto_0

    :cond_6
    const/16 v10, 0x2b

    const/16 v9, 0x2f

    const-wide/16 v26, 0x0

    if-gt v8, v0, :cond_1f

    if-gt v0, v2, :cond_1f

    add-int/lit8 v4, v0, -0x30

    move/from16 v35, v4

    move v4, v1

    move/from16 v1, v35

    :goto_2
    if-ge v4, v7, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v8, v0, :cond_7

    if-gt v0, v2, :cond_7

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    sub-int/2addr v1, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/16 v2, 0x3c

    if-eq v3, v10, :cond_1b

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v8, 0x46

    if-ge v1, v8, :cond_16

    if-ne v3, v9, :cond_9

    if-ltz v12, :cond_9

    if-ltz v13, :cond_9

    if-gez v11, :cond_9

    goto :goto_5

    :cond_9
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_c

    if-gez v5, :cond_a

    move v5, v1

    goto/16 :goto_9

    :cond_a
    if-gez v15, :cond_b

    goto :goto_3

    :cond_b
    return-wide v19

    :cond_c
    if-ne v0, v9, :cond_f

    if-gez v12, :cond_d

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    goto/16 :goto_9

    :cond_d
    if-gez v13, :cond_e

    goto :goto_4

    :cond_e
    return-wide v19

    :cond_f
    if-ge v4, v7, :cond_10

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_10

    const/16 v3, 0x20

    if-le v0, v3, :cond_10

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_10

    return-wide v19

    :cond_10
    if-eqz v18, :cond_12

    if-ge v1, v2, :cond_12

    cmpg-double v0, v16, v26

    if-gez v0, :cond_11

    int-to-double v0, v1

    sub-double v16, v16, v0

    goto :goto_9

    :cond_11
    int-to-double v0, v1

    add-double v16, v16, v0

    goto :goto_9

    :cond_12
    if-ltz v5, :cond_13

    if-gez v15, :cond_13

    :goto_3
    move v15, v1

    goto :goto_9

    :cond_13
    if-ltz v15, :cond_14

    if-gez v14, :cond_14

    move v14, v1

    goto :goto_9

    :cond_14
    if-gez v13, :cond_15

    :goto_4
    move v13, v1

    goto :goto_9

    :cond_15
    return-wide v19

    :cond_16
    :goto_5
    if-ltz v11, :cond_17

    return-wide v19

    :cond_17
    const/16 v2, 0x20

    if-le v0, v2, :cond_19

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_19

    if-eq v0, v9, :cond_19

    if-lt v4, v7, :cond_18

    goto :goto_6

    :cond_18
    return-wide v19

    :cond_19
    :goto_6
    const/16 v0, 0x64

    if-ge v1, v0, :cond_1a

    add-int/lit16 v1, v1, 0x76c

    :cond_1a
    move v11, v1

    goto :goto_9

    :cond_1b
    :goto_7
    const/16 v0, 0x18

    if-ge v1, v0, :cond_1c

    mul-int/lit8 v1, v1, 0x3c

    goto :goto_8

    :cond_1c
    rem-int/lit8 v0, v1, 0x64

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_8
    if-ne v3, v10, :cond_1d

    neg-int v1, v1

    :cond_1d
    cmpl-double v0, v16, v26

    if-eqz v0, :cond_1e

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v16, v2

    if-eqz v0, :cond_1e

    return-wide v19

    :cond_1e
    int-to-double v0, v1

    move-wide/from16 v16, v0

    move/from16 v18, v23

    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1f
    if-eq v0, v9, :cond_20

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_20

    if-eq v0, v10, :cond_20

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_21

    :cond_20
    move v8, v5

    goto/16 :goto_12

    :cond_21
    move v8, v1

    :goto_a
    if-ge v8, v7, :cond_24

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-gt v1, v0, :cond_22

    const/16 v1, 0x5a

    if-le v0, v1, :cond_23

    :cond_22
    const/16 v1, 0x61

    if-gt v1, v0, :cond_24

    const/16 v1, 0x7a

    if-le v0, v1, :cond_23

    goto :goto_b

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_24
    :goto_b
    sub-int v9, v8, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_25

    return-wide v19

    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v0, 0x3b

    const-string v10, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    if-gez v22, :cond_26

    return-wide v19

    :cond_26
    const/16 v23, 0x1

    move-object v0, v10

    move v10, v1

    move/from16 v1, v23

    move/from16 v23, v3

    move-object/from16 v3, p0

    move/from16 v24, v4

    move/from16 v25, v8

    move v8, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc

    const/4 v2, 0x2

    if-ge v10, v2, :cond_2a

    if-gt v8, v0, :cond_29

    if-gez v8, :cond_27

    goto :goto_d

    :cond_27
    if-nez v10, :cond_28

    if-ne v8, v0, :cond_2c

    const/4 v5, 0x0

    goto :goto_10

    :cond_28
    if-eq v8, v0, :cond_2c

    add-int/lit8 v5, v8, 0xc

    goto :goto_10

    :cond_29
    :goto_d
    return-wide v19

    :cond_2a
    add-int/lit8 v1, v10, -0x2

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2b

    goto :goto_e

    :cond_2b
    add-int/lit8 v1, v10, -0x9

    if-ge v1, v0, :cond_2e

    if-gez v12, :cond_2d

    move v12, v1

    :cond_2c
    :goto_e
    move v5, v8

    goto :goto_10

    :cond_2d
    return-wide v19

    :cond_2e
    add-int/lit8 v1, v10, -0x15

    const-wide v2, 0x4072c00000000000L    # 300.0

    const-wide v4, 0x4076800000000000L    # 360.0

    const-wide v9, 0x407a400000000000L    # 420.0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_e

    :pswitch_0
    move v5, v8

    move-wide/from16 v16, v9

    goto :goto_10

    :pswitch_1
    const-wide/high16 v0, 0x407e000000000000L    # 480.0

    :goto_f
    move-wide/from16 v16, v0

    goto :goto_e

    :pswitch_2
    move-wide/from16 v16, v4

    goto :goto_e

    :pswitch_3
    move-wide/from16 v16, v2

    goto :goto_e

    :pswitch_4
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    goto :goto_f

    :pswitch_5
    move v5, v8

    move-wide/from16 v16, v26

    :goto_10
    move/from16 v3, v23

    move/from16 v4, v25

    goto/16 :goto_0

    :cond_2f
    const/4 v2, 0x2

    add-int/lit8 v0, v22, 0x1

    add-int/lit8 v1, v10, 0x1

    move v10, v2

    move v5, v8

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v8, v25

    move v2, v0

    goto/16 :goto_c

    :goto_11
    if-ge v1, v7, :cond_30

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_30

    if-gt v3, v4, :cond_30

    if-gt v4, v2, :cond_30

    :goto_12
    move v3, v0

    move v4, v1

    move v5, v8

    goto/16 :goto_0

    :cond_30
    move v4, v1

    move v5, v8

    move/from16 v3, v23

    goto/16 :goto_0

    :cond_31
    move v8, v5

    if-ltz v11, :cond_37

    if-ltz v12, :cond_37

    if-gez v13, :cond_32

    goto :goto_14

    :cond_32
    if-gez v14, :cond_33

    const/4 v14, 0x0

    :cond_33
    if-gez v15, :cond_34

    const/4 v15, 0x0

    :cond_34
    if-gez v8, :cond_35

    const/4 v10, 0x0

    goto :goto_13

    :cond_35
    move v10, v8

    :goto_13
    int-to-double v0, v11

    int-to-double v2, v12

    int-to-double v4, v13

    int-to-double v6, v10

    int-to-double v8, v15

    int-to-double v10, v14

    const-wide/16 v33, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-static/range {v21 .. v34}, Lorg/mozilla/javascript/NativeDate;->I(DDDDDDD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_36

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->K(D)D

    move-result-wide v0

    return-wide v0

    :cond_36
    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v16, v16, v2

    add-double v0, v0, v16

    return-wide v0

    :cond_37
    :goto_14
    return-wide v19

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static K(D)D
    .locals 4

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->d:D

    sub-double v2, p0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->l(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    return-wide v2
.end method

.method public static L([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    array-length v1, p0

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->S()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    aget-object p0, p0, v1

    instance-of v1, p0, Lorg/mozilla/javascript/NativeDate;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeDate;

    iget-wide v1, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_1
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_2

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_2
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->J(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->H([Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->K(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide v1

    :cond_5
    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0
.end method

.method public static M([Ljava/lang/Object;)D
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->H([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static N(D)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x2d

    if-gez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x270f

    if-le v1, v4, :cond_1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->p(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->v(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->x(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->R(D)I

    move-result p0

    const/4 p1, 0x3

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(D)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->B(D)I

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->F(Ljava/lang/StringBuilder;I)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result v3

    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeDate;->E(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v3

    if-gez v3, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :cond_0
    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->p(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->v(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->x(D)I

    move-result p0

    invoke-static {v0, p0, v2}, Lorg/mozilla/javascript/NativeDate;->D(Ljava/lang/StringBuilder;II)V

    const-string p0, " GMT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(D[Ljava/lang/Object;I)D
    .locals 19

    move-object/from16 v0, p2

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v7, v5

    goto :goto_0

    :pswitch_1
    move v7, v6

    :goto_0
    move v8, v4

    goto :goto_3

    :pswitch_2
    move v7, v5

    goto :goto_1

    :pswitch_3
    move v7, v6

    :goto_1
    move v8, v1

    goto :goto_3

    :pswitch_4
    move v7, v5

    goto :goto_2

    :pswitch_5
    move v7, v6

    :goto_2
    move v8, v6

    :goto_3
    array-length v9, v0

    if-ge v9, v8, :cond_1

    array-length v9, v0

    goto :goto_4

    :cond_1
    move v9, v8

    :goto_4
    new-array v10, v4, [D

    move v11, v5

    move v12, v11

    :goto_5
    if-ge v11, v9, :cond_4

    aget-object v13, v0, v11

    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_6

    :cond_2
    invoke-static {v13, v14}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v13

    aput-wide v13, v10, v11

    goto :goto_7

    :cond_3
    :goto_6
    move v12, v6

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    if-eqz v12, :cond_5

    return-wide v2

    :cond_5
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ge v8, v4, :cond_6

    return-wide v2

    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_7
    if-eqz v7, :cond_8

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p0

    :goto_8
    if-lt v8, v4, :cond_9

    if-lez v9, :cond_9

    aget-wide v4, v10, v5

    move-wide v13, v4

    move v5, v6

    goto :goto_9

    :cond_9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v0

    int-to-double v11, v0

    move-wide v13, v11

    :goto_9
    if-lt v8, v1, :cond_a

    if-ge v5, v9, :cond_a

    add-int/lit8 v0, v5, 0x1

    aget-wide v4, v10, v5

    move-wide v15, v4

    move v5, v0

    goto :goto_a

    :cond_a
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result v0

    int-to-double v0, v0

    move-wide v15, v0

    :goto_a
    if-lt v8, v6, :cond_b

    if-ge v5, v9, :cond_b

    aget-wide v0, v10, v5

    :goto_b
    move-wide/from16 v17, v0

    goto :goto_c

    :cond_b
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result v0

    int-to-double v0, v0

    goto :goto_b

    :goto_c
    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/NativeDate;->t(DDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->A(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide v0

    if-eqz v7, :cond_c

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->K(D)D

    move-result-wide v0

    :cond_c
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Q(D[Ljava/lang/Object;I)D
    .locals 22

    move-object/from16 v0, p2

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v8, v6

    goto :goto_0

    :pswitch_1
    move v8, v7

    :goto_0
    move v9, v5

    goto :goto_4

    :pswitch_2
    move v8, v6

    goto :goto_1

    :pswitch_3
    move v8, v7

    :goto_1
    move v9, v4

    goto :goto_4

    :pswitch_4
    move v8, v6

    goto :goto_2

    :pswitch_5
    move v8, v7

    :goto_2
    move v9, v1

    goto :goto_4

    :pswitch_6
    move v8, v6

    goto :goto_3

    :pswitch_7
    move v8, v7

    :goto_3
    move v9, v7

    :goto_4
    array-length v10, v0

    if-ge v10, v9, :cond_1

    array-length v10, v0

    goto :goto_5

    :cond_1
    move v10, v9

    :goto_5
    new-array v11, v5, [D

    move v12, v6

    move v13, v12

    :goto_6
    if-ge v12, v10, :cond_4

    aget-object v14, v0, v12

    invoke-static {v14}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_7

    :cond_2
    invoke-static {v14, v15}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v14

    aput-wide v14, v11, v12

    goto :goto_8

    :cond_3
    :goto_7
    move v13, v7

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_4
    if-nez v13, :cond_c

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_10

    :cond_5
    if-eqz v8, :cond_6

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    goto :goto_9

    :cond_6
    move-wide/from16 v2, p0

    :goto_9
    if-lt v9, v5, :cond_7

    if-lez v10, :cond_7

    aget-wide v5, v11, v6

    move-wide v14, v5

    move v6, v7

    goto :goto_a

    :cond_7
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->p(D)I

    move-result v0

    int-to-double v12, v0

    move-wide v14, v12

    :goto_a
    if-lt v9, v4, :cond_8

    if-ge v6, v10, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-wide v4, v11, v6

    move v6, v0

    :goto_b
    move-wide/from16 v16, v4

    goto :goto_c

    :cond_8
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->v(D)I

    move-result v0

    int-to-double v4, v0

    goto :goto_b

    :goto_c
    if-lt v9, v1, :cond_9

    if-ge v6, v10, :cond_9

    add-int/lit8 v0, v6, 0x1

    aget-wide v4, v11, v6

    move v6, v0

    move-wide/from16 v18, v4

    goto :goto_d

    :cond_9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->x(D)I

    move-result v0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    :goto_d
    if-lt v9, v7, :cond_a

    if-ge v6, v10, :cond_a

    aget-wide v0, v11, v6

    :goto_e
    move-wide/from16 v20, v0

    goto :goto_f

    :cond_a
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->R(D)I

    move-result v0

    int-to-double v0, v0

    goto :goto_e

    :goto_f
    invoke-static/range {v14 .. v21}, Lorg/mozilla/javascript/NativeDate;->u(DDDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->c(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide v0

    if-eqz v8, :cond_b

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->K(D)D

    move-result-wide v0

    :cond_b
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide v0

    return-wide v0

    :cond_c
    :goto_10
    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1f
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

.method public static R(D)I
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static S()D
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static T(Ljava/lang/String;)D
    .locals 35

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v1, v1, [I

    const/16 v2, 0x7b2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v5, 0x3

    aput v3, v1, v5

    const/4 v6, 0x4

    aput v3, v1, v6

    const/4 v7, 0x5

    aput v3, v1, v7

    const/4 v8, 0x6

    aput v3, v1, v8

    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v1, v9

    const/16 v11, 0x8

    aput v10, v1, v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x54

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    if-eqz v12, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v14, :cond_1

    if-ne v4, v15, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v13, :cond_3

    move v4, v2

    move/from16 v16, v4

    move/from16 v18, v16

    move v2, v5

    :goto_0
    move/from16 v17, v6

    goto :goto_3

    :cond_1
    :goto_1
    if-ne v4, v15, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    move/from16 v16, v2

    move/from16 v18, v16

    move v2, v3

    move/from16 v17, v8

    goto :goto_3

    :cond_3
    move v4, v2

    move/from16 v18, v4

    move v2, v3

    move/from16 v16, v2

    goto :goto_0

    :goto_3
    if-eq v2, v10, :cond_1a

    if-nez v2, :cond_4

    move/from16 v19, v17

    goto :goto_4

    :cond_4
    if-ne v2, v8, :cond_5

    move/from16 v19, v5

    goto :goto_4

    :cond_5
    const/16 v19, 0x2

    :goto_4
    add-int v10, v16, v19

    if-le v10, v12, :cond_7

    :goto_5
    move/from16 v13, v16

    :cond_6
    :goto_6
    const/4 v0, -0x1

    const/4 v2, -0x1

    goto/16 :goto_12

    :cond_7
    move/from16 v13, v16

    move/from16 v16, v3

    :goto_7
    if-ge v13, v10, :cond_9

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x30

    if-lt v15, v14, :cond_6

    const/16 v14, 0x39

    if-le v15, v14, :cond_8

    goto :goto_6

    :cond_8
    mul-int/lit8 v16, v16, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int v16, v16, v15

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_7

    :cond_9
    aput v16, v1, v2

    if-ne v13, v12, :cond_b

    if-eq v2, v5, :cond_a

    if-eq v2, v9, :cond_a

    goto :goto_8

    :cond_a
    const/4 v2, -0x1

    :goto_8
    const/4 v0, -0x1

    goto/16 :goto_12

    :cond_b
    add-int/lit8 v16, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x5a

    if-ne v10, v14, :cond_d

    aput v3, v1, v9

    aput v3, v1, v11

    if-eq v2, v6, :cond_c

    if-eq v2, v7, :cond_c

    if-eq v2, v8, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v13, v16

    goto :goto_8

    :cond_d
    const/16 v14, 0x3a

    packed-switch v2, :pswitch_data_0

    :goto_9
    const/16 v13, 0x2b

    :goto_a
    const/16 v14, 0x54

    :goto_b
    const/16 v15, 0x2d

    goto/16 :goto_10

    :pswitch_0
    const/4 v2, -0x1

    goto :goto_9

    :pswitch_1
    if-eq v10, v14, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v13, v16

    :goto_c
    move v2, v11

    move/from16 v16, v13

    goto :goto_9

    :pswitch_2
    const/16 v13, 0x2b

    const/16 v2, 0x2d

    if-eq v10, v13, :cond_10

    if-ne v10, v2, :cond_f

    goto :goto_d

    :cond_f
    const/4 v14, -0x1

    goto :goto_e

    :cond_10
    :goto_d
    move v14, v9

    :goto_e
    move v15, v2

    move v2, v14

    const/16 v14, 0x54

    goto :goto_10

    :pswitch_3
    const/16 v2, 0x2d

    const/16 v13, 0x2b

    const/16 v14, 0x2e

    if-ne v10, v14, :cond_11

    move v14, v8

    goto :goto_e

    :cond_11
    if-eq v10, v13, :cond_10

    if-ne v10, v2, :cond_f

    goto :goto_d

    :pswitch_4
    const/16 v2, 0x2d

    const/16 v13, 0x2b

    if-ne v10, v14, :cond_12

    move v2, v7

    goto :goto_a

    :cond_12
    if-eq v10, v13, :cond_14

    if-ne v10, v2, :cond_13

    goto :goto_f

    :cond_13
    const/4 v2, -0x1

    goto :goto_a

    :cond_14
    :goto_f
    move v2, v9

    goto :goto_a

    :pswitch_5
    const/16 v13, 0x2b

    if-ne v10, v14, :cond_13

    move v2, v6

    goto :goto_a

    :pswitch_6
    const/16 v13, 0x2b

    const/16 v14, 0x54

    if-ne v10, v14, :cond_15

    move v2, v5

    goto :goto_b

    :cond_15
    const/4 v2, -0x1

    goto :goto_b

    :pswitch_7
    const/16 v13, 0x2b

    const/16 v14, 0x54

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    if-ne v10, v14, :cond_17

    move v2, v5

    goto :goto_10

    :cond_17
    const/4 v2, -0x1

    :goto_10
    if-ne v2, v9, :cond_19

    if-ne v10, v15, :cond_18

    const/4 v10, -0x1

    goto :goto_11

    :cond_18
    const/4 v10, 0x1

    :goto_11
    move/from16 v18, v10

    :cond_19
    const/4 v10, -0x1

    move/from16 v34, v14

    move v14, v13

    move/from16 v13, v34

    goto/16 :goto_3

    :cond_1a
    move v0, v10

    move/from16 v13, v16

    :goto_12
    if-eq v2, v0, :cond_20

    if-eq v13, v12, :cond_1b

    goto/16 :goto_14

    :cond_1b
    aget v0, v1, v3

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v10, 0x2

    aget v10, v1, v10

    aget v5, v1, v5

    aget v6, v1, v6

    aget v7, v1, v7

    aget v8, v1, v8

    aget v9, v1, v9

    aget v1, v1, v11

    const v11, 0x435e7

    if-gt v0, v11, :cond_20

    if-lt v3, v2, :cond_20

    const/16 v11, 0xc

    if-gt v3, v11, :cond_20

    if-lt v10, v2, :cond_20

    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeDate;->m(II)I

    move-result v2

    if-gt v10, v2, :cond_20

    const/16 v2, 0x18

    if-gt v5, v2, :cond_20

    if-ne v5, v2, :cond_1c

    if-gtz v6, :cond_20

    if-gtz v7, :cond_20

    if-gtz v8, :cond_20

    :cond_1c
    const/16 v2, 0x3b

    if-gt v6, v2, :cond_20

    if-gt v7, v2, :cond_20

    const/16 v11, 0x17

    if-gt v9, v11, :cond_20

    if-le v1, v2, :cond_1d

    goto :goto_14

    :cond_1d
    mul-int/2addr v0, v4

    int-to-double v11, v0

    const/4 v0, 0x1

    sub-int/2addr v3, v0

    int-to-double v2, v3

    int-to-double v13, v10

    int-to-double v4, v5

    move/from16 p0, v1

    int-to-double v0, v6

    int-to-double v6, v7

    move v10, v9

    int-to-double v8, v8

    move-wide/from16 v20, v11

    move-wide/from16 v22, v2

    move-wide/from16 v24, v13

    move-wide/from16 v26, v4

    move-wide/from16 v28, v0

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    invoke-static/range {v20 .. v33}, Lorg/mozilla/javascript/NativeDate;->I(DDDDDDD)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne v10, v2, :cond_1e

    goto :goto_13

    :cond_1e
    mul-int/lit8 v9, v10, 0x3c

    add-int v9, v9, p0

    int-to-double v2, v9

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    move/from16 v4, v18

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    :goto_13
    const-wide v2, -0x3cc14df73d240000L    # -8.64E15

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_20

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1f

    goto :goto_14

    :cond_1f
    return-wide v0

    :cond_20
    :goto_14
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
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

.method public static U(DI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    sget-object p2, Lorg/mozilla/javascript/NativeDate;->g:Ljava/text/DateFormat;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->h:Ljava/text/DateFormat;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->f:Ljava/text/DateFormat;

    :goto_0
    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(D)I
    .locals 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->c(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->k(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p1, p0, -0x3b

    if-gez p1, :cond_1

    const/16 v0, -0x1c

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1e

    :goto_0
    return p0

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    add-int/lit8 p1, p0, -0x3c

    :cond_3
    div-int/lit8 p0, p1, 0x1e

    const/16 v0, 0x1e

    const/16 v1, 0x1f

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    add-int/lit16 p1, p1, -0x112

    return p1

    :pswitch_1
    const/16 v1, 0x113

    goto :goto_2

    :pswitch_2
    const/16 p0, 0xf5

    :goto_1
    move v0, v1

    move v1, p0

    goto :goto_2

    :pswitch_3
    const/16 v1, 0xd6

    goto :goto_2

    :pswitch_4
    const/16 p0, 0xb8

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x99

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x7a

    goto :goto_2

    :pswitch_7
    const/16 p0, 0x5c

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x3d

    goto :goto_2

    :pswitch_9
    move v0, v1

    :goto_2
    sub-int/2addr p1, v1

    if-gez p1, :cond_4

    add-int/2addr p1, v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_a
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static c(D)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static f(II)D
    .locals 3

    mul-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-lt p0, v1, :cond_0

    div-int/lit8 v1, p0, 0x2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    if-lt p0, v2, :cond_1

    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/2addr v0, p0

    :goto_1
    if-lt p0, v2, :cond_2

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    int-to-double p0, v0

    return-wide p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public static k(D)D
    .locals 6

    const-wide v0, 0x409ec80000000000L    # 1970.0

    sub-double v0, p0, v0

    const-wide v2, 0x4076d00000000000L    # 365.0

    mul-double/2addr v0, v2

    const-wide v2, 0x409ec40000000000L    # 1969.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x409db40000000000L    # 1901.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4099040000000000L    # 1601.0

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static l(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/NativeDate;->o(I)I

    move-result v2

    int-to-double v3, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result v2

    int-to-double v5, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result v2

    int-to-double v7, v2

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/NativeDate;->t(DDD)D

    move-result-wide v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->A(D)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide p0

    :cond_0
    new-instance v2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/mozilla/javascript/NativeDate;->c:Ljava/util/TimeZone;

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x414b774000000000L    # 3600000.0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public static m(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x8

    if-lt p1, p0, :cond_2

    and-int/lit8 p0, p1, 0x1

    rsub-int/lit8 p0, p0, 0x1f

    goto :goto_1

    :cond_2
    and-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x1e

    :goto_1
    return p0
.end method

.method public static n(D)D
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    double-to-int p0, p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x4076e00000000000L    # 366.0

    goto :goto_0

    :cond_1
    const-wide p0, 0x4076d00000000000L    # 365.0

    :goto_0
    return-wide p0

    :cond_2
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static o(I)I
    .locals 2

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->k(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x7

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result p0

    if-eqz p0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x7b4

    return p0

    :pswitch_1
    const/16 p0, 0x7c4

    return p0

    :pswitch_2
    const/16 p0, 0x7b8

    return p0

    :pswitch_3
    const/16 p0, 0x7c8

    return p0

    :pswitch_4
    const/16 p0, 0x7bc

    return p0

    :pswitch_5
    const/16 p0, 0x7cc

    return p0

    :pswitch_6
    const/16 p0, 0x7c0

    return p0

    :cond_1
    packed-switch v0, :pswitch_data_1

    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_7
    const/16 p0, 0x7b9

    return p0

    :pswitch_8
    const/16 p0, 0x7b3

    return p0

    :pswitch_9
    const/16 p0, 0x7bd

    return p0

    :pswitch_a
    const/16 p0, 0x7c2

    return p0

    :pswitch_b
    const/16 p0, 0x7c1

    return p0

    :pswitch_c
    const/16 p0, 0x7b5

    return p0

    :pswitch_d
    const/16 p0, 0x7ba

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static p(D)I
    .locals 4

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static q(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(D)D
    .locals 2

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->d:D

    add-double/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->l(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static s(DD)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr p0, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static t(DDD)D
    .locals 4

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr p0, v2

    rem-double/2addr p2, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_0

    add-double/2addr p2, v0

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->z(D)D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, p2

    double-to-int p0, p0

    invoke-static {p2, p0}, Lorg/mozilla/javascript/NativeDate;->f(II)D

    move-result-wide p0

    add-double/2addr v0, p0

    add-double/2addr v0, p4

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static u(DDDD)D
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v0

    add-double/2addr p0, p2

    mul-double/2addr p0, v0

    add-double/2addr p0, p4

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method public static v(D)I
    .locals 4

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static w(D)I
    .locals 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->c(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->k(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p1, p0, -0x3b

    const/4 v1, 0x1

    if-gez p1, :cond_1

    const/16 p0, -0x1c

    if-ge p1, p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->q(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p0, -0x3c

    :cond_3
    div-int/lit8 p0, p1, 0x1e

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 v2, 0x113

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xf5

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xd6

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xb8

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x99

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x7a

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x5c

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3d

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x1f

    :goto_0
    if-lt p1, v2, :cond_4

    add-int/2addr p0, v0

    goto :goto_1

    :cond_4
    add-int/2addr p0, v1

    :goto_1
    return p0

    :pswitch_a
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static x(D)I
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static y(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static z(D)D
    .locals 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->k(D)D

    move-result-wide p0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_26

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_25

    const/4 v0, -0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/16 v2, 0x2f

    if-eq p0, v2, :cond_1c

    instance-of p3, p4, Lorg/mozilla/javascript/NativeDate;

    if-eqz p3, :cond_1b

    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    iget-wide v2, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    const-string p1, "Invalid Date"

    const-wide v4, 0x409db00000000000L    # 1900.0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->N(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "msg.invalid.date"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_3

    move-wide p2, v0

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide p2

    :goto_0
    cmpl-double p5, p0, v0

    if-ltz p5, :cond_4

    const-wide v0, 0x4058c00000000000L    # 99.0

    cmpg-double p5, p0, v0

    if-gtz p5, :cond_4

    add-double/2addr p0, v4

    :cond_4
    move-wide v0, p0

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result p0

    int-to-double v2, p0

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result p0

    int-to-double v4, p0

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->t(DDD)D

    move-result-wide p0

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->A(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->s(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->K(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide p0

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    iput-wide p0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {v2, v3, p5, p0}, Lorg/mozilla/javascript/NativeDate;->P(D[Ljava/lang/Object;I)D

    move-result-wide p0

    iput-wide p0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {v2, v3, p5, p0}, Lorg/mozilla/javascript/NativeDate;->Q(D[Ljava/lang/Object;I)D

    move-result-wide p0

    iput-wide p0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->y(D)D

    move-result-wide p0

    iput-wide p0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide p0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, p0

    :cond_6
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x1b

    if-ne p0, p1, :cond_7

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_7
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->R(D)I

    move-result p0

    int-to-double v2, p0

    :cond_8
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_a

    const/16 p1, 0x19

    if-ne p0, p1, :cond_9

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->x(D)I

    move-result p0

    int-to-double v2, p0

    :cond_a
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_c

    const/16 p1, 0x17

    if-ne p0, p1, :cond_b

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_b
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->v(D)I

    move-result p0

    int-to-double v2, p0

    :cond_c
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_e

    const/16 p1, 0x15

    if-ne p0, p1, :cond_d

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_d
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->p(D)I

    move-result p0

    int-to-double v2, p0

    :cond_e
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_10

    const/16 p1, 0x13

    if-ne p0, p1, :cond_f

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_f
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->B(D)I

    move-result p0

    int-to-double v2, p0

    :cond_10
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_12

    const/16 p1, 0x11

    if-ne p0, p1, :cond_11

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_11
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->b(D)I

    move-result p0

    int-to-double v2, p0

    :cond_12
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_14

    const/16 p1, 0xf

    if-ne p0, p1, :cond_13

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_13
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->w(D)I

    move-result p0

    int-to-double v2, p0

    :cond_14
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_17

    const/16 p1, 0xe

    if-eq p0, p1, :cond_15

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->r(D)D

    move-result-wide v2

    :cond_15
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->C(D)I

    move-result p1

    int-to-double v2, p1

    const/16 p1, 0xc

    if-ne p0, p1, :cond_17

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_16

    cmpg-double p0, v4, v2

    if-gtz p0, :cond_17

    const-wide p0, 0x409f400000000000L    # 2000.0

    cmpg-double p0, v2, p0

    if-gez p0, :cond_17

    :cond_16
    sub-double/2addr v2, v4

    :cond_17
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(new Date("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->O(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object p1

    :pswitch_11
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-static {v2, v3, p0}, Lorg/mozilla/javascript/NativeDate;->U(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    return-object p1

    :pswitch_12
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-static {v2, v3, p0}, Lorg/mozilla/javascript/NativeDate;->G(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p1

    :cond_1b
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1c
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of p4, p1, Ljava/lang/Number;

    if-eqz p4, :cond_1e

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    :cond_1e
    const-string p1, "toISOString"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    sget-object p5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p4, p5, :cond_21

    instance-of p5, p4, Lorg/mozilla/javascript/Callable;

    if-eqz p5, :cond_20

    check-cast p4, Lorg/mozilla/javascript/Callable;

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p4, p2, p3, p0, p1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-object p0

    :cond_1f
    const-string p1, "msg.toisostring.must.return.primitive"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_20
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.isnt.function.in"

    invoke-static {p3, p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_21
    const-string p2, "msg.function.not.found.in"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_22
    if-eqz p4, :cond_23

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->S()D

    move-result-wide p0

    const/4 p2, 0x2

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeDate;->G(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->M([Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->J(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->S()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7

    sget-object v6, Lorg/mozilla/javascript/NativeDate;->b:Ljava/lang/Object;

    const-string v4, "now"

    const/4 v5, 0x0

    const/4 v3, -0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "parse"

    const/4 v5, 0x1

    const/4 v3, -0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "UTC"

    const/4 v5, 0x7

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    const/16 v1, 0x9

    const/16 v2, 0x53

    const/4 v3, 0x6

    const/16 v4, 0x54

    const/16 v5, 0x44

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/16 v8, 0x4d

    const/16 v9, 0x74

    const/16 v10, 0x73

    const/16 v11, 0x67

    const/4 v12, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_0

    const-string p0, "getUTCMilliseconds"

    const/16 v0, 0x1c

    goto/16 :goto_2

    :cond_0
    if-ne p0, v10, :cond_1

    const-string p0, "setUTCMilliseconds"

    const/16 v0, 0x20

    goto/16 :goto_2

    :cond_1
    if-ne p0, v9, :cond_24

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v5, :cond_2

    const-string p0, "toLocaleDateString"

    const/4 v0, 0x7

    goto/16 :goto_2

    :cond_2
    if-ne p0, v4, :cond_24

    const-string p0, "toLocaleTimeString"

    move v0, v3

    goto/16 :goto_2

    :pswitch_2
    const-string p0, "getTimezoneOffset"

    const/16 v0, 0x1d

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_3

    const-string p0, "getMilliseconds"

    const/16 v0, 0x1b

    goto/16 :goto_2

    :cond_3
    if-ne p0, v10, :cond_24

    const-string p0, "setMilliseconds"

    const/16 v0, 0x1f

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_4

    const-string p0, "getUTCFullYear"

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_4
    if-ne p0, v10, :cond_5

    const-string p0, "setUTCFullYear"

    const/16 v0, 0x2c

    goto/16 :goto_2

    :cond_5
    if-ne p0, v9, :cond_24

    const-string p0, "toLocaleString"

    const/4 v0, 0x5

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v8, :cond_6

    const-string p0, "getUTCMinutes"

    const/16 v0, 0x18

    goto/16 :goto_2

    :cond_6
    if-ne p0, v2, :cond_24

    const-string p0, "getUTCSeconds"

    const/16 v0, 0x1a

    goto/16 :goto_2

    :cond_7
    if-ne p0, v10, :cond_24

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v8, :cond_8

    const-string p0, "setUTCMinutes"

    const/16 v0, 0x24

    goto/16 :goto_2

    :cond_8
    if-ne p0, v2, :cond_24

    const-string p0, "setUTCSeconds"

    const/16 v0, 0x22

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v5, :cond_9

    const-string p0, "toDateString"

    const/4 v0, 0x4

    goto/16 :goto_2

    :cond_9
    if-ne p0, v4, :cond_24

    const-string p0, "toTimeString"

    move v0, v7

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x46

    if-eq p0, v0, :cond_f

    if-eq p0, v8, :cond_e

    if-eq p0, v10, :cond_d

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v11, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v0, :cond_a

    const-string p0, "getUTCHours"

    const/16 v0, 0x16

    goto/16 :goto_2

    :cond_a
    if-ne p0, v9, :cond_24

    const-string p0, "getUTCMonth"

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_b
    if-ne p0, v10, :cond_24

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v0, :cond_c

    const-string p0, "setUTCHours"

    const/16 v0, 0x26

    goto/16 :goto_2

    :cond_c
    if-ne p0, v9, :cond_24

    const-string p0, "setUTCMonth"

    const/16 v0, 0x2a

    goto/16 :goto_2

    :pswitch_9
    const-string p0, "toUTCString"

    :goto_0
    move v0, v6

    goto/16 :goto_2

    :pswitch_a
    const-string p0, "toISOString"

    const/16 v0, 0x2e

    goto/16 :goto_2

    :cond_d
    const-string p0, "constructor"

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_e
    const-string p0, "toGMTString"

    goto :goto_0

    :cond_f
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_10

    const-string p0, "getFullYear"

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_10
    if-ne p0, v10, :cond_24

    const-string p0, "setFullYear"

    const/16 v0, 0x2b

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v8, :cond_12

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_11

    const-string p0, "getMinutes"

    const/16 v0, 0x17

    goto/16 :goto_2

    :cond_11
    if-ne p0, v10, :cond_24

    const-string p0, "setMinutes"

    const/16 v0, 0x23

    goto/16 :goto_2

    :cond_12
    if-ne p0, v2, :cond_14

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_13

    const-string p0, "getSeconds"

    const/16 v0, 0x19

    goto/16 :goto_2

    :cond_13
    if-ne p0, v10, :cond_24

    const-string p0, "setSeconds"

    const/16 v0, 0x21

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x55

    if-ne p0, v0, :cond_24

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_15

    const-string p0, "getUTCDate"

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_15
    if-ne p0, v10, :cond_24

    const-string p0, "setUTCDate"

    const/16 v0, 0x28

    goto/16 :goto_2

    :pswitch_c
    const-string p0, "getUTCDay"

    const/16 v0, 0x14

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x48

    if-eq p0, v2, :cond_1a

    if-eq p0, v8, :cond_18

    const/16 v2, 0x6f

    if-eq p0, v2, :cond_17

    if-eq p0, v9, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string p0, "toString"

    goto/16 :goto_2

    :cond_17
    const-string p0, "toSource"

    move v0, v1

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_19

    const-string p0, "getMonth"

    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_19
    if-ne p0, v10, :cond_24

    const-string p0, "setMonth"

    const/16 v0, 0x29

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_1b

    const-string p0, "getHours"

    const/16 v0, 0x15

    goto/16 :goto_2

    :cond_1b
    if-ne p0, v10, :cond_24

    const-string p0, "setHours"

    const/16 v0, 0x25

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v5, :cond_21

    if-eq p0, v4, :cond_1f

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x75

    if-eq p0, v0, :cond_1c

    goto :goto_1

    :cond_1c
    const-string p0, "valueOf"

    const/16 v0, 0xa

    goto :goto_2

    :cond_1d
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_1e

    const-string p0, "getYear"

    const/16 v0, 0xc

    goto :goto_2

    :cond_1e
    if-ne p0, v10, :cond_24

    const-string p0, "setYear"

    const/16 v0, 0x2d

    goto :goto_2

    :cond_1f
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_20

    const-string p0, "getTime"

    const/16 v0, 0xb

    goto :goto_2

    :cond_20
    if-ne p0, v10, :cond_24

    const-string p0, "setTime"

    const/16 v0, 0x1e

    goto :goto_2

    :cond_21
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_22

    const-string p0, "getDate"

    const/16 v0, 0x11

    goto :goto_2

    :cond_22
    if-ne p0, v10, :cond_24

    const-string p0, "setDate"

    const/16 v0, 0x27

    goto :goto_2

    :pswitch_f
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v11, :cond_23

    const-string p0, "getDay"

    const/16 v0, 0x13

    goto :goto_2

    :cond_23
    if-ne p0, v9, :cond_24

    const-string p0, "toJSON"

    const/16 v0, 0x2f

    goto :goto_2

    :cond_24
    :goto_1
    const/4 p0, 0x0

    move v0, v12

    :goto_2
    if-eqz p0, :cond_25

    if-eq p0, p1, :cond_25

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_3

    :cond_25
    move v12, v0

    :goto_3
    return v12

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "Date"

    return-object p0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getJSTimeValue()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method public initPrototypeId(I)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "toJSON"

    :goto_0
    move v4, v3

    goto/16 :goto_4

    :pswitch_1
    const-string v0, "toISOString"

    goto/16 :goto_4

    :pswitch_2
    const-string v0, "setYear"

    goto :goto_0

    :pswitch_3
    const-string v0, "setUTCFullYear"

    :goto_1
    move v4, v2

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "setFullYear"

    goto :goto_1

    :pswitch_5
    const-string v0, "setUTCMonth"

    :goto_2
    move v4, v1

    goto/16 :goto_4

    :pswitch_6
    const-string v0, "setMonth"

    goto :goto_2

    :pswitch_7
    const-string v0, "setUTCDate"

    goto :goto_0

    :pswitch_8
    const-string v0, "setDate"

    goto :goto_0

    :pswitch_9
    const-string v1, "setUTCHours"

    :goto_3
    move v4, v0

    move-object v0, v1

    goto/16 :goto_4

    :pswitch_a
    const-string v1, "setHours"

    goto :goto_3

    :pswitch_b
    const-string v0, "setUTCMinutes"

    goto :goto_1

    :pswitch_c
    const-string v0, "setMinutes"

    goto :goto_1

    :pswitch_d
    const-string v0, "setUTCSeconds"

    goto :goto_2

    :pswitch_e
    const-string v0, "setSeconds"

    goto :goto_2

    :pswitch_f
    const-string v0, "setUTCMilliseconds"

    goto :goto_0

    :pswitch_10
    const-string v0, "setMilliseconds"

    goto :goto_0

    :pswitch_11
    const-string v0, "setTime"

    goto :goto_0

    :pswitch_12
    const-string v0, "getTimezoneOffset"

    goto/16 :goto_4

    :pswitch_13
    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_4

    :pswitch_14
    const-string v0, "getMilliseconds"

    goto/16 :goto_4

    :pswitch_15
    const-string v0, "getUTCSeconds"

    goto/16 :goto_4

    :pswitch_16
    const-string v0, "getSeconds"

    goto :goto_4

    :pswitch_17
    const-string v0, "getUTCMinutes"

    goto :goto_4

    :pswitch_18
    const-string v0, "getMinutes"

    goto :goto_4

    :pswitch_19
    const-string v0, "getUTCHours"

    goto :goto_4

    :pswitch_1a
    const-string v0, "getHours"

    goto :goto_4

    :pswitch_1b
    const-string v0, "getUTCDay"

    goto :goto_4

    :pswitch_1c
    const-string v0, "getDay"

    goto :goto_4

    :pswitch_1d
    const-string v0, "getUTCDate"

    goto :goto_4

    :pswitch_1e
    const-string v0, "getDate"

    goto :goto_4

    :pswitch_1f
    const-string v0, "getUTCMonth"

    goto :goto_4

    :pswitch_20
    const-string v0, "getMonth"

    goto :goto_4

    :pswitch_21
    const-string v0, "getUTCFullYear"

    goto :goto_4

    :pswitch_22
    const-string v0, "getFullYear"

    goto :goto_4

    :pswitch_23
    const-string v0, "getYear"

    goto :goto_4

    :pswitch_24
    const-string v0, "getTime"

    goto :goto_4

    :pswitch_25
    const-string v0, "valueOf"

    goto :goto_4

    :pswitch_26
    const-string v0, "toSource"

    goto :goto_4

    :pswitch_27
    const-string v0, "toUTCString"

    goto :goto_4

    :pswitch_28
    const-string v0, "toLocaleDateString"

    goto :goto_4

    :pswitch_29
    const-string v0, "toLocaleTimeString"

    goto :goto_4

    :pswitch_2a
    const-string v0, "toLocaleString"

    goto :goto_4

    :pswitch_2b
    const-string v0, "toDateString"

    goto :goto_4

    :pswitch_2c
    const-string v0, "toTimeString"

    goto :goto_4

    :pswitch_2d
    const-string v0, "toString"

    goto :goto_4

    :pswitch_2e
    const/4 v0, 0x7

    const-string v1, "constructor"

    goto :goto_3

    :goto_4
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
