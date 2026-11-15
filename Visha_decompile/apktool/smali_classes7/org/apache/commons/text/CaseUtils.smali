.class public Lorg/apache/commons/text/CaseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs toCamelCase(Ljava/lang/String;Z[C)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    invoke-static {p2}, Lorg/apache/commons/text/CaseUtils;->toDelimiterSet([C)Ljava/util/Set;

    move-result-object p2

    const/4 v2, 0x0

    move v5, p1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v4, 0x1

    aput v6, v1, v4

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    move v4, v7

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    move v5, v2

    move v4, v6

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method private static toDelimiterSet([C)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x20

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v4, v2, :cond_1

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method
