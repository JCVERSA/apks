.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4DrmsBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public processData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v2, 0x73

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    and-int/2addr v1, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v3, v4

    :cond_4
    and-int v0, v1, v3

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    return-void
.end method
