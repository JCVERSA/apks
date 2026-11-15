.class public abstract Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;->deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation
.end method

.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Old method not used in version 2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;->writeTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTag(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Old method not used in version 2"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract writeTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation
.end method
