.class public Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader;
.source "SourceFile"


# instance fields
.field private ir:Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;

.field private tr:Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;->ir:Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;->tr:Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;

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

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;->ir:Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileReader;->tr:Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    move-result-object p0

    return-object p0
.end method
