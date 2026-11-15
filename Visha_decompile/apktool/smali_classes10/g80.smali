.class public Lg80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda3;


# instance fields
.field public final a:[B

.field public b:B

.field public final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lg80;->a:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lg80;->b:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lg80;->c:[B

    invoke-virtual {p0}, Lg80;->d()V

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method


# virtual methods
.method public a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public b([BIILjava/io/OutputStream;)I
    .locals 10

    const/4 v0, 0x0

    if-gez p3, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x48

    new-array v1, v1, [B

    move v8, p3

    :goto_0
    if-lez v8, :cond_1

    const/16 v2, 0x36

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v9

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lg80;->c([BII[BI)I

    move-result v2

    invoke-virtual {p4, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v9

    sub-int/2addr v8, v9

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x2

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public c([BII[BI)I
    .locals 13

    move-object v0, p0

    add-int v1, p2, p3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    move v3, p2

    move/from16 v4, p5

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p1, v3

    add-int/lit8 v7, v3, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v8, v7, 0xff

    add-int/lit8 v9, v4, 0x1

    iget-object v10, v0, Lg80;->a:[B

    ushr-int/lit8 v11, v6, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v10, v11

    aput-byte v11, p4, v4

    add-int/lit8 v11, v4, 0x2

    shl-int/lit8 v6, v6, 0x4

    ushr-int/lit8 v12, v5, 0x4

    or-int/2addr v6, v12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v10, v6

    aput-byte v6, p4, v9

    add-int/lit8 v6, v4, 0x3

    shl-int/2addr v5, v2

    ushr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v10, v5

    aput-byte v5, p4, v11

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v7, 0x3f

    aget-byte v5, v10, v5

    aput-byte v5, p4, v6

    goto :goto_0

    :cond_0
    sub-int v1, v3, p2

    sub-int v1, p3, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    iget-object v6, v0, Lg80;->a:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v6, v7

    aput-byte v7, p4, v4

    add-int/lit8 v7, v4, 0x2

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v8, v1, 0x4

    or-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, p4, v5

    add-int/lit8 v3, v4, 0x3

    shl-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, p4, v7

    add-int/lit8 v4, v4, 0x4

    iget-byte v0, v0, Lg80;->b:B

    aput-byte v0, p4, v3

    goto :goto_1

    :cond_2
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v4, 0x1

    iget-object v3, v0, Lg80;->a:[B

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v3, v5

    aput-byte v5, p4, v4

    add-int/lit8 v5, v4, 0x2

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p4, v2

    add-int/lit8 v1, v4, 0x3

    iget-byte v0, v0, Lg80;->b:B

    aput-byte v0, p4, v5

    add-int/lit8 v4, v4, 0x4

    aput-byte v0, p4, v1

    :goto_1
    sub-int v4, v4, p5

    return v4
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lg80;->c:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lg80;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lg80;->c:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
