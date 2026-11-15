.class public abstract Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTag;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;-><init>()V

    return-void
.end method
