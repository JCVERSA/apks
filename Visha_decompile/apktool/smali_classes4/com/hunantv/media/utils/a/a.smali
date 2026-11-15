.class public final Lcom/hunantv/media/utils/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(IIIII[I)I
    .locals 3

    .line 1
    ushr-int/lit8 v0, p2, 0x5

    shl-int/lit8 v1, p1, 0x2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p2, 0x4

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    xor-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3

    xor-int/2addr p1, p4

    aget p1, p5, p1

    xor-int/2addr p1, p2

    add-int/2addr p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static a([B)[B
    .locals 4

    .line 2
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-array v0, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    array-length v1, p0

    :cond_1
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final a([BLjava/lang/String;)[B
    .locals 1

    .line 3
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/a/a;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a([B[B)[B
    .locals 1

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hunantv/media/utils/a/a;->a([BZ)[I

    move-result-object p0

    invoke-static {p1}, Lcom/hunantv/media/utils/a/a;->a([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/hunantv/media/utils/a/a;->a([BZ)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/a/a;->a([I[I)[I

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/a/a;->a([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([IZ)[B
    .locals 4

    .line 5
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_2

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    add-int/lit8 v1, v0, -0x4

    add-int/lit8 v0, v0, -0x7

    if-lt p1, v0, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    new-array p1, v0, [B

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    ushr-int/lit8 v2, v1, 0x2

    aget v2, p0, v2

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method private static a([BZ)[I
    .locals 6

    .line 6
    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    new-array p1, p1, [I

    array-length v1, p0

    aput v1, p1, v0

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    :goto_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    ushr-int/lit8 v2, v1, 0x2

    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method private static a([I[I)[I
    .locals 13

    .line 7
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-object p0

    :cond_0
    const/16 v2, 0x34

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x6

    const/4 v0, 0x0

    aget v3, p0, v0

    const v4, -0x61c88647

    mul-int/2addr v2, v4

    :goto_0
    if-eqz v2, :cond_2

    ushr-int/lit8 v5, v2, 0x2

    and-int/lit8 v11, v5, 0x3

    move v6, v3

    move v3, v1

    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    aget v7, p0, v5

    aget v12, p0, v3

    move v5, v2

    move v8, v3

    move v9, v11

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/hunantv/media/utils/a/a;->a(IIIII[I)I

    move-result v5

    sub-int v6, v12, v5

    aput v6, p0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    aget v7, p0, v1

    aget v12, p0, v0

    move v5, v2

    move v8, v3

    move v9, v11

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/hunantv/media/utils/a/a;->a(IIIII[I)I

    move-result v3

    sub-int v3, v12, v3

    aput v3, p0, v0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static final b([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/hunantv/media/utils/a/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method
