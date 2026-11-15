.class public final Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    :goto_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid negative value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
