.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# static fields
.field public static final NO_OF_OFFSETS_LENGTH:I = 0x4

.field public static final NO_OF_OFFSETS_POS:I = 0x4

.field public static final OFFSET_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private firstOffSet:I

.field private noOfOffSets:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 5
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 8
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 11
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1, p2, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 15
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    :goto_0
    iget p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-ge v0, p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1, p2, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p1

    add-int/2addr p1, p3

    .line 18
    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static debugShowStcoInfo(Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getStco(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->printAllOffsets()V

    return-void
.end method

.method public static getStco(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    const-string v1, "This file does not appear to be an audio file"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MVHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v2, p0, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->SMHD:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v1, p0, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public adjustOffsets(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFirstOffSet()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return p0
.end method

.method public getNoOfOffSets()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    return p0
.end method

.method public printAllOffsets()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Print Offsets:start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "offset into audio data is:"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, "Print Offsets:end"

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public printTotalOffset()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    invoke-static {v0, v2, p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p0

    add-int/2addr v1, p0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Print Offset Total:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
