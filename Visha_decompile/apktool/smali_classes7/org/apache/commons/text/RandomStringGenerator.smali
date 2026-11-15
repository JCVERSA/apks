.class public final Lorg/apache/commons/text/RandomStringGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/RandomStringGenerator$Builder;
    }
.end annotation


# instance fields
.field private final characterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final maximumCodePoint:I

.field private final minimumCodePoint:I

.field private final random:Lorg/apache/commons/text/TextRandomProvider;


# direct methods
.method private constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;",
            "Lorg/apache/commons/text/TextRandomProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    .line 4
    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    .line 5
    iput-object p3, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    .line 6
    iput-object p4, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    .line 7
    iput-object p5, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/apache/commons/text/RandomStringGenerator$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V

    return-void
.end method

.method private generateRandomNumber(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    if-eqz p0, :cond_0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-interface {p0, p2}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p0

    return p0
.end method

.method private generateRandomNumber(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget-object p0, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, v0}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public generate(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    const-string p0, ""

    return-object p0

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p1

    .line 2
    const-string v3, "Length %d is smaller than zero."

    invoke-static {v0, v3, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(Ljava/util/List;)I

    move-result p1

    goto :goto_1

    .line 6
    :cond_3
    iget p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    iget v3, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result p1

    .line 7
    :goto_1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0x12

    if-eq v3, v4, :cond_6

    const/16 v4, 0x13

    if-eq v3, v4, :cond_6

    .line 8
    iget-object v3, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    if-eqz v3, :cond_5

    .line 9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/text/CharacterPredicate;

    .line 10
    invoke-interface {v4, p1}, Lorg/apache/commons/text/CharacterPredicate;->test(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    :cond_6
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generate(II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 13
    :goto_0
    const-string v3, "Minimum length %d is smaller than zero."

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    if-gt p1, p2, :cond_1

    move v0, v1

    .line 14
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 15
    const-string v2, "Maximum length %d is smaller than minimum length %d."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->generate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
