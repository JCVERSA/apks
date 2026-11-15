.class public Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static crc_lookup:[J

.field private static init:Z

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCRC([B)[B
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->init()V

    :cond_0
    array-length v2, p0

    const-wide/16 v3, 0x0

    move v5, v1

    :goto_0
    const/16 v6, 0x8

    const/16 v7, 0x18

    const-wide/16 v8, 0xff

    if-ge v5, v2, :cond_1

    aget-byte v10, p0, v5

    ushr-long v11, v3, v7

    and-long v7, v11, v8

    invoke-static {v10}, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->u(I)I

    move-result v9

    int-to-long v9, v9

    xor-long/2addr v7, v9

    long-to-int v7, v7

    shl-long/2addr v3, v6

    sget-object v6, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    aget-wide v6, v6, v7

    xor-long/2addr v3, v6

    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    and-long v10, v3, v8

    long-to-int p0, v10

    int-to-byte p0, p0

    ushr-long v5, v3, v6

    and-long/2addr v5, v8

    long-to-int v2, v5

    int-to-byte v2, v2

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    ushr-long/2addr v3, v7

    and-long/2addr v3, v8

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    aput-byte p0, v4, v1

    aput-byte v2, v4, v0

    const/4 p0, 0x2

    aput-byte v5, v4, p0

    const/4 p0, 0x3

    aput-byte v3, v4, p0

    return-object v4
.end method

.method public static init()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x18

    int-to-long v4, v2

    move v2, v0

    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    const-wide v6, 0x80000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    shl-long/2addr v4, v3

    const-wide/32 v6, 0x4c11db7

    xor-long/2addr v4, v6

    goto :goto_2

    :cond_0
    shl-long/2addr v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->crc_lookup:[J

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v3, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method private static u(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public checkCRC([B[B)Z
    .locals 0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
