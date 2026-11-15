.class public abstract La4;
.super Lz2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, La4;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lz2;-><init>()V

    .line 3
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lxd8;->d(Z)V

    add-int/lit8 v0, p2, 0x7

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    .line 5
    iput p2, p0, La4;->b:I

    .line 6
    iput p1, p0, La4;->c:I

    return-void
.end method


# virtual methods
.method public final c([BII)Llo4;
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, La4;->m(Ljava/nio/ByteBuffer;)Llo4;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/nio/ByteBuffer;)Llo4;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, La4;->m(Ljava/nio/ByteBuffer;)Llo4;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw p0
.end method

.method public final g(C)Llo4;
    .locals 1

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, La4;->j()V

    return-object p0
.end method

.method public abstract h()Lcom/google/common/hash/HashCode;
.end method

.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 2

    invoke-virtual {p0}, La4;->i()V

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lg65;->a(Ljava/nio/Buffer;)V

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, La4;->l(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Lg65;->b(Ljava/nio/Buffer;I)V

    :cond_0
    invoke-virtual {p0}, La4;->h()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lg65;->a(Ljava/nio/Buffer;)V

    :goto_0
    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, La4;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, La4;->k(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, La4;->i()V

    :cond_0
    return-void
.end method

.method public abstract k(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract l(Ljava/nio/ByteBuffer;)V
.end method

.method public final m(Ljava/nio/ByteBuffer;)Llo4;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, La4;->j()V

    return-object p0

    :cond_0
    iget v0, p0, La4;->b:I

    iget-object v1, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La4;->i()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, La4;->c:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, La4;->k(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(I)Llo4;
    .locals 1

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, La4;->j()V

    return-object p0
.end method

.method public final putLong(J)Llo4;
    .locals 1

    iget-object v0, p0, La4;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, La4;->j()V

    return-object p0
.end method
