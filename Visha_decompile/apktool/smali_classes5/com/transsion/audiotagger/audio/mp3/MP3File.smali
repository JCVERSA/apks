.class public Lcom/transsion/audiotagger/audio/mp3/MP3File;
.super Lcom/transsion/audiotagger/audio/AudioFile;
.source "SourceFile"


# static fields
.field public static final LOAD_ALL:I = 0xe

.field public static final LOAD_IDV1TAG:I = 0x2

.field public static final LOAD_IDV2TAG:I = 0x4

.field public static final LOAD_LYRICS3:I = 0x8

.field private static final MINIMUM_FILESIZE:I = 0x96

.field protected static tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;


# instance fields
.field private id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

.field private id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

.field private id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

.field private lyrics3tag:Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    .line 4
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->lyrics3tag:Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;

    .line 5
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    .line 10
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    .line 11
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->lyrics3tag:Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;

    .line 12
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    .line 13
    :try_start_0
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 14
    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/audio/AudioFile;->checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v1

    .line 16
    sget-object p3, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TagHeaderSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 17
    new-instance p3, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p3, p1, v1, v2}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    .line 18
    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 19
    sget-object p3, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First header found after tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 20
    iget-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    check-cast p3, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p0, v1, v2, p3}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->checkAudioStart(JLcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;)Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V

    .line 22
    iget-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    check-cast p3, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    long-to-int p3, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->readV2Tag(Ljava/io/File;II)V

    .line 23
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    goto :goto_1

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-eqz p1, :cond_2

    .line 26
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 28
    :cond_4
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private checkAudioStart(JLcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;)Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_ID3TAG_LENGTH_INCORRECT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking from start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-object p3

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    :cond_1
    long-to-int p1, p1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->isFilePortionNull(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    :cond_2
    new-instance p1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    iget-object v3, v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p1, p2, v1, v2}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_3

    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_4

    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3
.end method

.method private static createPlainTextStructureFormatter()V
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method private static createXMLStructureFormatter()V
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/logging/XMLTagDisplayFormatter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/logging/XMLTagDisplayFormatter;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method public static getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    return-object v0
.end method

.method private isFilePortionNull(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking file portion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/audiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p1

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :goto_0
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method private readLyrics3Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v0, "Attempting to read id3v1tags"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :try_start_0
    new-instance p3, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p3, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v0, "No ids3v11 tag found"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-nez p3, :cond_0

    new-instance p3, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;
    :try_end_1
    .catch Lcom/transsion/audiotagger/tag/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string p1, "No id3v1 tag found"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private readV2Tag(Ljava/io/File;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt p3, v2, :cond_2

    sget-object v2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Attempting to read id3v2tags"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, p3, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    sget-object p2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_2
    .catch Lcom/transsion/audiotagger/tag/TagNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_3

    :catch_0
    :try_start_3
    sget-object p2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "No id3v24 tag found"

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_4
    .catch Lcom/transsion/audiotagger/tag/TagNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_5
    sget-object p2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "No id3v23 tag found"

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_1
    :try_start_6
    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_1

    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_6
    .catch Lcom/transsion/audiotagger/tag/TagNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_7
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string p1, "No id3v22 tag found"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1
    :goto_2
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v4, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough room for valid id3v2 tag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->save()V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/UnableToModifyFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/NoWritePermissionsException;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/exceptions/NoWritePermissionsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V24:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V23:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne p0, v0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V22:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object p0
.end method

.method public delete(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;->delete(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    :cond_0
    instance-of p1, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    :cond_1
    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->createPlainTextStructureFormatter()V

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->createStructure()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->createXMLStructureFormatter()V

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->createStructure()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->tagFormatter:Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    check-cast v0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_1
    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_a
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :goto_5
    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    const-string p1, "There is no ID3v2Tag data in this file"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHash()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const-string v0, "MD5"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getHash(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "MD5"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getHash(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getHash(Ljava/lang/String;I)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getMP3StartByte(Ljava/io/File;)J

    move-result-wide v1

    .line 6
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->hasID3v1Tag()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->getSize()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v4

    .line 9
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    new-array v5, p2, [B

    .line 11
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 12
    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v6, v1

    int-to-long v0, p0

    sub-long/2addr v6, v0

    move p0, p2

    :goto_1
    int-to-long v0, p0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 14
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 15
    invoke-virtual {p1, v5, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr p0, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    long-to-int v0, v6

    sub-int/2addr v0, p0

    add-int/2addr v0, p2

    .line 16
    invoke-virtual {v3, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    .line 17
    invoke-virtual {p1, v5, v4, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 18
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 20
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 21
    :goto_4
    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getID3v1Tag()Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-object p0
.end method

.method public getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-object p0
.end method

.method public getID3v2TagAsv24()Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    return-object p0
.end method

.method public getMP3AudioHeader()Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getAudioHeader()Lcom/transsion/audiotagger/audio/AudioHeader;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    return-object p0
.end method

.method public getMP3StartByte(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v0

    new-instance v2, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First header found after tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->checkAudioStart(JLcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;)Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide p0

    return-wide p0
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lcom/transsion/audiotagger/tag/Tag;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getTagOrCreateDefault()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/audiotagger/audio/AudioFile;->convertID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/reference/ID3V2Version;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    return-object p0
.end method

.method public getTagOrCreateDefault()Lcom/transsion/audiotagger/tag/Tag;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getID3v2Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public hasID3v1Tag()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasID3v2Tag()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public precheck(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->precheck(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v2Save()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "rw"

    if-eqz v1, :cond_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 9
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 10
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 11
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting ID3v2 tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto/16 :goto_3

    :catch_2
    move-exception p0

    move-object v0, v1

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_3
    move-exception p0

    goto/16 :goto_2

    :catch_4
    move-exception p0

    goto/16 :goto_3

    :catch_5
    move-exception p0

    goto/16 :goto_4

    .line 13
    :cond_0
    :try_start_3
    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing ID3v2 tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getAudioHeader()Lcom/transsion/audiotagger/audio/AudioHeader;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;

    .line 15
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    .line 16
    iget-object v5, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v5, p1, v3, v4}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/File;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New mp3 start byte: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v5, v6}, Lcom/transsion/audiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 19
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :try_start_4
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isLyrics3Save()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->lyrics3tag:Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;->write(Ljava/io/RandomAccessFile;)V

    .line 23
    :cond_2
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1Save()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "Processing ID3v1"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-nez v0, :cond_3

    .line 26
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v0, "Deleting ID3v1"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 27
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 28
    :cond_3
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "Saving ID3v1"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 31
    :goto_2
    :try_start_5
    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw p0

    .line 33
    :goto_3
    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw p0

    .line 35
    :goto_4
    sget-object v1, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 38
    :cond_5
    throw p0
.end method

.method public setID3v1Tag(Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:abstract"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    :goto_0
    return-void
.end method

.method public setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setID3v2TagOnly(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2tag:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    return-void
.end method

.method public setTag(Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v1Tag(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    :goto_0
    return-void
.end method
