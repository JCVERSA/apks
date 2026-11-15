.class public Lcom/transsion/audiotagger/audio/AudioFileIO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultInstance:Lcom/transsion/audiotagger/audio/AudioFileIO;

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private final modificationHandler:Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

.field public readers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/generic/AudioFileReader;",
            ">;"
        }
    .end annotation
.end field

.field public writers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    new-instance v0, Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/generic/ModificationHandler;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->modificationHandler:Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->prepareReadersAndWriters()V

    return-void
.end method

.method public static varargs closeQuietly([Ljava/io/Closeable;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static delete(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->deleteTag(Lcom/transsion/audiotagger/audio/AudioFile;)V

    return-void
.end method

.method public static getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->defaultInstance:Lcom/transsion/audiotagger/audio/AudioFileIO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/AudioFileIO;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/AudioFileIO;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->defaultInstance:Lcom/transsion/audiotagger/audio/AudioFileIO;

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->defaultInstance:Lcom/transsion/audiotagger/audio/AudioFileIO;

    return-object v0
.end method

.method private prepareReadersAndWriters()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v2, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->OGG:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/audiotagger/audio/ogg/OggFileReader;

    invoke-direct {v4}, Lcom/transsion/audiotagger/audio/ogg/OggFileReader;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v3, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->FLAC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;

    invoke-direct {v5}, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v4, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP3:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/mp3/MP3FileReader;

    invoke-direct {v6}, Lcom/transsion/audiotagger/audio/mp3/MP3FileReader;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v5, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP4:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;

    invoke-direct {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v6, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4A:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;

    invoke-direct {v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v7, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4P:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;

    invoke-direct {v9}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v8, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4B:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;

    invoke-direct {v10}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v9, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WAV:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/transsion/audiotagger/audio/wav/WavFileReader;

    invoke-direct {v11}, Lcom/transsion/audiotagger/audio/wav/WavFileReader;-><init>()V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v10, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WMA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;

    invoke-direct {v12}, Lcom/transsion/audiotagger/audio/asf/AsfFileReader;-><init>()V

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v11, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v11}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;

    invoke-direct {v13}, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v12, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;

    invoke-direct {v14}, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v13, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v13}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;

    invoke-direct {v15}, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v14, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->DSF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    new-instance v14, Lcom/transsion/audiotagger/audio/dsf/DsfFileReader;

    invoke-direct {v14}, Lcom/transsion/audiotagger/audio/dsf/DsfFileReader;-><init>()V

    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/audiotagger/audio/real/RealFileReader;

    invoke-direct {v1}, Lcom/transsion/audiotagger/audio/real/RealFileReader;-><init>()V

    iget-object v14, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v15, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v15}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v15, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RM:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v15}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;

    invoke-direct {v14}, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;-><init>()V

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/flac/FlacFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/flac/FlacFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/mp3/MP3FileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/mp3/MP3FileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/wav/WavFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/wav/WavFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual {v13}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/audiotagger/audio/dsf/DsfFileWriter;

    invoke-direct {v3}, Lcom/transsion/audiotagger/audio/dsf/DsfFileWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    iget-object v1, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;

    iget-object v3, v0, Lcom/transsion/audiotagger/audio/AudioFileIO;->modificationHandler:Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;->setAudioFileModificationListener(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->readFile(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    return-object p0
.end method

.method public static readAs(Ljava/io/File;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->readFileAs(Ljava/io/File;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    return-object p0
.end method

.method public static readMagic(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->readFileMagic(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    return-object p0
.end method

.method public static write(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->writeFile(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/lang/String;)V

    return-void
.end method

.method public static writeAs(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/AudioFileIO;->getDefaultAudioFileIO()Lcom/transsion/audiotagger/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->writeFile(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid target path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addAudioFileModificationListener(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->modificationHandler:Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/ModificationHandler;->addAudioFileModificationListener(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;)V

    return-void
.end method

.method public checkFileExists(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

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
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

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

.method public deleteTag(Lcom/transsion/audiotagger/audio/AudioFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;->delete(Lcom/transsion/audiotagger/audio/AudioFile;)V

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_DELETER_FOR_THIS_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFile(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFileAs(Ljava/io/File;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFileMagic(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/TagException;,
            Lcom/transsion/audiotagger/audio/exceptions/ReadOnlyFileException;,
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getMagicExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAudioFileModificationListener(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->modificationHandler:Lcom/transsion/audiotagger/audio/generic/ModificationHandler;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/ModificationHandler;->removeAudioFileModificationListener(Lcom/transsion/audiotagger/audio/generic/AudioFileModificationListener;)V

    return-void
.end method

.method public writeFile(Lcom/transsion/audiotagger/audio/AudioFile;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getExt()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->copyThrowsOnException(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/audio/AudioFile;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error While Copying"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/AudioFileIO;->writers:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    return-void

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NO_WRITER_FOR_THIS_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
