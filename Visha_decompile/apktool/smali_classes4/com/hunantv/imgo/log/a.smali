.class public Lcom/hunantv/imgo/log/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 3
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static a([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p0, v0

    int-to-byte p1, p1

    .line 7
    aput-byte p1, p0, p2

    return-void
.end method

.method public static a([BSI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 1
    aput-byte v1, p0, v0

    int-to-byte p1, p1

    .line 2
    aput-byte p1, p0, p2

    return-void
.end method

.method public static b([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
