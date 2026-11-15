.class public Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Lorg/apache/commons/text/similarity/LevenshteinResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;


# instance fields
.field private final threshold:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>()V

    sput-object v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Threshold must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    return-void
.end method

.method private static findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .locals 15

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    if-ltz v0, :cond_f

    if-ltz v1, :cond_f

    const/4 v6, -0x1

    if-nez v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    aget-object v7, p2, v0

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    :goto_1
    if-nez v0, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v0, -0x1

    aget-object v8, p2, v8

    aget v8, v8, v1

    :goto_2
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v9, v0, -0x1

    aget-object v9, p2, v9

    add-int/lit8 v10, v1, -0x1

    aget v9, v9, v10

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    if-ne v7, v6, :cond_4

    if-ne v8, v6, :cond_4

    if-ne v9, v6, :cond_4

    goto/16 :goto_7

    :cond_4
    aget-object v10, p2, v0

    aget v10, v10, v1

    if-lez v1, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v11, v1, -0x1

    move-object v12, p0

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/lit8 v13, v0, -0x1

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v11, v13, :cond_6

    :goto_4
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    move-object v12, p0

    move-object/from16 v14, p1

    :cond_6
    add-int/lit8 v11, v10, -0x1

    const/4 v13, 0x1

    if-ne v11, v7, :cond_7

    if-gt v10, v9, :cond_7

    if-le v10, v8, :cond_8

    :cond_7
    if-ne v9, v6, :cond_b

    if-ne v8, v6, :cond_b

    :cond_8
    add-int/lit8 v1, v1, -0x1

    if-eqz p3, :cond_a

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v6, v13

    move v13, v2

    goto :goto_6

    :cond_b
    if-ne v11, v8, :cond_c

    if-gt v10, v9, :cond_c

    if-le v10, v7, :cond_d

    :cond_c
    if-ne v9, v6, :cond_e

    if-ne v7, v6, :cond_e

    :cond_d
    add-int/lit8 v0, v0, -0x1

    if-eqz p3, :cond_9

    goto :goto_5

    :cond_e
    move v6, v2

    move v13, v6

    :goto_6
    if-nez v13, :cond_0

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    :goto_7
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    add-int v1, v4, v3

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-object v0
.end method

.method private static limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .locals 17

    move/from16 v0, p2

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-ltz v0, :cond_f

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-gt v2, v0, :cond_0

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    :cond_1
    if-nez v2, :cond_3

    if-gt v1, v0, :cond_2

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_1
    return-object v0

    :cond_3
    const/4 v5, 0x1

    if-le v1, v2, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v7, v1

    move v6, v2

    move v8, v5

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_2

    :cond_4
    move v6, v1

    move v7, v2

    move v8, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :goto_2
    add-int/lit8 v9, v6, 0x1

    new-array v10, v9, [I

    new-array v11, v9, [I

    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [I

    aput v9, v13, v5

    aput v12, v13, v4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    move v13, v4

    :goto_3
    if-gt v13, v6, :cond_5

    aget-object v14, v12, v4

    aput v13, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    move v13, v4

    :goto_4
    if-gt v13, v7, :cond_6

    aget-object v14, v12, v13

    aput v13, v14, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v13, v5

    move v14, v4

    :goto_5
    if-ge v14, v13, :cond_7

    aput v14, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    const v14, 0x7fffffff

    invoke-static {v10, v13, v9, v14}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {v11, v14}, Ljava/util/Arrays;->fill([II)V

    move v9, v5

    :goto_6
    if-gt v9, v7, :cond_d

    add-int/lit8 v13, v9, -0x1

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput v9, v11, v4

    sub-int v15, v9, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v5, v14, v0

    if-le v9, v5, :cond_8

    move v5, v6

    goto :goto_7

    :cond_8
    add-int v5, v9, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_7
    if-le v15, v5, :cond_9

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_9
    const/4 v4, 0x1

    if-le v15, v4, :cond_a

    add-int/lit8 v4, v15, -0x1

    aput v14, v11, v4

    :cond_a
    :goto_8
    if-gt v15, v5, :cond_c

    add-int/lit8 v4, v15, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_b

    aget v4, v10, v4

    aput v4, v11, v15

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    aget v14, v11, v4

    aget v3, v10, v15

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v4, v10, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v11, v15

    :goto_9
    aget-object v3, v12, v9

    aget v14, v11, v15

    aput v14, v3, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v14, 0x7fffffff

    goto :goto_8

    :cond_c
    const/4 v4, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v14, 0x7fffffff

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    goto :goto_6

    :cond_d
    aget v3, v10, v6

    if-gt v3, v0, :cond_e

    invoke-static {v1, v2, v12, v8}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .locals 18

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v1

    :cond_1
    const/4 v3, 0x1

    if-le v0, v1, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v5, v0

    move v4, v1

    move v6, v3

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    move v4, v0

    move v5, v1

    move v6, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    new-array v8, v7, [I

    new-array v9, v7, [I

    add-int/lit8 v10, v5, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v7, v11, v3

    aput v10, v11, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    move v10, v2

    :goto_1
    if-gt v10, v4, :cond_3

    aget-object v11, v7, v2

    aput v10, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v2

    :goto_2
    if-gt v10, v5, :cond_4

    aget-object v11, v7, v10

    aput v10, v11, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v10, v2

    :goto_3
    if-gt v10, v4, :cond_5

    aput v10, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_4
    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    if-gt v10, v5, :cond_8

    add-int/lit8 v11, v10, -0x1

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput v10, v8, v2

    move v12, v3

    :goto_5
    if-gt v12, v4, :cond_7

    add-int/lit8 v13, v12, -0x1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move v14, v3

    :goto_6
    aget v15, v8, v13

    add-int/2addr v15, v3

    aget v16, v9, v12

    add-int/lit8 v2, v16, 0x1

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v13, v9, v13

    add-int/2addr v13, v14

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v8, v12

    aget-object v13, v7, v10

    aput v2, v13, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-static {v0, v1, v7, v6}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p0

    return-object p0
.end method

.method public getThreshold()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    return-object p0
.end method
