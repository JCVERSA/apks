.class abstract Lcom/google/common/hash/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/hash/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public hashBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->e(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/a;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/m;->t(III)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/e;->d([BII)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->f(I)Lcom/google/common/hash/e;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->h(J)Lcom/google/common/hash/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;
    .locals 1
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

    .line 1
    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public newHasher(I)Lcom/google/common/hash/e;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/common/base/m;->f(ZLjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
