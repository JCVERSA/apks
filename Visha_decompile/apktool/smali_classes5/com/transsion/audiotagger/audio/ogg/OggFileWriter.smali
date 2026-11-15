.class public Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vtw:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;->vtw:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;

    return-void
.end method


# virtual methods
.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;->vtw:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
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

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggFileWriter;->vtw:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
