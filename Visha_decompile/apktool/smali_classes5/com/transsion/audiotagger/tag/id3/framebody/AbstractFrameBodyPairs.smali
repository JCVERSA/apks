.class public abstract Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;


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

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public addPair(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\u0000"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getKeyAtIndex(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/Pair;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfPairs()I
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfPairs()I

    move-result p0

    return p0
.end method

.method public getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/tag/datatype/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getNumberOfPairs()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/Pair;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resetPairs()V
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\u0000"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Text"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
