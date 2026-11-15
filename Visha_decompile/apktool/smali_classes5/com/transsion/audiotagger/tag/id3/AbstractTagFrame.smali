.class public abstract Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;
.source "SourceFile"


# instance fields
.field protected frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 4
    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-object p0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    iget-object v3, v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    if-nez v3, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    iget-object v3, v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->isSubsetOf(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
