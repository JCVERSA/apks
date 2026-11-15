.class public Lcom/transsion/audiotagger/audio/AudioFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

.field protected extension:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field protected tag:Lcom/transsion/audiotagger/tag/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/transsion/audiotagger/audio/AudioHeader;Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    .line 5
    iput-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/audio/AudioHeader;Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 8
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    .line 9
    iput-object p3, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    return-void
.end method

.method public static getBaseFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkFileExists(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading file:path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":abs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Ljava/io/FileNotFoundException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/AudioFile;->checkFileExists(Ljava/io/File;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p2, "r"

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read file:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/NoReadPermissionsException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/NoReadPermissionsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_PERMISSIONS_TO_WRITE_TO_FILE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    return-void
.end method

.method public convertID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/reference/ID3V2Version;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
    .locals 3

    instance-of p0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    const/4 v2, 0x3

    if-eqz p0, :cond_5

    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_5
    instance-of p0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v0, :cond_7

    if-eq p0, v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_7
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-object p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getExt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->FLAC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;

    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;-><init>(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->OGG:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP4:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4A:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object p0

    :cond_4
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4P:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object p0

    :cond_5
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WMA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;-><init>()V

    return-object p0

    :cond_6
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WAV:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/transsion/audiotagger/tag/wav/WavTag;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWavOptions()Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/wav/WavTag;-><init>(Lcom/transsion/audiotagger/audio/wav/WavOptions;)V

    return-object p0

    :cond_7
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/transsion/audiotagger/audio/real/RealTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/real/RealTag;-><init>()V

    return-object p0

    :cond_8
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RM:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/transsion/audiotagger/audio/real/RealTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/real/RealTag;-><init>()V

    return-object p0

    :cond_9
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;-><init>()V

    return-object p0

    :cond_a
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;-><init>()V

    return-object p0

    :cond_b
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;-><init>()V

    return-object p0

    :cond_c
    sget-object p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->DSF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/transsion/audiotagger/audio/dsf/Dsf;->createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create default tag for this file format"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->delete(Lcom/transsion/audiotagger/audio/AudioFile;)V

    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getAudioHeader()Lcom/transsion/audiotagger/audio/AudioHeader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    return-object p0
.end method

.method public getExt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-object p0
.end method

.method public getTag()Lcom/transsion/audiotagger/tag/Tag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    return-object p0
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lcom/transsion/audiotagger/tag/Tag;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getTagOrCreateDefault()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getID3V2Version()Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/audiotagger/audio/AudioFile;->convertID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/reference/ID3V2Version;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/AudioFile;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    return-object p0
.end method

.method public getTagOrCreateAndSetDefault()Lcom/transsion/audiotagger/tag/Tag;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getTagOrCreateDefault()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setTag(Lcom/transsion/audiotagger/tag/Tag;)V

    return-object v0
.end method

.method public getTagOrCreateDefault()Lcom/transsion/audiotagger/tag/Tag;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->createDefaultTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-void
.end method

.method public setTag(Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/AudioFile;->audioHeader:Lcom/transsion/audiotagger/audio/AudioHeader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFile;->tag:Lcom/transsion/audiotagger/tag/Tag;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/Tag;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n-------------------"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
