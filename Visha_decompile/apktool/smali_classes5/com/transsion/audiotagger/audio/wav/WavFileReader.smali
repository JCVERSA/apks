.class public Lcom/transsion/audiotagger/audio/wav/WavFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/wav/WavInfoReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/wav/WavInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/wav/WavInfoReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/io/File;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;

    move-result-object p0

    sget-object p1, Lcom/transsion/audiotagger/audio/wav/WavFileReader$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWavOptions()Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->syncTagsAfterRead()V

    :goto_0
    return-object p0
.end method
