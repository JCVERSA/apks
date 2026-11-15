.class public Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.mp4.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTrackAtomVideo(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return p1
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;

    invoke-direct {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->FTYP:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;

    invoke-direct {v4, v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;->processData()V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->setBrand(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MVHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v5, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v5, v3, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->getLength()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v5, v3

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MdhdBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MdhdBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MdhdBox;->getSampleRate()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->SMHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadVideoException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STSD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StsdBox;

    invoke-direct {v7, v6, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StsdBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StsdBox;->processData()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v6

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MP4A:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v8, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4Mp4aBox;

    invoke-direct {v8, v7, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4Mp4aBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4Mp4aBox;->processData()V

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->AAC:Lcom/transsion/audiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->DRMS:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4DrmsBox;

    invoke-direct {v6, v7, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4DrmsBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4DrmsBox;->processData()V

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->DRM_AAC:Lcom/transsion/audiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ALAC:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v8, v7, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lcom/transsion/audiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;->getChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;->getBitRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4AlacBox;->getSampleSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v3, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v0

    int-to-long v9, v0

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    :cond_6
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getBitRateAsNumber()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    :cond_7
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getBitsPerSample()I

    move-result v0

    if-ne v0, v3, :cond_8

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    :cond_8
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->AAC:Lcom/transsion/audiotagger/audio/mp4/EncoderType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v4, v0, v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;->isTrackAtomVideo(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadVideoException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-object v1

    :cond_c
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
