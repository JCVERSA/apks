.class public Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagTextField;


# instance fields
.field protected frames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public getFrames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawContent()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method

.method public isBinary(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public isBinary()Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isCommon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method
