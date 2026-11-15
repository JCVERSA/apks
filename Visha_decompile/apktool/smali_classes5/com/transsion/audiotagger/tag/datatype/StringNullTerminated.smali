.class public Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;
.super Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method
