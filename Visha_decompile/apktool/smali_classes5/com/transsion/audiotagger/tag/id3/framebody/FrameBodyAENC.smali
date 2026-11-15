.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAENC;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 2
    const-string v0, "Owner"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "PreviewStart"

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v2, "PreviewLength"

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v1, "EncryptionInfo"

    new-array v0, v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAENC;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SS[B)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 8
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string p2, "PreviewStart"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string p2, "PreviewLength"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-string p1, "EncryptionInfo"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "AENC"

    return-object p0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Owner"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOwner(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setupObjectList()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;

    const-string v2, "Owner"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    const-string v2, "PreviewStart"

    const/4 v3, 0x2

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    const-string v2, "PreviewLength"

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "EncryptionInfo"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
