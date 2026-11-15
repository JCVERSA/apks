.class public Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;
.source "SourceFile"


# instance fields
.field private tw:Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;->tw:Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;

    return-void
.end method


# virtual methods
.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;->tw:Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public writeTag(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4FileWriter;->tw:Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
