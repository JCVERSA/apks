.class public Lorg/apache/commons/text/similarity/LongestCommonSubsequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static algorithmB(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    aput v3, v4, v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move v4, v5

    :goto_0
    if-gt v4, v0, :cond_2

    aget-object v6, v3, v2

    aget-object v7, v3, v5

    aput-object v7, v3, v2

    aput-object v6, v3, v5

    move v6, v5

    :goto_1
    if-gt v6, v1, :cond_1

    add-int/lit8 v7, v4, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v7, v9, :cond_0

    aget-object v7, v3, v5

    aget-object v9, v3, v2

    aget v8, v9, v8

    add-int/2addr v8, v5

    aput v8, v7, v6

    goto :goto_2

    :cond_0
    aget-object v7, v3, v5

    aget v8, v7, v8

    aget-object v9, v3, v2

    aget v9, v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object p0, v3, v5

    return-object p0
.end method

.method private static algorithmC(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_4

    if-le v0, v4, :cond_4

    div-int/lit8 v4, v0, 0x2

    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p0, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v5, p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmB(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->reverse(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->reverse(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmB(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v4

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_1
    if-gt v6, v1, :cond_3

    aget v9, v0, v6

    sub-int v10, v1, v6

    aget v10, v4, v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    move v7, v6

    move v8, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmC(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmC(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static reverse(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    .line 4
    invoke-static {p2, p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmB(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object p1

    aget p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmB(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object p0

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inputs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public logestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    invoke-static {p2, p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmC(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->algorithmC(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inputs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longestCommonSubstringLengthArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[[I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v1, 0x0

    aput p0, v2, v1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-nez v2, :cond_0

    aget-object v4, p0, v2

    aput v1, v4, v3

    :cond_0
    if-nez v3, :cond_1

    aget-object v4, p0, v2

    aput v1, v4, v3

    :cond_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    add-int/lit8 v5, v3, 0x1

    aget-object v6, p0, v2

    aget v6, v6, v3

    add-int/2addr v6, v0

    aput v6, v4, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v3

    aget-object v7, p0, v2

    aget v7, v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method
