.class public Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;,
        Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;
    }
.end annotation


# static fields
.field protected static final FRAME_COMPRESSION_UNCOMPRESSED_SIZE:I = 0x4

.field protected static final FRAME_ENCRYPTION_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_FLAGS_SIZE:I = 0x2

.field protected static final FRAME_GROUPING_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_HEADER_SIZE:I = 0xa

.field protected static final FRAME_ID_SIZE:I = 0x4

.field protected static final FRAME_SIZE_SIZE:I = 0x4

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# instance fields
.field private encryptionMethod:I

.field private groupIdentifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Z][0-9A-Z]{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 13
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating frame from a frame of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    if-nez v0, :cond_d

    .line 15
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {v1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 17
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-direct {v1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 20
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    .line 21
    :cond_1
    :goto_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v2, "UNKNOWN:Orig id is:"

    const-string v3, ":New id is:"

    if-eqz v1, :cond_8

    .line 22
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 24
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 25
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DEPRECATED:Orig id is:"

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->getOriginalFrameBody()Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 30
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 31
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v2

    invoke-static {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 32
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :cond_3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 35
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 36
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v2

    invoke-static {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 37
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v24FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "isID3v24FrameIdentifier"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->convertFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 42
    const-string v1, "V4:Orig id is:"

    if-eqz v0, :cond_5

    .line 43
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 45
    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 46
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;B)B

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    return-void

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->forceFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 48
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 50
    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 51
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;B)B

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    return-void

    .line 52
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v2, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 54
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 55
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;[B)V

    iput-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 56
    invoke-virtual {v3, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 57
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":New Id Unsupported is:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_7
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orig id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Unable to create Frame Body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 59
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 62
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V3:Orig id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 64
    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 65
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 67
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V22Orig id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 69
    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 70
    :cond_a
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 71
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 72
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deprecated:V22:orig id id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_b
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 75
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    .line 76
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_c
    :goto_1
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame is unknown version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 6
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 7
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 10
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {p2, p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;)V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 11
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 4
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    .line 83
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 81
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frameSize"

    iget v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->createStructure()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->createStructure()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-object p0
.end method

.method public getEncryptionMethod()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    return p0
.end method

.method public getFrameHeaderSize()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getFrameIdSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getFrameSizeSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getGroupIdentifier()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object p0
.end method

.method public isBinary()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/ID3Frames;->isBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCommon()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/ID3Frames;->isCommon(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ":"

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    const-string v3, " is invalid frame:"

    if-ltz v1, :cond_f

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_d

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "Unsupported"

    :cond_1
    :goto_0
    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Identifier was:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reading using:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "with frame size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Decompressed frame size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v2, -0x1

    :goto_1
    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    :cond_3
    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

    :cond_4
    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isNonStandardFlags()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":InvalidEncodingFlags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v6, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v6

    invoke-static {v6}, Lcom/transsion/audiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    mul-int/lit8 v4, v4, 0x64

    if-gt v2, v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid frame, frame size "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cannot be:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " when uncompressed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_c

    :try_start_0
    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1, v2, v4}, Lcom/transsion/audiotagger/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v5, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v1, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1, v2, v4}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    :goto_3
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    instance-of v1, v1, Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;

    if-nez v1, :cond_b

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Converted frameBody with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to deprecated frameBody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0

    :cond_c
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid frame, realframeSize is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Invalid Frame size of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " larger than size of"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " before mp3 audio:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Empty Frame Size:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-instance p0, Lcom/transsion/audiotagger/tag/EmptyFrameException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is empty frame"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Invalid Frame Size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Invalid identifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->getFrameIdSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":is not a valid ID3v2.30 frame"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing frame to buffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v2

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame Size Is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->unsetNonStandardFlags()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->unsetCompression()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->encryptionMethod:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->groupIdentifier:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
