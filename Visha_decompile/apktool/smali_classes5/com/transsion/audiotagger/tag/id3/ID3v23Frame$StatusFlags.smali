.class Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final MASK_FILE_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_READ_ONLY:I = 0x20

.field public static final MASK_TAG_ALTER_PRESERVATION:I = 0x80

.field public static final TYPE_FILEALTERPRESERVATION:Ljava/lang/String; = "typeFileAlterPreservation"

.field public static final TYPE_READONLY:Ljava/lang/String; = "typeReadOnly"

.field public static final TYPE_TAGALTERPRESERVATION:Ljava/lang/String; = "typeTagAlterPreservation"


# instance fields
.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    const/4 p1, 0x0

    .line 2
    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 3
    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;B)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 5
    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 6
    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 7
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 9
    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->convertV4ToV3Flags(B)B

    move-result p1

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    .line 10
    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    .line 11
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method private convertV4ToV3Flags(B)B
    .locals 1

    and-int/lit8 p0, p1, 0x20

    const/16 v0, 0x40

    if-eqz p0, :cond_0

    int-to-byte p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, -0x80

    int-to-byte p0, p0

    :cond_1
    return p0
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v2, "statusFlags"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    and-int/lit16 v1, v1, 0x80

    const-string v3, "typeTagAlterPreservation"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    and-int/lit8 v1, v1, 0x40

    const-string v3, "typeFileAlterPreservation"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    and-int/lit8 p0, p0, 0x20

    const-string v1, "typeReadOnly"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public modifyFlags()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Frames;->isDiscardIfFileAltered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    :goto_0
    return-void
.end method
