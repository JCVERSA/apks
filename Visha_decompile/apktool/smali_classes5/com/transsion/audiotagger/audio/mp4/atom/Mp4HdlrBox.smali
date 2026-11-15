.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    }
.end annotation


# static fields
.field public static final HANDLER_LENGTH:I = 0x4

.field public static final HANDLER_POS:I = 0x8

.field public static final ITUNES_META_HDLR_DAT_LENGTH:I = 0x1a

.field public static final NAME_LENGTH:I = 0x2

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final RESERVED1_LENGTH:I = 0x4

.field public static final RESERVED1_POS:I = 0xc

.field public static final RESERVED2_LENGTH:I = 0x4

.field public static final RESERVED3_LENGTH:I = 0x4

.field public static final RESERVED_FLAG_LENGTH:I = 0x4

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static mediaDataTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerType:Ljava/lang/String;

.field private mediaDataType:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field private name:Ljava/lang/String;

.field private reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static createiTunesStyleHdlrBox()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x6d

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xa

    const/16 v3, 0x69

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    const/16 v3, 0x72

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xd

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xf

    const/16 v3, 0x6c

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;

    invoke-direct {v2, v0, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-object v2
.end method


# virtual methods
.method public getHandlerType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaDataType()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    return-object p0
.end method

.method public processData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":human readable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
