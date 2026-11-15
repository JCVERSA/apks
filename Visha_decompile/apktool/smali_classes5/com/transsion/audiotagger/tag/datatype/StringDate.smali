.class public Lcom/transsion/audiotagger/tag/datatype/StringDate;
.super Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/StringDate;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;-><init>(Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/StringDate;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-static {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2d

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method
