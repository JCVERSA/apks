.class final Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayReader"
.end annotation


# instance fields
.field private final data:[B

.field private final offset:I

.field private pos:I

.field private final size:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    .line 5
    .line 6
    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    .line 7
    .line 8
    iput p3, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    .line 9
    .line 10
    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    .line 4
    .line 5
    iget v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    .line 6
    .line 7
    add-int/2addr v1, v2

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 17
    .line 18
    aget-byte v0, v1, v0

    .line 19
    .line 20
    return v0
.end method

.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    const v1, 0xff00

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    return v0
.end method

.method public read([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    .line 18
    .line 19
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    return p2
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    long-to-int p1, p1

    .line 15
    iget p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 16
    .line 17
    add-int/2addr p2, p1

    .line 18
    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    .line 19
    .line 20
    int-to-long p1, p1

    .line 21
    return-wide p1
.end method
