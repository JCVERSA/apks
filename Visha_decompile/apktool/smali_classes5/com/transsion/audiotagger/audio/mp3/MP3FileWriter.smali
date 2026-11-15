.class public Lcom/transsion/audiotagger/audio/mp3/MP3FileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v1Tag(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/audio/mp3/MP3File;

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->setID3v2Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deleteTag(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->commit()V

    return-void
.end method

.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeFile(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->commit()V

    return-void
.end method

.method public writeTag(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MP3FileReaderwriteTag should not be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
