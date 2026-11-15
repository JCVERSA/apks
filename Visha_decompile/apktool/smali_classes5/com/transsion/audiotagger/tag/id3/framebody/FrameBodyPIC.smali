.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v22FrameBody;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;BLjava/lang/String;[B)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    const-string p1, "ImageType"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->setPictureType(B)V

    .line 8
    invoke-virtual {p0, p4}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->setDescription(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p5}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->setImageData([B)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    const-string v0, "MIMEType"

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageType"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    const-string v0, "PictureData"

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->setDescription(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->setImageData([B)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFormatType()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageType"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "PIC"

    return-object p0
.end method

.method public getImageData()[B
    .locals 1

    const-string v0, "PictureData"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "PictureData"

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "MIMEType"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPictureType()I
    .locals 1

    const-string v0, "PictureType"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method public isImageUrl()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-->"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageData([B)V
    .locals 1

    const-string v0, "PictureData"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPictureType(B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "PictureType"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setupObjectList()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;

    const-string v2, "ImageType"

    const/4 v4, 0x3

    invoke-direct {v1, v2, p0, v4}, Lcom/transsion/audiotagger/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const-string v2, "PictureType"

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "PictureData"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

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
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
