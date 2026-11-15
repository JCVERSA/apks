.class public Lcom/transsion/audiotagger/audio/mp3/ByteArrayMP3AudioHeader;
.super Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v4}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {v3}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lcom/transsion/audiotagger/audio/mp3/XingFrame;
    :try_end_2
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/mp3/ByteArrayMP3AudioHeader;->isNextFrameValid(Ljava/nio/ByteBuffer;)Z

    move-result v3
    :try_end_3
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    move v3, v5

    :catch_1
    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    if-eqz v3, :cond_0

    :catch_2
    :goto_0
    array-length p1, p1

    int-to-long v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    return-void
.end method

.method private isNextFrameValid(Ljava/nio/ByteBuffer;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Check next frame confirms is an audio header "

    invoke-virtual {p0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Check next frame has identified this is not an audio header"

    invoke-virtual {p0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1
.end method
