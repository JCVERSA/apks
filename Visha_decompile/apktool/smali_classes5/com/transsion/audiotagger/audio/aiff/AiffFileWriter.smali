.class public Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;
.source "SourceFile"


# instance fields
.field private tw:Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter2;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;->tw:Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;

    return-void
.end method


# virtual methods
.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;->tw:Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->delete(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method public writeTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/AiffFileWriter;->tw:Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method
