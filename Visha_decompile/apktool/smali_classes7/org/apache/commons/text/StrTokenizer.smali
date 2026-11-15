.class public Lorg/apache/commons/text/StrTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->commaMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->trimMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StrTokenizer;

    new-instance v0, Lorg/apache/commons/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->tabMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->trimMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->splitMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 3
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 4
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 5
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/text/StrMatcher;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->splitMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 28
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 29
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 30
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/text/StrMatcher;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 37
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/text/StrMatcher;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/text/StrMatcher;)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->splitMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 10
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 11
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

    .line 12
    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/text/StrMatcher;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    :goto_0
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StrTokenizer;-><init>([CC)V

    .line 19
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 21
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/text/StrMatcher;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StrTokenizer;-><init>([C)V

    .line 23
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/text/StrMatcher;Lorg/apache/commons/text/StrMatcher;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StrTokenizer;-><init>([CLorg/apache/commons/text/StrMatcher;)V

    .line 25
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkTokenized()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private static getCSVClone()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 4
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrTokenizer;->reset([C)Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 4
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/commons/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/text/StrTokenizer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StrTokenizer;->reset([C)Lorg/apache/commons/text/StrTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p5, :cond_2

    add-int v1, p2, v0

    if-ge v1, p3, :cond_1

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private readNextToken([CIILorg/apache/commons/text/StrBuilder;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, ""

    if-lt p2, p3, :cond_2

    invoke-direct {p0, p5, v0}, Lorg/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, p5, v0}, Lorg/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int/2addr p2, v1

    return p2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v7

    if-lez v7, :cond_4

    add-int v2, p2, v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result p0

    return p0

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result p0

    return p0
.end method

.method private readWithQuotes([CIILorg/apache/commons/text/StrBuilder;Ljava/util/List;II)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/StrBuilder;->clear()Lorg/apache/commons/text/StrBuilder;

    if-lez v12, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    move v5, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v5, v9, :cond_7

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p3

    move v13, v4

    move/from16 v4, p6

    move v14, v5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int v16, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v7, v14, v12}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    mul-int/lit8 v0, v12, 0x2

    add-int v5, v14, v0

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/StrBuilder;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v13

    move/from16 v5, v16

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    move v13, v4

    move v14, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v13}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v11, v1}, Lorg/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v5, v14, v0

    return v5

    :cond_3
    if-lez v12, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int v5, v14, v12

    move v4, v13

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_5

    :goto_2
    add-int v5, v14, v0

    move v4, v13

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v10, v7, v14, v0}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v14, 0x1

    aget-char v0, v7, v14

    invoke-virtual {v10, v0}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/StrBuilder;->size()I

    move-result v4

    goto/16 :goto_1

    :cond_7
    move v13, v4

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v13}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "add() is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cloneReset()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/StrTokenizer;

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->reset()Lorg/apache/commons/text/StrTokenizer;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;->checkTokenized()V

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;->checkTokenized()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;->checkTokenized()V

    iget p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    return p0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object p0, v0, v1

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    return p0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object p0, v0, v1

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is unsupported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokenPos:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->reset()Lorg/apache/commons/text/StrTokenizer;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    :goto_0
    return-object p0
.end method

.method public reset([C)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->reset()Lorg/apache/commons/text/StrTokenizer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->chars:[C

    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "set() is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    move-result-object p0

    return-object p0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/commons/text/StrMatcher;->noneMatcher()Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/text/StrMatcher;

    :goto_0
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    move-result-object p0

    return-object p0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StrTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;

    move-result-object p0

    return-object p0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;->checkTokenized()V

    iget-object p0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "StrTokenizer[not tokenized yet]"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tokenize([CII)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {v6}, Lorg/apache/commons/text/StrBuilder;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_1
    :goto_0
    if-ltz v2, :cond_2

    if-ge v2, p3, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_1

    const-string p2, ""

    invoke-direct {p0, v7, p2}, Lorg/apache/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v7

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
