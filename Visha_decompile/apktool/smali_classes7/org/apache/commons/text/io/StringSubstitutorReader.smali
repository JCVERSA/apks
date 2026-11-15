.class public Lorg/apache/commons/text/io/StringSubstitutorReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# static fields
.field private static final EOS:I = -0x1


# instance fields
.field private final buffer:Lorg/apache/commons/text/TextStringBuilder;

.field private eos:Z

.field private final prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private final read1CharBuffer:[C

.field private final stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

.field private toDrain:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lorg/apache/commons/text/StringSubstitutor;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {p1}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [C

    const/4 v0, 0x0

    aput-char v0, p1, v0

    iput-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->read1CharBuffer:[C

    new-instance p1, Lorg/apache/commons/text/StringSubstitutor;

    invoke-direct {p1, p2}, Lorg/apache/commons/text/StringSubstitutor;-><init>(Lorg/apache/commons/text/StringSubstitutor;)V

    iput-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    sget-object p1, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {p2}, Lorg/apache/commons/text/StringSubstitutor;->getEscapeChar()C

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/text/StringSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->andThen(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-void
.end method

.method private buffer(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    iget-object v1, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/text/TextStringBuilder;->readFrom(Ljava/io/Reader;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    return p1
.end method

.method private bufferOrDrainOnEos(I[CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer(I)I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drainOnEos(I[CII)I

    move-result p0

    return p0
.end method

.method private drain([CII)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3, p1, p2}, Lorg/apache/commons/text/TextStringBuilder;->drainChars(II[CI)I

    move-result p1

    iget p2, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    iget-object p2, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/text/TextStringBuilder;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    if-nez p2, :cond_1

    :cond_0
    iput v1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    :cond_1
    return p1
.end method

.method private drainOnEos(I[CII)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    return p1
.end method

.method private isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-interface {p1, p0, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;I)I

    move-result p0

    invoke-interface {p1}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDraining()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readCount(II)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result p0

    sub-int/2addr p0, p2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sub-int p0, p1, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->read1CharBuffer:[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-lt v0, v2, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->read1CharBuffer:[C

    aget-char p0, p0, v1

    return p0
.end method

.method public read([CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/text/TextStringBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-gtz p3, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isDraining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget v2, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result v2

    if-ne v2, p3, :cond_2

    return p3

    :cond_2
    add-int v3, p2, v2

    sub-int v2, p3, v2

    goto :goto_0

    :cond_3
    move v3, p2

    move v2, p3

    .line 6
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-interface {v4}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v4

    .line 7
    invoke-direct {p0, v4, v0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->readCount(II)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer(I)I

    .line 8
    iget-object v5, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v5}, Lorg/apache/commons/text/TextStringBuilder;->length()I

    move-result v5

    if-ge v5, v4, :cond_5

    if-ge v2, v4, :cond_5

    .line 9
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v3, p2

    .line 10
    iget-boolean p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    if-eqz p0, :cond_4

    if-gtz v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1

    .line 11
    :cond_5
    iget-boolean v5, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    if-eqz v5, :cond_7

    .line 12
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p3, v0}, Lorg/apache/commons/text/StringSubstitutor;->replaceIn(Lorg/apache/commons/text/TextStringBuilder;)Z

    .line 13
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result p3

    iput p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    .line 14
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v3, p2

    .line 15
    iget-boolean p0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    if-eqz p0, :cond_6

    if-gtz v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    return v1

    .line 16
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    invoke-virtual {v5}, Lorg/apache/commons/text/StringSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v5

    :cond_8
    if-lez v2, :cond_e

    .line 17
    invoke-direct {p0, v5, v0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    .line 18
    invoke-interface {v5}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v6

    goto :goto_3

    .line 19
    :cond_9
    iget-object v6, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-direct {p0, v6, v0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 20
    iget-object v6, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-interface {v6}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v6

    goto :goto_3

    .line 21
    :cond_a
    invoke-direct {p0, p1, v3, v7}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v2, v6

    .line 22
    iget-object v6, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v6}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v6

    if-ge v6, v4, :cond_8

    .line 23
    invoke-direct {p0, v4, p1, v3, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->bufferOrDrainOnEos(I[CII)I

    move-result v6

    .line 24
    iget-boolean v7, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    if-nez v7, :cond_b

    invoke-direct {p0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isDraining()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_b
    if-eq v6, v1, :cond_c

    add-int/2addr v3, v6

    :cond_c
    sub-int/2addr v3, p2

    if-lez v3, :cond_d

    move v1, v3

    :cond_d
    return v1

    :cond_e
    move v6, v0

    move v7, v6

    :goto_3
    if-gtz v2, :cond_f

    return p3

    .line 25
    :cond_f
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    invoke-virtual {p3}, Lorg/apache/commons/text/StringSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p3

    .line 26
    invoke-interface {p3}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 27
    invoke-direct {p0, v4, v6}, Lorg/apache/commons/text/io/StringSubstitutorReader;->readCount(II)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer(I)I

    .line 28
    iget-boolean v8, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->eos:Z

    if-eqz v8, :cond_10

    .line 29
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    iget-object v0, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p3, v0}, Lorg/apache/commons/text/StringSubstitutor;->replaceIn(Lorg/apache/commons/text/TextStringBuilder;)Z

    .line 30
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result p3

    iput p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    .line 31
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v3, p2

    return v3

    .line 32
    :cond_10
    invoke-direct {p0, p3, v6}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z

    move-result v8

    if-eqz v8, :cond_11

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, 0x1

    if-nez v7, :cond_14

    goto :goto_6

    .line 33
    :cond_11
    invoke-direct {p0, v5, v6}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z

    move-result v8

    if-eqz v8, :cond_12

    add-int/lit8 v7, v7, 0x1

    .line 34
    invoke-interface {v5}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v8

    :goto_4
    add-int/2addr v6, v8

    goto :goto_5

    .line 35
    :cond_12
    iget-object v8, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-direct {p0, v8, v6}, Lorg/apache/commons/text/io/StringSubstitutorReader;->isBufferMatchAt(Lorg/apache/commons/text/matcher/StringMatcher;I)Z

    move-result v8

    if-eqz v8, :cond_13

    add-int/lit8 v7, v7, 0x1

    .line 36
    iget-object v8, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->prefixEscapeMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    invoke-interface {v8}, Lorg/apache/commons/text/matcher/StringMatcher;->size()I

    move-result v8

    goto :goto_4

    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 37
    :cond_14
    :goto_5
    invoke-direct {p0, v4, v6}, Lorg/apache/commons/text/io/StringSubstitutorReader;->readCount(II)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer(I)I

    move-result v8

    if-ne v8, v1, :cond_10

    .line 38
    iget-object v8, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v8}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v8

    if-lt v6, v8, :cond_10

    :goto_6
    add-int/lit8 p3, v6, 0x1

    .line 39
    iget-object v1, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    iget-object v4, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->stringSubstitutor:Lorg/apache/commons/text/StringSubstitutor;

    iget-object v5, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {v5}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v6

    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v4, v5, v0, p3}, Lorg/apache/commons/text/StringSubstitutor;->replaceIn(Lorg/apache/commons/text/TextStringBuilder;II)Z

    .line 41
    iget-object p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->buffer:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result p3

    sub-int/2addr p3, v1

    .line 42
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43
    iput p3, p0, Lorg/apache/commons/text/io/StringSubstitutorReader;->toDrain:I

    .line 44
    invoke-direct {p0, p1, v3, v0}, Lorg/apache/commons/text/io/StringSubstitutorReader;->drain([CII)I

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    return v3
.end method
