.class final Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;
.super Lorg/apache/commons/text/matcher/AbstractStringMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/matcher/AbstractStringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharArrayMatcher"
.end annotation


# instance fields
.field private final chars:[C

.field private final string:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/text/matcher/AbstractStringMatcher;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->string:Ljava/lang/String;

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->chars:[C

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;III)I
    .locals 3

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->size()I

    move-result p3

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    move p4, v1

    :goto_0
    if-ge p4, p3, :cond_2

    .line 4
    iget-object v0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->chars:[C

    aget-char v0, v0, p4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public isMatch([CIII)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->size()I

    move-result p3

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    move p4, v1

    :goto_0
    if-ge p4, p3, :cond_2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->chars:[C

    aget-char v0, v0, p4

    aget-char v2, p1, p2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->chars:[C

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->string:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
