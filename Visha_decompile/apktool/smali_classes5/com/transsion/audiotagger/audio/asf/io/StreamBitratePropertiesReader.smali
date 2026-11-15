.class public Lcom/transsion/audiotagger/audio/asf/io/StreamBitratePropertiesReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance p1, Lcom/transsion/audiotagger/audio/asf/data/StreamBitratePropertiesChunk;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/StreamBitratePropertiesChunk;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x0

    :goto_0
    int-to-long v2, p0

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/audiotagger/audio/asf/data/StreamBitratePropertiesChunk;->addBitrateRecord(IJ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->setPosition(J)V

    return-object p1
.end method
