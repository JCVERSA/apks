.class public abstract Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>()V

    const-string v1, "Text"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2, p3}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getNumberAsText()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCountAsText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTotalAsText()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotalAsText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/Integer;)V

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p1, "Text"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/String;)V

    return-void
.end method

.method public setupObjectList()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
