.class public Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_FRAMING_BIT_LENGTH:I = 0x1

.field public static final FRAMING_BIT_VALID_VALUE:B = 0x1t

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;->creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    return-void
.end method


# virtual methods
.method public convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;->creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisHeader;->CAPTURE_PATTERN_AS_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method
