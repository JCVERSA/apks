.class Lcom/transsion/transfer/androidasync/y;
.super Lcom/transsion/transfer/androidasync/o;
.source "source.java"


# instance fields
.field b:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/o;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/y;->b:Ljava/nio/channels/ServerSocketChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public j(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/y;->b:Ljava/nio/channels/ServerSocketChannel;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public l()V
    .locals 0

    .line 1
    return-void
.end method

.method public m([Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v0, "Can\'t write ServerSocketChannel"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 1

    .line 2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 0

    .line 3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
