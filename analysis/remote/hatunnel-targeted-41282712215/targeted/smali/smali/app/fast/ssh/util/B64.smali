.class public Lapp/fast/ssh/util/B64;
.super Ljava/lang/Object;
.source "B64.java"


# static fields
.field private static final b64:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u318d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/util/B64;->b64:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase64([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lapp/fast/ssh/util/B64;->fromBase64([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static fromBase64([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :try_start_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    :goto_0
    add-int v4, p1, p2

    if-ge v2, v4, :cond_2

    aget-byte v4, p0, v2

    invoke-static {v4}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v2, 0x1

    aget-byte v6, p0, v5

    invoke-static {v6}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v4, v2, 0x2

    aget-byte v6, p0, v4

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    aget-byte v8, p0, v4

    invoke-static {v8}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v8

    and-int/lit8 v8, v8, 0x3c

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    add-int/lit8 v5, v2, 0x3

    aget-byte v6, p0, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v3, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    aget-byte v5, p0, v5

    invoke-static {v5}, Lapp/fast/ssh/util/B64;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    new-array p0, v3, [B

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo p2, "\u318e"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toBase64([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lapp/fast/ssh/util/B64;->toBase64([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBase64([BII)[B
    .locals 11

    .prologue
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p1

    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v1, :cond_0

    aget-byte v6, p0, v3

    ushr-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lapp/fast/ssh/util/B64;->b64:[B

    aget-byte v6, v8, v6

    aput-byte v6, v0, v4

    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v9, v3, 0x1

    aget-byte v10, p0, v9

    ushr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v6, v10

    add-int/lit8 v10, v4, 0x2

    aget-byte v6, v8, v6

    aput-byte v6, v0, v7

    aget-byte v6, p0, v9

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v5, v6, 0x2

    add-int/lit8 v6, v3, 0x2

    aget-byte v7, p0, v6

    ushr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v5, v7

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v8, v5

    aput-byte v5, v0, v10

    aget-byte v5, p0, v6

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v4, v4, 0x4

    aget-byte v5, v8, v5

    aput-byte v5, v0, v7

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    const/16 p2, 0x3d

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    aget-byte p1, p0, v3

    ushr-int/2addr p1, v5

    and-int/lit8 p1, p1, 0x3f

    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lapp/fast/ssh/util/B64;->b64:[B

    aget-byte p1, v5, p1

    aput-byte p1, v0, v4

    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    add-int/lit8 p1, v4, 0x2

    aget-byte p0, v5, p0

    aput-byte p0, v0, v1

    add-int/lit8 p0, v4, 0x3

    aput-byte p2, v0, p1

    add-int/lit8 v4, v4, 0x4

    aput-byte p2, v0, p0

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    aget-byte p1, p0, v3

    ushr-int/2addr p1, v5

    and-int/lit8 p1, p1, 0x3f

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lapp/fast/ssh/util/B64;->b64:[B

    aget-byte p1, v7, p1

    aput-byte p1, v0, v4

    aget-byte p1, p0, v3

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr v3, v1

    aget-byte v1, p0, v3

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr p1, v1

    add-int/lit8 v1, v4, 0x2

    aget-byte p1, v7, p1

    aput-byte p1, v0, v6

    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v5

    and-int/lit8 p0, p0, 0x3f

    add-int/lit8 p1, v4, 0x3

    aget-byte p0, v7, p0

    aput-byte p0, v0, v1

    add-int/lit8 v4, v4, 0x4

    aput-byte p2, v0, p1

    :cond_2
    :goto_1
    new-array p0, v4, [B

    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static val(B)B
    .locals 4

    .prologue
    const/16 v0, 0x3d

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lapp/fast/ssh/util/B64;->b64:[B

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-byte v2, v2, v0

    if-ne p0, v2, :cond_1

    int-to-byte p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
