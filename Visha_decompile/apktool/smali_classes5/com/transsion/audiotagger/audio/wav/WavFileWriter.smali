.class public Lcom/transsion/audiotagger/audio/wav/WavFileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->delete(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method public writeTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/wav/WavTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method
