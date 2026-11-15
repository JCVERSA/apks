.class public Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORM:Ljava/lang/String; = "FORM"

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.aiff.AudioFileHeader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readFileType(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/transsion/audiotagger/audio/aiff/AiffType;->AIFF:Lcom/transsion/audiotagger/audio/aiff/AiffType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/aiff/AiffType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->setFileType(Lcom/transsion/audiotagger/audio/aiff/AiffType;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/audiotagger/audio/aiff/AiffType;->AIFC:Lcom/transsion/audiotagger/audio/aiff/AiffType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/aiff/AiffType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->setFileType(Lcom/transsion/audiotagger/audio/aiff/AiffType;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid AIFF file: Incorrect file type info "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public readHeader(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    sget v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    if-lt p1, v1, :cond_1

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FORM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Reading AIFF header size:"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;->readFileType(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    sget p0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    int-to-long p0, p0

    sub-long/2addr v1, p0

    return-wide v1

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not an AIFF file: incorrect signature "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AIFF:Unable to read required number of databytes read:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":required:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
