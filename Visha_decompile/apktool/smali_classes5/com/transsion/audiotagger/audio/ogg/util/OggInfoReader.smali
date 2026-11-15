.class public Lcom/transsion/audiotagger/audio/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, p0

    div-long/2addr p2, v0

    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v0, p0

    mul-long/2addr p2, v0

    int-to-long p0, p1

    div-long/2addr p2, p0

    long-to-int p0, p2

    return p0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    new-instance v3, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    const-string v5, "Started"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v5, v4

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x2

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v9, 0x4

    cmp-long v1, v1, v9

    const/16 v2, 0x1b

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-ltz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    sget-object v14, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    const/4 v15, 0x3

    aget-byte v11, v14, v15

    if-ne v1, v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v1, v15, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    aget-byte v9, v1, v6

    aget-byte v10, v14, v6

    if-ne v9, v10, :cond_2

    aget-byte v9, v1, v13

    aget-byte v10, v14, v13

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    aget-byte v1, v1, v9

    aget-byte v9, v14, v9

    if-ne v1, v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v9, 0x3

    sub-long/2addr v4, v9

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    const-wide/16 v11, 0x1a

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v4, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {v4, v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v4

    :goto_2
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    goto :goto_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_3
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_2

    :goto_3
    cmpl-double v1, v4, v7

    if-eqz v1, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    new-array v7, v1, [B

    if-lt v1, v2, :cond_6

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;

    invoke-direct {v1, v7}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;-><init>([B)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v4, v7

    double-to-float v2, v4

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getChannelNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v3, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v3, v13}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getTrackLength()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4, v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v3, v13}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :goto_4
    return-object v3

    :cond_6
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Invalid Identification header for this Ogg File"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_SETUP_BLOCK:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
