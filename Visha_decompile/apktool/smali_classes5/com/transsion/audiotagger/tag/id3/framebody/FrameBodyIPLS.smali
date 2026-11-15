.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/datatype/Pair;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/Pair;

    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lcom/transsion/audiotagger/tag/datatype/Pair;)V

    goto :goto_0

    .line 15
    :cond_0
    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v0, "Text"

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    const-string v0, "Text"

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "IPLS"

    return-object p0
.end method
