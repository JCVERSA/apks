.class public Lorg/apache/commons/text/RandomStringGenerator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/RandomStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/Builder<",
        "Lorg/apache/commons/text/RandomStringGenerator;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = 0x0

.field public static final DEFAULT_MAXIMUM_CODE_POINT:I = 0x10ffff

.field public static final DEFAULT_MINIMUM_CODE_POINT:I


# instance fields
.field private characterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private maximumCodePoint:I

.field private minimumCodePoint:I

.field private random:Lorg/apache/commons/text/TextRandomProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    const v0, 0x10ffff

    iput v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/RandomStringGenerator$Builder;->build()Lorg/apache/commons/text/RandomStringGenerator;

    move-result-object p0

    return-object p0
.end method

.method public build()Lorg/apache/commons/text/RandomStringGenerator;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/commons/text/RandomStringGenerator;

    iget v1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    iget v2, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    iget-object v3, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    iget-object v4, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/apache/commons/text/TextRandomProvider;

    iget-object v5, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/apache/commons/text/RandomStringGenerator$1;)V

    return-object v7
.end method

.method public varargs filteredBy([Lorg/apache/commons/text/CharacterPredicate;)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs selectFrom([C)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    iget-object v3, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public usingRandom(Lorg/apache/commons/text/TextRandomProvider;)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/apache/commons/text/TextRandomProvider;

    return-object p0
.end method

.method public withinRange(II)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 10
    const-string v4, "Minimum code point %d is larger than maximum code point %d"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 11
    :goto_1
    const-string v3, "Minimum code point %d is negative"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    const v2, 0x10ffff

    if-gt p2, v2, :cond_2

    move v0, v1

    .line 12
    :cond_2
    const-string v1, "Value %d is larger than Character.MAX_CODE_POINT."

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 13
    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    .line 14
    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    return-object p0
.end method

.method public varargs withinRange([[C)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 3
    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const-string v5, "Each pair must contain minimum and maximum code point"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    aget-char v4, v3, v1

    .line 5
    aget-char v3, v3, v6

    if-gt v4, v3, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    .line 6
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 7
    const-string v7, "Minimum code point %d is larger than maximum code point %d"

    invoke-static {v6, v7, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-gt v4, v3, :cond_2

    .line 8
    iget-object v5, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method
