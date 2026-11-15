.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "SourceFile"


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    add-int v5, v1, v2

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v5, v0

    sub-int v6, v3, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v2

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v6, p0, v0

    if-ltz v6, :cond_0

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    int-to-char v6, v6

    aput-char v6, v1, v2

    move v2, v7

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_1
    move v7, v2

    :goto_2
    if-ge v4, v5, :cond_10

    aget-byte v0, p0, v4

    if-ltz v0, :cond_2

    if-lt v7, v3, :cond_1

    const/4 v8, 0x1

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v7, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    shr-int/lit8 v2, v0, 0x5

    const/4 v6, -0x2

    const/4 v8, 0x2

    if-ne v2, v6, :cond_6

    sub-int v2, v5, v4

    if-lt v2, v8, :cond_5

    if-lt v7, v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1, v4, p2, v7, v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v6, v7, 0x1

    shl-int/lit8 v0, v0, 0x6

    xor-int/2addr v0, v2

    xor-int/lit16 v0, v0, 0xf80

    int-to-char v0, v0

    aput-char v0, v1, v7

    add-int/lit8 v4, v4, 0x2

    :goto_3
    move v7, v6

    goto :goto_2

    :cond_5
    :goto_4
    const/4 v8, 0x2

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_6
    shr-int/lit8 v2, v0, 0x4

    if-ne v2, v6, :cond_a

    sub-int v2, v5, v4

    const/4 v6, 0x3

    if-lt v2, v6, :cond_9

    if-lt v7, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p0, v8

    invoke-static {v0, v2, v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {p1, v4, p2, v7, v6}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v6, v7, 0x1

    shl-int/lit8 v0, v0, 0xc

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v0, v2

    xor-int/2addr v0, v8

    xor-int/lit16 v0, v0, 0x1f80

    int-to-char v0, v0

    aput-char v0, v1, v7

    add-int/lit8 v4, v4, 0x3

    goto :goto_3

    :cond_9
    :goto_5
    const/4 v8, 0x3

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_a
    shr-int/lit8 v2, v0, 0x3

    if-ne v2, v6, :cond_f

    sub-int v2, v5, v4

    const/4 v6, 0x4

    if-lt v2, v6, :cond_e

    sub-int v2, v3, v7

    if-ge v2, v8, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p0, v8

    add-int/lit8 v9, v4, 0x3

    aget-byte v9, p0, v9

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x12

    and-int/lit8 v10, v2, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v0, v10

    and-int/lit8 v10, v8, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v0, v10

    and-int/lit8 v10, v9, 0x3f

    or-int/2addr v0, v10

    invoke-static {v2, v8, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result v2

    if-nez v2, :cond_d

    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_d

    const v8, 0x10ffff

    if-le v0, v8, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v7, 0x1

    sub-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0xa

    and-int/lit16 v2, v2, 0x3ff

    const v8, 0xd800

    or-int/2addr v2, v8

    int-to-char v2, v2

    aput-char v2, v1, v7

    add-int/lit8 v7, v7, 0x2

    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    int-to-char v0, v0

    aput-char v0, v1, v6

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    :cond_d
    :goto_6
    invoke-static {p1, v4, p2, v7, v6}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_7
    const/4 v8, 0x4

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x1

    invoke-static {p1, v4, p2, v7, p0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static isMalformed2(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0x1e

    if-eqz p0, :cond_1

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x80

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMalformed3(III)Z
    .locals 2

    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xe0

    if-eq p0, v1, :cond_2

    :cond_0
    and-int/lit16 p0, p1, 0xc0

    if-ne p0, v1, :cond_2

    and-int/lit16 p0, p2, 0xc0

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMalformed4(III)Z
    .locals 1

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_1

    and-int/lit16 p0, p1, 0xc0

    if-ne p0, v0, :cond_1

    and-int/lit16 p0, p2, 0xc0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isNotContinuation(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-object p4
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/16 v3, 0x80

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    const/16 v6, 0xf4

    if-gt p1, v6, :cond_4

    const/16 v7, 0xf0

    if-ne p1, v7, :cond_0

    const/16 v8, 0x90

    if-lt v5, v8, :cond_4

    const/16 v8, 0xbf

    if-gt v5, v8, :cond_4

    :cond_0
    if-ne p1, v6, :cond_1

    and-int/lit16 p1, v0, 0xf0

    if-ne p1, v3, :cond_4

    :cond_1
    invoke-static {v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 v0, -0x20

    if-ne p1, v0, :cond_7

    and-int/lit16 p1, p0, 0xe0

    if-eq p1, v3, :cond_9

    :cond_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :cond_9
    :goto_1
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    shr-int/lit8 v2, p1, 0x2

    const/4 v3, 0x5

    const/4 v4, -0x2

    if-ne v2, v4, :cond_d

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-ge p1, v0, :cond_c

    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0

    :cond_c
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_d
    shr-int/2addr p1, v1

    if-ne p1, v4, :cond_f

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-ge p1, v3, :cond_e

    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0

    :cond_e
    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    if-eqz p5, :cond_1

    sub-int/2addr p2, p1

    if-ge p2, p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method
