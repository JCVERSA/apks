.class public Lorg/apache/commons/text/WordUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lt p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "upper value cannot be less than -1"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ge p2, p1, :cond_2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    const-string v3, "upper value is less than lower value"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_4
    if-eq p2, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-static {p0, v3, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    if-ne p1, v2, :cond_7

    invoke-virtual {v0, p0, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq p2, p0, :cond_8

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9

    .line 2
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_0
    move v6, v3

    :goto_1
    if-ge v4, v0, :cond_3

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 8
    aput v7, v1, v5

    .line 9
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 11
    aput v6, v1, v5

    .line 12
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v6, v2

    move v5, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 13
    aput v7, v1, v5

    .line 14
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v8

    goto :goto_1

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Lorg/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\\b.*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method private static generateDelimiterSet([C)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    array-length v3, p0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    new-array p0, v0, [C

    const/16 v0, 0x20

    aput-char v0, p0, v2

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt([CI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 10

    .line 2
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    if-nez v0, :cond_1

    .line 4
    const-string p0, ""

    return-object p0

    .line 5
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_5

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-nez p1, :cond_2

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_4

    add-int/lit8 v7, v6, 0x1

    .line 10
    aput v8, v2, v6

    move v6, v7

    move v7, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v3

    .line 11
    :cond_4
    :goto_2
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4, v6}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static isDelimiter(C[C)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isDelimiter(I[C)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v6

    :goto_1
    move v2, v3

    goto :goto_3

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v6

    goto :goto_3

    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    goto :goto_1

    :goto_3
    add-int/lit8 v7, v5, 0x1

    aput v6, v1, v5

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v7

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9

    .line 2
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_0
    move v6, v3

    :goto_1
    if-ge v4, v0, :cond_3

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 8
    aput v7, v1, v5

    .line 9
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 11
    aput v6, v1, v5

    .line 12
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v6, v2

    move v5, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 13
    aput v7, v1, v5

    .line 14
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v8

    goto :goto_1

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    move p1, v0

    .line 4
    :cond_2
    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    const-string p4, " "

    .line 6
    :cond_3
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    move v4, v2

    :goto_1
    if-ge v3, v0, :cond_10

    add-int v5, v3, p1

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/32 v7, 0x7fffffff

    .line 9
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 10
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_5

    .line 13
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 15
    :cond_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int/2addr v6, v3

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    sub-int v7, v0, v3

    if-gt v7, p1, :cond_7

    goto/16 :goto_5

    .line 16
    :cond_7
    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 17
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int/2addr v6, v3

    goto :goto_3

    :cond_8
    if-lt v6, v3, :cond_9

    .line 18
    invoke-virtual {v1, p0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v3, v6

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_b

    if-nez v4, :cond_a

    add-int/lit8 v3, v3, -0x1

    :cond_a
    add-int v4, p1, v3

    .line 20
    invoke-virtual {v1, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    :cond_b
    add-int v5, v3, p1

    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 24
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v4, v6

    .line 25
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/2addr v5, v3

    add-int v6, v5, p1

    :cond_c
    if-ltz v6, :cond_e

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    .line 26
    :cond_d
    invoke-virtual {v1, p0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    if-nez v4, :cond_f

    if-eqz v3, :cond_f

    add-int/lit8 v3, v3, -0x1

    .line 28
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v3, v0

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    if-ge v3, v0, :cond_11

    add-int/lit8 v3, v3, -0x1

    .line 29
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p0, v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
