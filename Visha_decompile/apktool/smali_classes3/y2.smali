.class public abstract Ly2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leo4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ly2;->newHasher(I)Llo4;

    move-result-object p0

    invoke-interface {p0, p1}, Llo4;->d(Ljava/nio/ByteBuffer;)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ly2;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lxd8;->t(III)V

    .line 3
    invoke-virtual {p0, p3}, Ly2;->newHasher(I)Llo4;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Llo4;->c([BII)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ly2;->newHasher(I)Llo4;

    move-result-object p0

    invoke-interface {p0, p1}, Llo4;->putInt(I)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ly2;->newHasher(I)Llo4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Llo4;->putLong(J)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    invoke-interface {p0}, Leo4;->newHasher()Llo4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Llo4;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 0

    invoke-interface {p0}, Leo4;->newHasher()Llo4;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Llo4;->e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ly2;->newHasher(I)Llo4;

    move-result-object p0

    invoke-interface {p0, p1}, Llo4;->b(Ljava/lang/CharSequence;)Llo4;

    move-result-object p0

    invoke-interface {p0}, Llo4;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public newHasher(I)Llo4;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, Lxd8;->f(ZLjava/lang/String;I)V

    invoke-interface {p0}, Leo4;->newHasher()Llo4;

    move-result-object p0

    return-object p0
.end method
