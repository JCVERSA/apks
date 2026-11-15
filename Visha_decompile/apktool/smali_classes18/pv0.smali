.class public final Lpv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/nio/charset/Charset;

.field public final c:Ljava/nio/charset/CharsetDecoder;

.field public final d:Ljava/nio/ByteBuffer;

.field public e:Z

.field public f:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv0;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lpv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const-string p2, "charset.newDecoder()\n   \u2026odingErrorAction.REPLACE)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpv0;->c:Ljava/nio/charset/CharsetDecoder;

    sget-object p1, Lco0;->c:Lco0;

    invoke-virtual {p1}, Lco0;->d()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "wrap(ByteArrayPool8k.take())"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    const-string p0, "null cannot be cast to non-null type java.nio.Buffer"

    invoke-static {p1, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a([CII)I
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iget-object p3, p0, Lpv0;->c:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lpv0;->b()I

    move-result p3

    if-gez p3, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lpv0;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move p2, p3

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    iget-object p0, p0, Lpv0;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    :goto_3
    return p0

    :cond_8
    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public final b()I
    .locals 6

    const-string v0, "null cannot be cast to non-null type java.nio.Buffer"

    iget-object v1, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v1, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-gt v2, v1, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lpv0;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_1

    iget-object p0, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return v1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object p0, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    throw v1
.end method

.method public final c()I
    .locals 5

    iget-boolean v0, p0, Lpv0;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lpv0;->e:Z

    iget-char p0, p0, Lpv0;->f:C

    return p0

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [C

    invoke-virtual {p0, v2, v1, v0}, Lpv0;->d([CII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-ne v3, v0, :cond_1

    aget-char v0, v2, v4

    iput-char v0, p0, Lpv0;->f:C

    iput-boolean v4, p0, Lpv0;->e:Z

    aget-char v4, v2, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unreachable state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    aget-char v4, v2, v1

    :cond_3
    :goto_0
    return v4
.end method

.method public final d([CII)I
    .locals 3

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_6

    array-length v1, p1

    if-ge p2, v1, :cond_6

    if-ltz p3, :cond_6

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_6

    iget-boolean v1, p0, Lpv0;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lpv0;->f:C

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    iput-boolean v0, p0, Lpv0;->e:Z

    if-nez p3, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    if-ne p3, v2, :cond_5

    invoke-virtual {p0}, Lpv0;->c()I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_4

    if-nez v0, :cond_3

    move v0, p3

    :cond_3
    return v0

    :cond_4
    int-to-char p0, p0

    aput-char p0, p1, p2

    add-int/2addr v0, v2

    return v0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lpv0;->a([CII)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected arguments: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lco0;->c:Lco0;

    iget-object p0, p0, Lpv0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v1, "byteBuffer.array()"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lco0;->c([B)V

    return-void
.end method
