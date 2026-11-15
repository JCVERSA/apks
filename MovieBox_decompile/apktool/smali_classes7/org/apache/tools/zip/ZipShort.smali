.class public final Lorg/apache/tools/zip/ZipShort;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return-void
.end method

.method public static getBytes(I)[B
    .locals 3

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 3
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static getValue([B)I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result p0

    return p0
.end method

.method public static getValue([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 2
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 3
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Lorg/apache/tools/zip/ZipShort;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v1, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    .line 10
    .line 11
    check-cast p1, Lorg/apache/tools/zip/ZipShort;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne v1, p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 2
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/zip/ZipShort;->value:I

    .line 2
    .line 3
    return v0
.end method
