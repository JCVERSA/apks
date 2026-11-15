.class public Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTEGRAL_SIZE:I = 0x4

.field public static final MAX_SAFE_SIZE:I = 0x7f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferToValue(Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {v1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue([B)I

    move-result p0

    return p0
.end method

.method public static bufferToValue([B)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x15

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static isBufferEmpty([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static valueToBuffer(I)[B
    .locals 5

    const/high16 v0, 0xfe00000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x15

    int-to-byte v0, v0

    const v1, 0x1fc000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xe

    int-to-byte v1, v1

    and-int/lit16 v2, p0, 0x3f80

    shr-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method
