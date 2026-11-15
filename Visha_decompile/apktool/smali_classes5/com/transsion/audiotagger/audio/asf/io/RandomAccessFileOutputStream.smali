.class public final Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final targetFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
