.class public abstract Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEncodingInfo(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Old method not used in version 2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getTag(Ljava/io/File;)Lcom/transsion/audiotagger/tag/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Old method not used in version 2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_READ:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;->getEncodingInfo(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;->getTag(Ljava/io/File;)Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    new-instance v1, Lcom/transsion/audiotagger/audio/AudioFile;

    invoke-direct {v1, p1, v0, p0}, Lcom/transsion/audiotagger/audio/AudioFile;-><init>(Ljava/io/File;Lcom/transsion/audiotagger/audio/AudioHeader;Lcom/transsion/audiotagger/tag/Tag;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/NoReadPermissionsException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/NoReadPermissionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
