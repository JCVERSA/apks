.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPOS;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPOS;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getDiscNo()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDiscNoAsText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumberAsText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDiscTotal()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDiscTotalAsText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotalAsText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "TPOS"

    return-object p0
.end method

.method public setDiscNo(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/Integer;)V

    return-void
.end method

.method public setDiscNo(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setDiscTotal(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/Integer;)V

    return-void
.end method

.method public setDiscTotal(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/String;)V

    return-void
.end method
