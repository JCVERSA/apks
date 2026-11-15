.class public Lcom/transsion/audiotagger/audio/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_STREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

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

    const/4 p0, 0x1

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {v4, v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v11

    and-int/lit8 v12, v11, 0x7f

    const v13, 0x8000

    and-int/2addr v11, v13

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    const-wide/16 v13, 0x4

    invoke-virtual {v0, v13, v14}, Ljava/io/InputStream;->skip(J)J

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    invoke-direct {v2, v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;-><init>(Ljava/math/BigInteger;)V

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    int-to-long v13, v3

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    move-wide/from16 p0, v5

    int-to-long v5, v3

    move-wide v15, v7

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v7

    move-wide/from16 v17, v9

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    move/from16 v20, v11

    move/from16 v19, v12

    int-to-long v11, v3

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    move-wide/from16 v21, v15

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v15

    move-object/from16 v16, v1

    new-array v1, v15, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2, v13, v14}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    invoke-virtual {v2, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setChannelCount(J)V

    invoke-virtual {v2, v7, v8}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    invoke-virtual {v2, v9, v10}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    invoke-virtual {v2, v4}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setErrorConcealment(Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    invoke-virtual {v2, v11, v12}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->setCodecData([B)V

    add-int/lit8 v15, v15, 0x12

    int-to-long v3, v15

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_2
    move/from16 v5, v19

    goto :goto_3

    :cond_3
    move-object/from16 v16, v1

    move-wide/from16 p0, v5

    move-wide/from16 v21, v7

    move-wide/from16 v17, v9

    move/from16 v20, v11

    move/from16 v19, v12

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;-><init>(Ljava/math/BigInteger;)V

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const-wide/16 v7, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const-wide/16 v7, 0x10

    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    const/4 v7, 0x4

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1, v3, v4}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    invoke-virtual {v1, v7}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->setCodecId([B)V

    const-wide/16 v3, 0x1f

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v5}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->setStreamNumber(I)V

    move-wide/from16 v5, v17

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    move-wide/from16 v5, v21

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    move-wide/from16 v5, p0

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->setTimeOffset(J)V

    move/from16 v11, v20

    invoke-virtual {v1, v11}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->setContentEncrypted(Z)V

    move-wide/from16 v5, p3

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->setPosition(J)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x18

    sub-long/2addr v5, v7

    sub-long/2addr v5, v3

    const-wide/16 v2, 0x36

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-object v0, v1

    :goto_4
    return-object v0
.end method
