.class public Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
.source "SourceFile"


# static fields
.field protected static FIELD_TAG_EXT_SIZE_LENGTH:I = 0x4

.field public static final MAJOR_VERSION:B = 0x3t

.field public static final MASK_V23_CRC_DATA_PRESENT:I = 0x80

.field public static final MASK_V23_EMBEDDED_INFO_FLAG:I = 0x2

.field public static final MASK_V23_EXPERIMENTAL:I = 0x20

.field public static final MASK_V23_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V23_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x4

.field protected static TAG_EXT_HEADER_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_LENGTH:I = 0xa

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field private crc32:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field private paddingSize:I

.field protected unsynchronization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    rsub-int/lit8 v0, v0, 0xa

    sput v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 5
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 6
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 24
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 25
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 27
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 30
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_1

    .line 31
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 37
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string p1, "Created tag from a tag of a different version"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 12
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 13
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 14
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 15
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 17
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 48
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 43
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 44
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 46
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v1, :cond_1

    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p1, :cond_7

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget v3, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v3

    if-ne p2, v0, :cond_6

    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_CRC:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-nez v1, :cond_4

    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p2, :cond_5

    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_CRC_SIZE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_INVALID:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    :goto_0
    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_9
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    sget v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v1, v1, 0xa

    sget v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v2

    const/16 v3, 0x80

    if-eqz v2, :cond_0

    int-to-byte v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    :cond_1
    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    add-int/2addr p2, p1

    add-int/2addr p2, v2

    invoke-static {p2}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz p2, :cond_5

    sget p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte p1, v3

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    sget p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    :try_start_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->convertFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public convertFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    const-string v2, "TYER"

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTYER;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    const-string v2, "TDAT"

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDAT;->setMonthOnly(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    const-string v1, "TIME"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIME;->setHoursOnly(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIPL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "IPLS"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-object v3, p1

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v2, v3, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v1, p1, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TMCL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMCL;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMCL;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-object v3, p1

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v2, v3, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v1, p1, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-object p0
.end method

.method public copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    iget v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    iget p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    const-string v1, "PictureData"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "PictureType"

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MIMEType"

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    .line 15
    aget-object v1, p2, v0

    if-eqz v1, :cond_b

    .line 16
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 20
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 21
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_a

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    const-string v2, "TYER"

    if-ne p1, p2, :cond_3

    .line 27
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p0

    .line 29
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 30
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p0

    .line 32
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 33
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p0

    .line 35
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 36
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p0

    .line 38
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p2, :cond_9

    .line 39
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "TDAT"

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    if-lt p2, v3, :cond_7

    .line 42
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x8

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 46
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 47
    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    .line 49
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v4, :cond_8

    .line 50
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 53
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 54
    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 55
    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    :cond_8
    return-object p1

    :cond_9
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 57
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_c
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 5
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->isLinked()Z

    move-result v1

    const-string v2, ""

    const-string v3, "Description"

    const-string v4, "MIMEType"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ISO-8859-1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    const-string p1, "-->"

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    move-result-object p0

    return-object p0
.end method

.method public createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;
    .locals 0

    .line 2
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createStructure()V
    .locals 5

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    iget v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iget v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-ne v2, v0, :cond_5

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/TagField;

    instance-of v1, v0, Lcom/transsion/audiotagger/tag/TagTextField;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {v0}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setPictureType(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setLinked(Z)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCrc32()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crc32:I

    return p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    const-string v0, "TYERTDAT"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getGenericKeyFromId3(Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-super {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getId3KeyFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getID3Frames()Lcom/transsion/audiotagger/tag/id3/ID3Frames;
    .locals 0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "ID3v2.30"

    return-object p0
.end method

.method public getMajorVersion()B
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getPaddingSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    return p0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->getInstanceof()Lcom/transsion/audiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    move-result-object p0

    return-object p0
.end method

.method public getRelease()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getRevision()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v0

    :cond_0
    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_4

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    const-string v0, "TYERTDAT"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public isUnsynchronization()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    return p0
.end method

.method public loadFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method public loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    const-string v0, "TYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TDAT"

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string p1, "TDAT is empty so just ignoring"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "TYERTDAT"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    invoke-virtual {p0, p3}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-virtual {p0, p3}, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    invoke-virtual {p3}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    :cond_8
    :goto_1
    return-void
.end method

.method public processDuplicateFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/tag/datatype/Pair;

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lcom/transsion/audiotagger/tag/datatype/Pair;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Reading ID3v23 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID_TAG_SIZE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Loaded Frames,there are:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " tag not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 6

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    iput p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Start of frame body at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",frames data size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-ge v0, p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Looking for next frame at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at frame at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->loadFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/transsion/audiotagger/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :goto_1
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Corrupt Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto/16 :goto_0

    :goto_2
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto :goto_5

    :goto_3
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame Identifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto :goto_5

    :goto_4
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Empty Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    :catch_4
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Found padding starting at:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_5
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing tag to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 6
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 8
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    move-object v6, v0

    .line 9
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v0

    .line 10
    array-length v1, v6

    add-int/lit8 v1, v1, 0xa

    sub-int v7, v0, v1

    .line 11
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Current audiostart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Size including padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 14
    array-length v1, v6

    invoke-direct {p0, v7, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    move-wide v9, p2

    .line 15
    invoke-virtual/range {v3 .. v10}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    int-to-long p0, v0

    return-wide p0
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Writing tag to channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 18
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 20
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 22
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    if-lez p2, :cond_2

    .line 23
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result p2

    .line 24
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int v2, p2, v1

    .line 25
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Padding:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 26
    :cond_2
    array-length p2, v0

    invoke-direct {p0, v2, p2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 27
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
