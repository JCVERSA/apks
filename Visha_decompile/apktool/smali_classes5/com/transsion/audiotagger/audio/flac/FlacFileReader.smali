.class public Lcom/transsion/audiotagger/audio/flac/FlacFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;
.source "SourceFile"


# instance fields
.field private ir:Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;

.field private tr:Lcom/transsion/audiotagger/audio/flac/FlacTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;->ir:Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;->tr:Lcom/transsion/audiotagger/audio/flac/FlacTagReader;

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;->ir:Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/io/File;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacFileReader;->tr:Lcom/transsion/audiotagger/audio/flac/FlacTagReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/flac/FlacTag;

    move-result-object p0

    return-object p0
.end method
