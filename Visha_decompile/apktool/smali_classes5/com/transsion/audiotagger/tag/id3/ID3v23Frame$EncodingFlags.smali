.class Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingFlags"
.end annotation


# static fields
.field public static final MASK_COMPRESSION:I = 0x80

.field public static final MASK_ENCRYPTION:I = 0x40

.field public static final MASK_GROUPING_IDENTITY:I = 0x20

.field public static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field public static final TYPE_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final TYPE_GROUPIDENTITY:Ljava/lang/String; = "groupidentity"


# instance fields
.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;B)V

    .line 5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->logEnabledFlags()V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v2, "encodingFlags"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit16 v1, v1, 0x80

    const-string v3, "compression"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v1, v1, 0x40

    const-string v3, "encryption"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 p0, p0, 0x20

    const-string v1, "groupidentity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public isCompression()Z
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit16 p0, p0, 0x80

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEncryption()Z
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 p0, p0, 0x40

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGrouping()Z
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNonStandardFlags()Z
    .locals 2

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    and-int/lit8 v0, p0, 0x8

    if-gtz v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-gtz v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-gtz v0, :cond_1

    and-int/2addr p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public logEnabledFlags()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isNonStandardFlags()Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    iget-object v3, v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Unknown Encoding Flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    invoke-static {v3}, Lcom/transsion/audiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    iget-object v3, v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is compressed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    iget-object v3, v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is encrypted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is grouped"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setCompression()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public setEncryption()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public setGrouping()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public unsetCompression()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public unsetEncryption()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public unsetGrouping()V
    .locals 1

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method

.method public unsetNonStandardFlags()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isNonStandardFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Unsetting Unknown Encoding Flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    invoke-static {v2}, Lcom/transsion/audiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    :cond_0
    return-void
.end method
