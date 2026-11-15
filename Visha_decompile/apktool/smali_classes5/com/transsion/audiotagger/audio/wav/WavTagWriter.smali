.class public Lcom/transsion/audiotagger/audio/wav/WavTagWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;,
        Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.wav"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private checkExistingLocations(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;-><init>(Lcom/transsion/audiotagger/audio/wav/WavTagWriter;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-gez v1, :cond_0

    iput-boolean v4, v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    iput-boolean v4, v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-boolean v4, v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    iput-boolean v4, v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-boolean v4, v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->getChunkBeforeFirstMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    const-string v1, " Truncating corrupted metadata tags from:"

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void
.end method

.method private deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method private deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method private deleteTagChunk(Ljava/nio/channels/FileChannel;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    int-to-long p2, p3

    sub-long/2addr v0, p2

    sget-object p2, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Setting new length to:"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    sub-long v2, v0, v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;

    move-result-object p0
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget p0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget p0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v0, v0

    sget v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private saveActive(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    const-string v1, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p3

    int-to-long v0, p3

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p1, v2, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    :cond_4
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p1, v2, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_1

    :cond_7
    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    :cond_8
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_b
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_2
    return-void

    :cond_c
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveActiveExisting(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getActiveTag()Lcom/transsion/audiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveBoth(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveActive(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveBoth(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveActive(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    :goto_0
    return-void
.end method

.method private saveBoth(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    const-string v2, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->checkExistingLocations(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    move-result-object v1

    iget-boolean v2, v1, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v2

    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-direct {p0, p2, p3, v2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_9
    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_a
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_b
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method private seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance p2, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object p1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Unable to find ID3 chunk at original location has file been modified externally"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance p2, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object p1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Unable to find List chunk at original location has file been modified externally"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWavSaveOrder()Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method private writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    return-void
.end method

.method private writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeInfoChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    invoke-direct {p0, p1, p3, v2, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide p2

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    long-to-int v1, p3

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 10
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    return-void
.end method

.method private writePaddingToFile(Ljava/nio/channels/FileChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public convertID3Chunk(Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const-wide/16 v4, 0x1

    and-long v6, v0, v4

    cmp-long p2, v6, v2

    if-eqz p2, :cond_0

    add-long/2addr v0, v4

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    long-to-int v0, v0

    invoke-virtual {p2, p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    move-object p0, p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public convertInfoChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getAll()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;

    invoke-direct {v2, p0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;-><init>(Lcom/transsion/audiotagger/audio/wav/WavTagWriter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ":"

    const-string v5, " Writing:"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/TagField;

    check-cast v2, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {v2}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v9, v7

    invoke-static {v9}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    array-length v9, v7

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_1
    sget-object v9, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    if-ne v6, v9, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    sget-object v8, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    array-length v2, v7

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    array-length v2, v7

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getUnrecognisedFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget p1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public delete(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Deleting metadata from file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ":Setting new length to:"

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->checkExistingLocations(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    move-result-object v4

    iget-boolean v6, v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    if-eqz v6, :cond_1

    iget-boolean v4, v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_1

    :cond_0
    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_1
    iget-boolean v4, v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-direct {p0, v1, v3, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    invoke-direct {p0, v1, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v5

    invoke-direct {p0, v1, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v6

    invoke-direct {p0, v3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v3, v6}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v3, v5}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v1, v3, v6}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    invoke-direct {p0, v1, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_7
    invoke-direct {p0, v1, v3, v6}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v1, v3}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v4

    invoke-direct {p0, v3, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_9
    invoke-direct {p0, v1, v3, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    :cond_a
    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, p1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    new-instance v2, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v1, p2, p1

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method

.method public write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ":"

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Writing tag to file:start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWavSaveOptions()Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    move-result-object v3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, p2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    check-cast p1, Lcom/transsion/audiotagger/tag/wav/WavTag;

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    if-ne v3, v7, :cond_0

    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveBoth(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v5, v6

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    if-ne v3, v7, :cond_1

    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveActive(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    if-ne v3, v7, :cond_2

    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    if-ne v3, v7, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveBoth(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    if-ne v3, v7, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    :goto_0
    invoke-direct {p0, v5}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v6, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " No setting for:WavSaveOptions"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_4
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v5, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
