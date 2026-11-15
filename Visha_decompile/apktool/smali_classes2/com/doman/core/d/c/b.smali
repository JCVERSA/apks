.class public final Lcom/doman/core/d/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "Y29tLm1ndHYudWkucGxheWVyLlZvZFBsYXllclBhZ2VBY3Rpdml0eQ=="


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/doman/core/d/c/b;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/doman/core/d/c/a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)[B
    .locals 4

    .line 3
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

.method private static a([BLjava/lang/String;)[B
    .locals 13

    .line 4
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/doman/core/d/c/b;->a([BZ)[I

    move-result-object p0

    invoke-static {p1}, Lcom/doman/core/d/c/b;->a([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/doman/core/d/c/b;->a([BZ)[I

    move-result-object p1

    array-length v1, p0

    add-int/lit8 v7, v1, -0x1

    if-lez v7, :cond_2

    const/16 v2, 0x34

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x6

    aget v1, p0, v0

    const v8, -0x61c88647

    mul-int/2addr v2, v8

    move v9, v2

    :goto_0
    if-eqz v9, :cond_2

    ushr-int/lit8 v2, v9, 0x2

    and-int/lit8 v10, v2, 0x3

    move v2, v1

    move v11, v7

    :goto_1
    if-lez v11, :cond_1

    add-int/lit8 v1, v11, -0x1

    aget v3, p0, v1

    aget v12, p0, v11

    move v1, v9

    move v4, v11

    move v5, v10

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/doman/core/d/c/b;->a(IIIII[I)I

    move-result v1

    sub-int v2, v12, v1

    aput v2, p0, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_1
    aget v3, p0, v7

    aget v12, p0, v0

    move v1, v9

    move v4, v11

    move v5, v10

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/doman/core/d/c/b;->a(IIIII[I)I

    move-result v1

    sub-int v1, v12, v1

    aput v1, p0, v0

    sub-int/2addr v9, v8

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/doman/core/d/c/b;->a([IZ)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

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

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/doman/core/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/doman/core/d/c/b;->a([BLjava/lang/String;)[B

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

.method private static c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 14

    const-string v0, "UTF-8"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/doman/core/d/c/b;->a([BZ)[I

    move-result-object p0

    invoke-static {p1}, Lcom/doman/core/d/c/b;->a([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/doman/core/d/c/b;->a([BZ)[I

    move-result-object p1

    array-length v1, p0

    add-int/lit8 v7, v1, -0x1

    if-lez v7, :cond_2

    const/16 v2, 0x34

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x6

    aget v1, p0, v7

    move v3, v0

    :goto_0
    add-int/lit8 v8, v2, -0x1

    if-lez v2, :cond_2

    const v2, -0x61c88647

    add-int v9, v3, v2

    ushr-int/lit8 v2, v9, 0x2

    and-int/lit8 v10, v2, 0x3

    move v11, v0

    move v3, v1

    :goto_1
    if-ge v11, v7, :cond_1

    add-int/lit8 v12, v11, 0x1

    aget v2, p0, v12

    aget v13, p0, v11

    move v1, v9

    move v4, v11

    move v5, v10

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/doman/core/d/c/b;->a(IIIII[I)I

    move-result v1

    add-int v3, v13, v1

    aput v3, p0, v11

    move v11, v12

    goto :goto_1

    :cond_1
    aget v2, p0, v0

    aget v12, p0, v7

    move v1, v9

    move v4, v11

    move v5, v10

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/doman/core/d/c/b;->a(IIIII[I)I

    move-result v1

    add-int/2addr v1, v12

    aput v1, p0, v7

    move v2, v8

    move v3, v9

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lcom/doman/core/d/c/b;->a([IZ)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
