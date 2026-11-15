.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final ARRANGER:Ljava/lang/String;

.field public static final DJMIXER:Ljava/lang/String;

.field public static final ENGINEER:Ljava/lang/String;

.field public static final MIXER:Ljava/lang/String;

.field public static final PRODUCER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ENGINEER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;->ENGINEER:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->MIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;->MIXER:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->DJMIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;->DJMIXER:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->PRODUCER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;->PRODUCER:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ARRANGER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;->ARRANGER:Ljava/lang/String;

    return-void
.end method

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

    .line 7
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/Pair;

    .line 11
    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lcom/transsion/audiotagger/tag/datatype/Pair;)V

    goto :goto_0

    .line 12
    :cond_0
    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
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

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "TIPL"

    return-object p0
.end method
