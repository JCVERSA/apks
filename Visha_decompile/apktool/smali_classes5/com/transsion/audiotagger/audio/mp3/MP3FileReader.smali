.class public Lcom/transsion/audiotagger/audio/mp3/MP3FileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-object p0
.end method

.method public readMustBeWritable(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/mp3/MP3File;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-object p0
.end method
