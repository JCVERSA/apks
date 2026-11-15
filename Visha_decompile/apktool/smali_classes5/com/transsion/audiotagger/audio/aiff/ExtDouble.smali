.class public Lcom/transsion/audiotagger/audio/aiff/ExtDouble;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _rawData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/aiff/ExtDouble;->_rawData:[B

    return-void
.end method


# virtual methods
.method public toDouble()D
    .locals 11

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/ExtDouble;->_rawData:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    shr-int/lit8 v2, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x7fff

    add-int/lit16 v0, v0, -0x403d

    const-wide/16 v4, 0x0

    const/16 v1, 0x37

    const/4 v6, 0x2

    :goto_0
    const/16 v7, 0x9

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte v7, v7, v6

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    shl-long/2addr v7, v1

    or-long/2addr v4, v7

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte p0, p0, v7

    ushr-int/2addr p0, v3

    int-to-long v6, p0

    or-long v3, v4, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    long-to-double v3, v3

    mul-double/2addr v0, v3

    if-eqz v2, :cond_1

    neg-double v0, v0

    :cond_1
    return-wide v0
.end method
