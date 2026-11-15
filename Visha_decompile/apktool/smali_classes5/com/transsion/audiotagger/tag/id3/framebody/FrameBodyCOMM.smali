.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# static fields
.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final ITUNES_NORMALIZATION:Ljava/lang/String; = "iTunNORM"

.field public static final MM_CUSTOM1:Ljava/lang/String; = "Songs-DB_Custom1"

.field public static final MM_CUSTOM2:Ljava/lang/String; = "Songs-DB_Custom2"

.field public static final MM_CUSTOM3:Ljava/lang/String; = "Songs-DB_Custom3"

.field public static final MM_CUSTOM4:Ljava/lang/String; = "Songs-DB_Custom4"

.field public static final MM_CUSTOM5:Ljava/lang/String; = "Songs-DB_Custom5"

.field public static final MM_OCCASION:Ljava/lang/String; = "Songs-DB_Occasion"

.field private static final MM_PREFIX:Ljava/lang/String; = "Songs-DB"

.field public static final MM_QUALITY:Ljava/lang/String; = "Songs-DB_Preference"

.field public static final MM_TEMPO:Ljava/lang/String; = "Songs-DB_Tempo"


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

    .line 3
    const-string v0, "Language"

    const-string v1, "eng"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v0, "Description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v0, "Text"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    const-string p1, "Language"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    const-string p1, "Description"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-string p1, "Text"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;)V
    .locals 0

    .line 6
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

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public addTextValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Text"

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

.method public getFirstTextValue()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

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

    const-string p0, "COMM"

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "Language"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNumberOfValues()I
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getNumberOfValues()I

    move-result p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextWithoutTrailingNulls()Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueWithoutTrailingNull()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->getValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isItunesFrame()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "iTunNORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaMonkeyFrame()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Songs-DB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Language"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;

    const-string v2, "Language"

    const/4 v3, 0x3

    invoke-direct {v1, v2, p0, v3}, Lcom/transsion/audiotagger/tag/datatype/StringHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;B)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getHeader()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
