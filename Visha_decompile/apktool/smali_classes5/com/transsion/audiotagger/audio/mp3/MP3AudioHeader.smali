.class public Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/AudioHeader;


# static fields
.field private static final CONVERTS_BYTE_TO_BITS:I = 0x8

.field private static final CONVERT_TO_KILOBITS:I = 0x3e8

.field private static final FILE_BUFFER_SIZE:I = 0x1388

.field private static final IS_VBR_IDENTIFIER:C = '~'

.field private static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field private static final NO_SECONDS_IN_HOUR:I = 0xe10

.field private static final TYPE_MP3:Ljava/lang/String; = "mp3"

.field public static logger:Ljava/util/logging/Logger;

.field private static final timeInFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitrate:J

.field private encoder:Ljava/lang/String;

.field private fileSize:J

.field protected mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

.field protected mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

.field protected mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

.field private numberOfFrames:J

.field private numberOfFramesEstimate:J

.field private startByte:J

.field private timePerFrame:D

.field private trackLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "kk:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    const-string v0, "com.transsion.audiotagger.audio.mp3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No audio header found within"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_AUDIO_HEADER_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTimePerFrame()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    return-wide v0
.end method

.method private isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking next frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":fpc:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "skipping to:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v0

    const/16 v1, 0x12c4

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    sget-object p1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Frame size is too large to be a frame:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v1

    const/16 v3, 0xc4

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_4

    sget-object p1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer too small, need to reload, buffer size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    invoke-virtual {p5, p4, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-gt p1, v3, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Nearly at end of file, no header found:"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p2

    add-int/2addr p2, v3

    if-gt p1, p2, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Nearly at end of file, no room for next frame, no header found:"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    :cond_3
    move p1, v2

    :cond_4
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p4}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Check next frame confirms is an audio header "

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Check next frame has identified this is not an audio header"

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "isMPEGFrame has identified this is not an audio header"

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v2
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object p0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object p0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    const/16 v1, 0x7e

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getChannelModeAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmphasis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 0

    const-string p0, "mp3"

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMp3StartByte()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-wide v0
.end method

.method public getMpegLayer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfFrames()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    return-wide v0
.end method

.method public getNumberOfFramesEstimate()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    return-wide v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSampleRateAsNumber()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTrackLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getTrackLengthAsString()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getTrackLength()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v4, 0xe10

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    :try_start_2
    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_0
    sget-object v1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " failed with ParseException:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public isCopyrighted()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted()Z

    move-result p0

    return p0
.end method

.method public isLossless()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOriginal()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isOriginal()Z

    move-result p0

    return p0
.end method

.method public isPadding()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    move-result p0

    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isPrivate()Z

    move-result p0

    return p0
.end method

.method public isProtected()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isProtected()Z

    move-result p0

    return p0
.end method

.method public isVariableBitRate()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->isVbr()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    move-result p0

    return p0
.end method

.method public seek(Ljava/io/File;J)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-wide/from16 v1, p2

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v0, 0x1388

    :try_start_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v11, v0, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide v12, v1

    move v1, v8

    :cond_0
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0xc4

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v11, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v11, v0, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-gt v2, v3, :cond_1

    :try_start_6
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return v8

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-wide v3, v12

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-wide v3, v12

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :goto_0
    move-object v1, v0

    goto/16 :goto_6

    :cond_1
    :try_start_8
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v14, 0x1

    if-eqz v2, :cond_7

    :try_start_9
    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found Possible header at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    move-result-object v2

    iput-object v2, v7, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_9
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {v0, v2}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible XingHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_2
    move v1, v14

    goto :goto_4

    :cond_3
    :goto_1
    :try_start_b
    invoke-static {v1}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;
    :try_end_b
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_c
    iget-object v1, v7, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->isVbriFrame(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible VbriHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_c
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_5
    :try_start_d
    invoke-static {v1}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->parseVBRIFrame(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;
    :try_end_d
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_3
    :goto_2
    move-wide v3, v12

    goto :goto_5

    :cond_6
    move-object v1, p0

    move-object/from16 v2, p1

    move-wide v3, v12

    move-object v5, v0

    move-object v6, v11

    :try_start_e
    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z

    move-result v1
    :try_end_e
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_7

    :goto_3
    move v14, v1

    goto :goto_2

    :catch_4
    :cond_7
    :goto_4
    :try_start_f
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    if-eqz v1, :cond_0

    goto :goto_3

    :goto_5
    :try_start_10
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    move v8, v14

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-wide v12, v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-wide v12, v3

    :goto_6
    if-eqz v11, :cond_8

    :try_start_12
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_8
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    :goto_a
    sget-object v1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IOException occurred whilst trying to find sync"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception v0

    move-object/from16 v10, p1

    :goto_b
    sget-object v1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Reached end of file without finding sync match"

    invoke-virtual {v1, v2, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return found matching mp3 header starting at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    invoke-virtual {p0, v3, v4}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    return v8
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-void
.end method

.method public setBitRate()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    const-wide/16 v1, 0x8

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v7, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v1

    long-to-double v0, v5

    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    :cond_2
    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v7, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v1

    long-to-double v0, v5

    iget-wide v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    :goto_0
    return-void
.end method

.method public setEncoder()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->getLameFrame()Lcom/transsion/audiotagger/audio/mp3/LameFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->getLameFrame()Lcom/transsion/audiotagger/audio/mp3/LameFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/LameFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    return-void
.end method

.method public setMp3StartByte(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-void
.end method

.method public setNumberOfFrames()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isFrameCountEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    :goto_0
    return-void
.end method

.method public setTimePerFrame()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getNumberOfChannels()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    :cond_2
    return-void
.end method

.method public setTrackLength()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    long-to-double v0, v0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getTimePerFrame()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numberOfFrames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numberOfFramesEst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " timePerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " trackLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getTrackLengthAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mpegframeheader:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mp3XingFrame:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lcom/transsion/audiotagger/audio/mp3/VbriFrame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/VbriFrame;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mp3VbriFrame:false"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method
