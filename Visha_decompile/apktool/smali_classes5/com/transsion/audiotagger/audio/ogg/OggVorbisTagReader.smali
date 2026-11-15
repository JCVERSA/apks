.class public Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    return-void
.end method

.method private convertToVorbisCommentPacket(Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Comments finish on 2nd Page because there is another packet on this page"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Comments finish on 2nd Page because this packet is complete"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v0, "Reading next page"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Comments finish on Page because there is another packet on this page"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Comments finish on Page because this packet is complete"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convertToVorbisSetupHeaderPacket(JLjava/io/RandomAccessFile;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    const/4 p2, 0x7

    new-array p2, p2, [B

    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x7

    sub-long/2addr v3, v5

    invoke-virtual {p3, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p0

    const-string p2, "Setupheader finishes on this page"

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Reading another page"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Setupheader finish on Page because this packet is complete"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Unable to find setup header(2), unable to write ogg file"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    const/4 p2, 0x7

    new-array p2, p2, [B

    invoke-virtual {p3, p2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x7

    sub-long/2addr v3, v5

    invoke-virtual {p3, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p0

    const-string p2, "Setupheader finishes on this page"

    const/4 v3, 0x2

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Reading another page"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string p1, "Setupheader finish on Page because this packet is complete"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_5

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Unable to find setup header(2), unable to write ogg file"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVorbisCommentHeader([B)Z
    .locals 3

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x6

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    const-string p1, "vorbis"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public isVorbisSetupHeader([B)Z
    .locals 3

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x6

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    const-string p1, "vorbis"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Starting to read ogg vorbis tag from file:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object p0

    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v0, "CompletedReadCommentTag"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object p0
.end method

.method public readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Started to read comment and setup header sizes:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1b

    int-to-long v8, v8

    sub-long v11, v6, v8

    const/4 v6, 0x7

    new-array v7, v6, [B

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, v7}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    const-wide/16 v9, 0x7

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v7, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found start of comment header at:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v14

    add-int/2addr v8, v14

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_1

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v5

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v13, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found end of comment:size:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "finishes at file position:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "Found start of vorbis setup header at file position:"

    const-string v13, "finishes at:"

    const-string v15, "Found end of setupheader:size:"

    const-string v6, " to setup header size"

    const-string v7, "Adding:"

    if-ne v9, v14, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    const/4 v4, 0x7

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, v4}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v19

    move-wide/from16 v21, v11

    const-wide/16 v16, 0x7

    sub-long v11, v19, v16

    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1b

    move-wide/from16 v19, v2

    int-to-long v2, v0

    sub-long/2addr v10, v2

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v5

    add-int/2addr v0, v5

    sget-object v5, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_3
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object/from16 v4, v18

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :goto_5
    move/from16 v16, v0

    move-object/from16 v17, v4

    move-wide v13, v10

    :goto_6
    move-wide/from16 v2, v19

    goto/16 :goto_b

    :cond_7
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-wide/from16 v19, v2

    move-object/from16 v18, v4

    move-wide/from16 v21, v11

    move v3, v14

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x7

    new-array v9, v4, [B

    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, v9}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    const-wide/16 v16, 0x7

    sub-long v11, v11, v16

    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1b

    int-to-long v11, v0

    sub-long/2addr v9, v11

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    int-to-long v11, v0

    sub-long/2addr v9, v11

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_d

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v5

    add-int/2addr v0, v5

    sget-object v5, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    if-gt v5, v11, :cond_b

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v2

    goto :goto_7

    :cond_b
    :goto_8
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :goto_9
    move/from16 v16, v0

    move-object/from16 v17, v4

    move-wide v13, v9

    goto/16 :goto_6

    :cond_c
    move/from16 v16, v0

    move-wide v13, v9

    move-object/from16 v17, v18

    goto/16 :goto_6

    :cond_d
    :goto_a
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_9

    :goto_b
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    move-object v10, v0

    move-wide/from16 v11, v21

    move v15, v8

    invoke-direct/range {v10 .. v17}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;-><init>(JJIILjava/util/List;)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting but got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const/4 v1, 0x7

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Cannot find comment block (no vorbiscomment header)"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readOggVorbisRawSize(Ljava/io/RandomAccessFile;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public readRawPacketData(Ljava/io/RandomAccessFile;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 1st page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 2nd page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisCommentPacket(Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    const-string p1, "Cannot find comment block (no vorbiscomment header)"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
