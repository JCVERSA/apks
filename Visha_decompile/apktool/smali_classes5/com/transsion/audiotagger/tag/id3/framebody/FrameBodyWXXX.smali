.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyWXXX;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# static fields
.field public static final URL_DISCOGS_ARTIST_SITE:Ljava/lang/String; = "DISCOGS_ARTIST"

.field public static final URL_DISCOGS_RELEASE_SITE:Ljava/lang/String; = "DISCOGS_RELEASE"

.field public static final URL_LYRICS_SITE:Ljava/lang/String; = "LYRICS_SITE"

.field public static final URL_OFFICIAL_RELEASE_SITE:Ljava/lang/String; = "OFFICIAL_RELEASE"

.field public static final URL_WIKIPEDIA_ARTIST_SITE:Ljava/lang/String; = "WIKIPEDIA_ARTIST"

.field public static final URL_WIKIPEDIA_RELEASE_SITE:Ljava/lang/String; = "WIKIPEDIA_RELEASE"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    const-string v0, "Description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v0, "URLLink"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>()V

    .line 7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    const-string p1, "Description"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    const-string p1, "URLLink"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyWXXX;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public addUrlLink(Ljava/lang/String;)V
    .locals 1

    const-string v0, "URLLink"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->addValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFirstUrlLink()Ljava/lang/String;
    .locals 1

    const-string v0, "URLLink"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "WXXX"

    return-object p0
.end method

.method public getUrlLinkAtIndex(I)Ljava/lang/String;
    .locals 1

    const-string v0, "URLLink"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlLinkWithoutTrailingNulls()Ljava/lang/String;
    .locals 1

    const-string v0, "URLLink"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueWithoutTrailingNull()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "URLLink"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/StringSizeTerminated;

    const-string v2, "URLLink"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->write(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
