.class public Lcom/transsion/audiotagger/audio/asf/AsfFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HEADER_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.transsion.audiotagger.audio.asf"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/ContentBrandingReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/LanguageListReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/FileHeaderReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/StreamChunkReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-direct {v3, v0, v2}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->HEADER_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private determineVariableBitrate(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->findExtendedContentDescription()Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "IsVBR"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_0
    return p1
.end method

.method private getAudioHeader(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getKbps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASF (audio): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v1

    const-wide/16 v3, 0x163

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getPreciseDuration()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->determineVariableBitrate(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Invalid ASF/WMA file. No audio stream contained."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Invalid ASF/WMA file. File header object not available."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTag(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/tag/asf/AsfTag;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/TagConverter;->createTagOf(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/tag/asf/AsfTag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :try_start_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->readInfoHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->getAudioHeader(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_2

    instance-of p1, p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    throw p0

    :cond_1
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read. Cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public bridge synthetic getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/asf/AsfTag;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/asf/AsfTag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/util/TagConverter;->createTagOf(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/tag/asf/AsfTag;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    sget-object p1, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 8
    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_2

    .line 9
    instance-of p1, p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    if-eqz p1, :cond_1

    .line 10
    check-cast p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read. Cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const-string v0, "\" :"

    const-string v1, "\""

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/transsion/audiotagger/audio/asf/io/FullRequestInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->HEADER_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    sget-object v4, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lcom/transsion/audiotagger/logging/ErrorMessage;->ASF_FILE_HEADER_SIZE_DOES_NOT_MATCH_FILE_SIZE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getFileHeader()Lcom/transsion/audiotagger/audio/asf/data/FileHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance v4, Lcom/transsion/audiotagger/audio/AudioFile;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->getAudioHeader(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->getTag(Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;)Lcom/transsion/audiotagger/tag/asf/AsfTag;

    move-result-object p0

    invoke-direct {v4, p1, v5, p0}, Lcom/transsion/audiotagger/audio/AudioFile;-><init>(Ljava/io/File;Lcom/transsion/audiotagger/audio/AudioHeader;Lcom/transsion/audiotagger/tag/Tag;)V
    :try_end_1
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_1
    return-object v4

    :cond_1
    :try_start_3
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->ASF_FILE_HEADER_MISSING:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->ASF_HEADER_MISSING:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    new-instance v3, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_3
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_3
    :goto_5
    throw p0

    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
