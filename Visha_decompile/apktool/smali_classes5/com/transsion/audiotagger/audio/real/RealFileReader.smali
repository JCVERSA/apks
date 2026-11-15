.class public Lcom/transsion/audiotagger/audio/real/RealFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private findContChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/real/RealChunk;->isCONT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private findPropChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/real/RealFileReader;->findPropChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v3

    long-to-int p1, v3

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    long-to-int p0, v5

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    int-to-double p0, p1

    invoke-virtual {v0, p0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    cmp-long p0, v1, v5

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :cond_1
    return-object v0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/real/RealFileReader;->findContChunk(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/real/RealChunk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/transsion/audiotagger/audio/real/RealTag;

    invoke-direct {v2}, Lcom/transsion/audiotagger/audio/real/RealTag;-><init>()V

    :try_start_0
    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
