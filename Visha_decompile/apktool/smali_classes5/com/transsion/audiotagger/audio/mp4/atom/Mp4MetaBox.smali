.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# static fields
.field public static final FLAGS_LENGTH:I = 0x4


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static createiTunesStyleMetaBox(I)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;
    .locals 2

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v1, v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public processData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_META_ATOM_CHILD_DATA_NOT_NULL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
