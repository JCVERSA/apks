.class public final Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;
.super Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
.source "SourceFile"


# static fields
.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_AUTHOR:Ljava/lang/String; = "AUTHOR"

.field public static final KEY_COPYRIGHT:Ljava/lang/String; = "COPYRIGHT"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final KEY_RATING:Ljava/lang/String; = "RATING"

.field public static final KEY_TITLE:Ljava/lang/String; = "TITLE"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "RATING"

    const-string v2, "TITLE"

    const-string v3, "AUTHOR"

    const-string v4, "COPYRIGHT"

    const-string v5, "DESCRIPTION"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, "AUTHOR"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    const-string v0, "COPYRIGHT"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAsfChunkSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/16 v2, 0x2c

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    const-string v0, "RATING"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TITLE"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAddSupported(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |->Title      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |->Author     : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |->Copyright  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |->Description: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  |->Rating     :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "AUTHOR"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "COPYRIGHT"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "RATING"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "TITLE"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    return-wide v0
.end method
