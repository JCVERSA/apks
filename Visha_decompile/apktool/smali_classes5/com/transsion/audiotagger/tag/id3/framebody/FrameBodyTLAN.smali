.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTLAN;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTLAN;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "TLAN"

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/Languages;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/Languages;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getFirstTextValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractStringStringValuePair;->getValueForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
