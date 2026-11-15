.class public Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
.source "SourceFile"


# static fields
.field public static final MAJOR_VERSION:B = 0x2t

.field public static final MASK_V22_COMPRESSION:I = 0x40

.field public static final MASK_V22_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field protected unsynchronization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 14
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 17
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 18
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_2

    .line 21
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    goto :goto_1

    .line 22
    :cond_2
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 26
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string p1, "Created tag from a tag of a different version"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 9
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 11
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

    .line 32
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 30
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 6
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
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_COMPRESSED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

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

    :cond_5
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_8
    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-eqz v2, :cond_0

    const/16 v0, -0x80

    int-to-byte v0, v0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x40

    int-to-byte v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr p1, p2

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    :try_start_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->convertFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

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
    .locals 3
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

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    const-string v1, "TYE"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    const-string v1, "TIM"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object p0
.end method

.method public copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    iget-boolean p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->compression:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    iget-boolean p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    iget-boolean p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;

    const-string v1, "PictureData"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "PictureType"

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ImageType"

    invoke-static {p2}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 3
    aget-object v0, p2, v0

    .line 4
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 8
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 9
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v22Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
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

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

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

    .line 14
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 16
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->isLinked()Z

    move-result v1

    const-string v2, ""

    const-string v3, "Description"

    const-string v4, "ImageType"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-nez v1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    .line 21
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

    .line 22
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string p1, "-->"

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    move-result-object p0

    return-object p0
.end method

.method public createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;
    .locals 0

    .line 2
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createStructure()V
    .locals 5

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->getIdentifier()Ljava/lang/String;

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

    const-string v1, "compression"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    iget-boolean v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-ne v2, v0, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
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

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getPictureType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setPictureType(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->isImageUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setLinked(Z)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getImageData()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;->getGenericKeyFromId3(Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;->getId3KeyFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

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

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v22Frames;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "ID3v2_2.20"

    return-object p0
.end method

.method public getMajorVersion()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->getInstanceof()Lcom/transsion/audiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

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
    .locals 0

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

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

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public isCompression()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->compression:Z

    return p0
.end method

.method public isUnsynchronization()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

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

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Reading tag from file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

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

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    const-string p1, "ID3v2.20 tag not found"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 4

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

    const-string v2, ",frames sizes and padding is:"

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
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":looking for next frame at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->loadFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
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

    goto :goto_0

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

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

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

    add-int/lit8 v0, v0, 0x6

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

.method public translateFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    const-string v1, "TYE"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    const-string v1, "TIM"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
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
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 7
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

    .line 8
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v0

    .line 9
    array-length v1, v6

    add-int/lit8 v1, v1, 0xa

    sub-int v7, v0, v1

    .line 10
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

    .line 11
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

    .line 12
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

    .line 13
    array-length v1, v6

    invoke-direct {p0, v7, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    move-wide v9, p2

    .line 14
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

    .line 15
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

    .line 16
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 17
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

    .line 18
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
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 19
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 21
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

    .line 22
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result p2

    .line 23
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int v2, p2, v1

    .line 24
    :cond_2
    array-length p2, v0

    invoke-direct {p0, v2, p2}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 27
    invoke-virtual {p0, p1, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
