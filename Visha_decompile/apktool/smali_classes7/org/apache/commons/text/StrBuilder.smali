.class public Lorg/apache/commons/text/StrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/text/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    .line 3
    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 5
    new-array p1, v0, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;
    .locals 9

    if-eqz p1, :cond_3

    .line 6
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v7, p3

    :goto_1
    if-ge v7, p4, :cond_3

    if-eqz p5, :cond_3

    .line 8
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    .line 9
    invoke-virtual {p1, v1, v7, p3, p4}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    if-lez v8, :cond_2

    add-int v3, v7, v8

    move-object v1, p0

    move v2, v7

    move v4, v8

    move-object v5, p2

    move v6, v0

    .line 10
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int/2addr p4, v8

    add-int/2addr p4, v0

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    if-lez p5, :cond_2

    add-int/lit8 p5, p5, -0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    if-eq p5, p3, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 3
    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p5

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {p3, p2, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_0
    if-lez p5, :cond_1

    const/4 p2, 0x0

    .line 5
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, p2, p5, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(C)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 17
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 63
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(F)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(I)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(J)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 54
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 55
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 56
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 57
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    .line 59
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/nio/CharBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 60
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 89
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 91
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_3

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 96
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 97
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 98
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "length must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "startIndex must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 101
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 105
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 107
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_3

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 112
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 113
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 114
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "length must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "startIndex must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 120
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 122
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_3

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 127
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 128
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 129
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "length must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "startIndex must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 37
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "length must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "startIndex must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 74
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 75
    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_3

    .line 78
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 79
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 81
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 82
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/apache/commons/text/StrBuilder;->getChars(II[CI)V

    .line 83
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "length must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "startIndex must be valid"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Z)Lorg/apache/commons/text/StrBuilder;
    .locals 5

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 5
    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x74

    aput-char v3, p1, v1

    add-int/lit8 v3, v1, 0x2

    .line 6
    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x72

    aput-char v4, p1, v2

    add-int/lit8 v2, v1, 0x3

    .line 7
    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x75

    aput-char v4, p1, v3

    add-int/lit8 v1, v1, 0x4

    .line 8
    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char v0, p1, v2

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 10
    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x66

    aput-char v3, p1, v1

    add-int/lit8 v3, v1, 0x2

    .line 11
    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x61

    aput-char v4, p1, v2

    add-int/lit8 v2, v1, 0x3

    .line 12
    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x6c

    aput-char v4, p1, v3

    add-int/lit8 v3, v1, 0x4

    .line 13
    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x73

    aput-char v4, p1, v2

    add-int/lit8 v1, v1, 0x5

    .line 14
    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char v0, p1, v3

    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 21
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/apache/commons/text/StrBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_3

    .line 25
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 26
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    .line 28
    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 29
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lfy9;

    invoke-direct {v0, p0}, Lfy9;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    if-lez p2, :cond_4

    .line 2
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_2

    sub-int p3, v0, p2

    .line 6
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, p3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v1, p2, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 7
    iget-object v4, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v0, p3, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 9
    :goto_2
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;
    .locals 5

    if-lez p2, :cond_4

    .line 2
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_2

    .line 6
    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v2, p2, v0

    .line 7
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_1
    if-ge v1, v2, :cond_3

    .line 8
    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    aput-char p3, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/apache/commons/text/StrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendNull()Lorg/apache/commons/text/StrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendPadding(IC)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    if-lez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :cond_1
    return-object p0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    .line 8
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 9
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    const/4 v0, 0x1

    .line 10
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    .line 12
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(D)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(D)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(F)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(F)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(I)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(I)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(J)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(J)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln(Z)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Z)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln([C)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append([C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public appendln([CII)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/text/StrTokenizer;
    .locals 1

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public capacity()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length p0, p0

    return p0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public clear()Lorg/apache/commons/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_1

    .line 3
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/text/StrMatcher;)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_0

    :cond_1
    sub-int v2, v1, v0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    sub-int v0, v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    add-int v2, v0, v1

    .line 8
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 10
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/text/StrBuilder;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public deleteFirst(C)Lorg/apache/commons/text/StrBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int v0, p1, v1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 7
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    sub-int/2addr v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_4

    iget-object v5, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/text/StrBuilder;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->equals(Lorg/apache/commons/text/StrBuilder;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Lorg/apache/commons/text/StrBuilder;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    .line 5
    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_4

    .line 6
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/text/StrBuilder;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    aget-char v2, p0, v1

    aget-char v4, p1, v1

    if-eq v2, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v2, v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 6
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "end < start"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public getChars([C)[C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 3
    :cond_0
    new-array p1, v0, [C

    .line 4
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz p0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, v0, p0

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result p0

    return p0
.end method

.method public indexOf(CI)I
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    .line 5
    :goto_0
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p2, v2, :cond_2

    .line 6
    aget-char v2, v0, p2

    if-ne v2, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 7

    const/4 v0, 0x0

    .line 8
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v1, -0x1

    if-eqz p1, :cond_6

    .line 9
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result p0

    return p0

    :cond_1
    if-nez v2, :cond_2

    return p2

    .line 12
    :cond_2
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v2, v4, :cond_3

    return v1

    .line 13
    :cond_3
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_0
    if-ge p2, v4, :cond_6

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v3

    aget-char v6, p0, v6

    if-eq v5, v6, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return p2

    :cond_6
    :goto_2
    return v1
.end method

.method public indexOf(Lorg/apache/commons/text/StrMatcher;)I
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p0

    return p0
.end method

.method public indexOf(Lorg/apache/commons/text/StrMatcher;I)I
    .locals 4

    const/4 v0, 0x0

    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 17
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 19
    invoke-virtual {p1, p0, v2, p2, v1}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public insert(IC)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 18
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 19
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 21
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 39
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(IF)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(II)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(IJ)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    .line 42
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 5

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 46
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    .line 49
    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 50
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 3
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x4

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, p2, p1

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x72

    .line 5
    aput-char v3, p2, v1

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x75

    .line 6
    aput-char v1, p2, v2

    .line 7
    aput-char v0, p2, p1

    .line 8
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 10
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x5

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, p2, p1

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x61

    .line 12
    aput-char v3, p2, v1

    add-int/lit8 v1, p1, 0x3

    const/16 v3, 0x6c

    .line 13
    aput-char v3, p2, v2

    add-int/lit8 p1, p1, 0x4

    const/16 v2, 0x73

    .line 14
    aput-char v2, p2, v1

    .line 15
    aput-char v0, p2, p1

    .line 16
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 23
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 25
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 26
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 27
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 30
    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p3, :cond_3

    .line 31
    array-length v0, p2

    if-gt p3, v0, :cond_3

    if-ltz p4, :cond_2

    add-int v0, p3, p4

    .line 32
    array-length v1, p2

    if-gt v0, v1, :cond_2

    if-lez p4, :cond_1

    .line 33
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    .line 34
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid offset: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotEmpty()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastIndexOf(C)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(CI)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-gez p2, :cond_1

    return v0

    :cond_1
    :goto_0
    if-ltz p2, :cond_3

    .line 3
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 4
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7

    .line 5
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-gez p2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 7
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt v2, v3, :cond_5

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr p2, v2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_6

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_4

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v6, p2, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return p2

    :cond_5
    if-nez v2, :cond_6

    return p2

    :cond_6
    :goto_2
    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/text/StrMatcher;)I
    .locals 1

    .line 10
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Lorg/apache/commons/text/StrMatcher;I)I
    .locals 3

    .line 11
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ltz p2, :cond_3

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, p0, p2, v2, v1}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, p0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return p0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-lez p2, :cond_3

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    new-instance p2, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {p2, p0, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p2

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public minimizeCapacity()Lorg/apache/commons/text/StrBuilder;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public readFrom(Ljava/lang/Readable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    check-cast p1, Ljava/io/Reader;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v2, :cond_2

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_2

    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    :goto_2
    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr p0, v0

    return p0

    :cond_3
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_1
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result v2

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :goto_0
    move v5, p2

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :goto_1
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 4
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replaceAll(CC)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3
    aput-char p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    if-nez p2, :cond_1

    move v8, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v2

    .line 6
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_2

    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    .line 7
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int/2addr v0, v8

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 9
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3
    aput-char p2, v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v5, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    :goto_0
    if-lez v5, :cond_2

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez p2, :cond_1

    :goto_1
    move v7, v0

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :goto_2
    add-int v4, v3, v5

    move-object v2, p0

    move-object v6, p2

    .line 7
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 6

    .line 8
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public reverse()Lorg/apache/commons/text/StrBuilder;
    .locals 6

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    div-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    aget-char v5, v2, v0

    aput-char v5, v2, v3

    aput-char v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public setCharAt(IC)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public setLength(I)Lorg/apache/commons/text/StrBuilder;
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_1

    :cond_0
    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return p0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 3
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 3
    :cond_0
    new-array v1, v0, [C

    .line 4
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toCharArray(II)[C
    .locals 2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_0

    .line 6
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 7
    :cond_0
    new-array v0, p2, [C

    .line 8
    iget-object p0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public trim()Lorg/apache/commons/text/StrBuilder;
    .locals 6

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_1

    aget-char v5, v1, v3

    if-gt v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v1, v5

    if-gt v5, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/text/StrBuilder;->delete(II)Lorg/apache/commons/text/StrBuilder;

    :cond_3
    if-lez v3, :cond_4

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/text/StrBuilder;->delete(II)Lorg/apache/commons/text/StrBuilder;

    :cond_4
    return-object p0
.end method

.method public validateIndex(I)V
    .locals 0

    if-ltz p1, :cond_0

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public validateRange(II)I
    .locals 0

    if-ltz p1, :cond_2

    iget p0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le p2, p0, :cond_0

    move p2, p0

    :cond_0
    if-gt p1, p2, :cond_1

    return p2

    :cond_1
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p1, "end < start"

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method
