.class public Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method
