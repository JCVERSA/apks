.class final Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayReader"
.end annotation


# instance fields
.field private final data:[B

.field private final offset:I

.field private pos:I

.field private final size:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iput p3, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

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

    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    aget-byte p0, v1, v0

    return p0
.end method

.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public getUInt8()S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public read([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    iget p0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    int-to-long p0, p1

    return-wide p0
.end method
