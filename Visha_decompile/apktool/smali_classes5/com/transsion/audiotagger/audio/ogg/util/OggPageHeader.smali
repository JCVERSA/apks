.class public Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;,
        Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    }
.end annotation


# static fields
.field public static final CAPTURE_PATTERN:[B

.field public static final FIELD_ABSOLUTE_GRANULE_LENGTH:I = 0x8

.field public static final FIELD_ABSOLUTE_GRANULE_POS:I = 0x6

.field public static final FIELD_CAPTURE_PATTERN_LENGTH:I = 0x4

.field public static final FIELD_CAPTURE_PATTERN_POS:I = 0x0

.field public static final FIELD_HEADER_TYPE_FLAG_LENGTH:I = 0x1

.field public static final FIELD_HEADER_TYPE_FLAG_POS:I = 0x5

.field public static final FIELD_PAGE_CHECKSUM_LENGTH:I = 0x4

.field public static final FIELD_PAGE_CHECKSUM_POS:I = 0x16

.field public static final FIELD_PAGE_SEGMENTS_LENGTH:I = 0x1

.field public static final FIELD_PAGE_SEGMENTS_POS:I = 0x1a

.field public static final FIELD_PAGE_SEQUENCE_NO_LENGTH:I = 0x4

.field public static final FIELD_PAGE_SEQUENCE_NO_POS:I = 0x12

.field public static final FIELD_SEGMENT_TABLE_POS:I = 0x1b

.field public static final FIELD_STREAM_SERIAL_NO_LENGTH:I = 0x4

.field public static final FIELD_STREAM_SERIAL_NO_POS:I = 0xe

.field public static final FIELD_STREAM_STRUCTURE_VERSION_LENGTH:I = 0x1

.field public static final FIELD_STREAM_STRUCTURE_VERSION_POS:I = 0x4

.field public static final MAXIMUM_NO_OF_SEGMENT_SIZE:I = 0xff

.field public static final MAXIMUM_PAGE_DATA_SIZE:I = 0xfe01

.field public static final MAXIMUM_PAGE_HEADER_SIZE:I = 0x11a

.field public static final MAXIMUM_PAGE_SIZE:I = 0xff1b

.field public static final MAXIMUM_SEGMENT_SIZE:I = 0xff

.field public static final OGG_PAGE_HEADER_FIXED_LENGTH:I = 0x1b

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private absoluteGranulePosition:D

.field private checksum:I

.field private headerTypeFlag:B

.field private isValid:Z

.field private lastPacketIncomplete:Z

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private pageLength:I

.field private pageSequenceNumber:I

.field private rawHeaderData:[B

.field private segmentTable:[B

.field private startByte:J

.field private streamSerialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    iput v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->startByte:J

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    move-result v4

    int-to-double v4, v4

    mul-int/lit8 v6, v1, 0x8

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    const/16 v2, 0x11

    invoke-static {p1, v1, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([BII)I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    const/16 v1, 0x12

    const/16 v2, 0x15

    invoke-static {p1, v1, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([BII)I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    const/16 v1, 0x16

    const/16 v2, 0x19

    invoke-static {p1, v1, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([BII)I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->checksum:I

    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1b

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    array-length v5, v4

    const/16 v6, 0xff

    if-ge v2, v5, :cond_2

    add-int/lit8 v1, v2, 0x1b

    aget-byte v1, p1, v1

    aput-byte v1, v4, v2

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    add-int/2addr v3, v1

    if-ge v1, v6, :cond_1

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    new-instance v6, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    sub-int/2addr v5, v3

    invoke-direct {v6, v5, v3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    new-instance v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    iget v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    :cond_3
    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    :cond_4
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructed OggPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 14
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to read OggPage at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v3, v2

    new-array v3, v3, [B

    .line 16
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 17
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_CONTAINS_ID3TAG:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 22
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    array-length v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x1a

    add-long/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 27
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v2, 0x1b

    .line 28
    new-array v2, v2, [B

    .line 29
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 30
    new-instance p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->setStartByte(J)V

    return-object p0
.end method

.method public static read(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 2
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to read OggPage at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v2, v1

    new-array v2, v2, [B

    .line 4
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1a

    .line 6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v1, v1, 0x1b

    .line 9
    new-array v0, v1, [B

    .line 10
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    new-instance p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private u(I)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method


# virtual methods
.method public getAbsoluteGranulePosition()D
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Of Samples: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    return-wide v0
.end method

.method public getCheckSum()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->checksum:I

    return p0
.end method

.method public getHeaderType()B
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    return p0
.end method

.method public getPacketList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    return-object p0
.end method

.method public getPageLength()I
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This page length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    return p0
.end method

.method public getPageSequence()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    return p0
.end method

.method public getRawHeaderData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    return-object p0
.end method

.method public getSegmentTable()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->segmentTable:[B

    return-object p0
.end method

.method public getSerialNumber()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    return p0
.end method

.method public getStartByte()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->startByte:J

    return-wide v0
.end method

.method public isLastPacketIncomplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    return p0
.end method

.method public setStartByte(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->startByte:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ogg Page Header:isValid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":oggPageHeaderLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":seqNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":packetIncomplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":serNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSerialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
