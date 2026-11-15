.class public Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;
.source "SourceFile"


# instance fields
.field private im:Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;

.field private ir:Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;->ir:Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;->im:Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;

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

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;->ir:Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

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

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileReader;->im:Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    move-result-object p0

    return-object p0
.end method
