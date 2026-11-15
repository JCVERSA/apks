.class public abstract Lz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llo4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Llo4;
    .locals 0

    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lhf8;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Llo4;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lz2;->g(C)Llo4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public abstract c([BII)Llo4;
.end method

.method public e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Llo4;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2;->f([B)Llo4;

    move-result-object p0

    return-object p0
.end method

.method public f([B)Llo4;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lz2;->c([BII)Llo4;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(C)Llo4;
.end method
