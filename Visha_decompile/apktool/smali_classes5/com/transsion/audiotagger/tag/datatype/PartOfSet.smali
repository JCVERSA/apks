.class public Lcom/transsion/audiotagger/tag/datatype/PartOfSet;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/PartOfSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text encoding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " charset:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-object v0
.end method

.method public getValue()Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;->getValue()Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    move-result-object p0

    return-object p0
.end method

.method public readByteArray([BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from array from offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, p2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->setSize(I)V

    sget-object p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read SizeTerminatedString:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;->getValue()Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v1

    sget-object v3, Lcom/transsion/audiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0xfeff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    :goto_1
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->setSize(I)V

    return-object v3

    :goto_2
    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
