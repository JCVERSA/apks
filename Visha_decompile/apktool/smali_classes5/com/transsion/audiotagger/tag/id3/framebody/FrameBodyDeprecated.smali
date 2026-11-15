.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# instance fields
.field private originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getBriefDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalFrameBody()Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    move-result p0

    return p0
.end method

.method public setupObjectList()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
