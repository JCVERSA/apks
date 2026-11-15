.class public final Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;
.super Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BANNER_IMAGE:Ljava/lang/String; = "BANNER_IMAGE"

.field public static final KEY_BANNER_TYPE:Ljava/lang/String; = "BANNER_IMAGE_TYPE"

.field public static final KEY_BANNER_URL:Ljava/lang/String; = "BANNER_IMAGE_URL"

.field public static final KEY_COPYRIGHT_URL:Ljava/lang/String; = "COPYRIGHT_URL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "BANNER_IMAGE_TYPE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "BANNER_IMAGE_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "COPYRIGHT_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getBannerImageURL()Ljava/lang/String;
    .locals 1

    const-string v0, "BANNER_IMAGE_URL"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCopyRightURL()Ljava/lang/String;
    .locals 1

    const-string v0, "COPYRIGHT_URL"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAsfChunkSize()J
    .locals 4

    const-string v0, "BANNER_IMAGE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getImageData()[B
    .locals 2

    const-string v0, "BANNER_IMAGE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object p0

    return-object p0
.end method

.method public getImageType()J
    .locals 4

    const-string v0, "BANNER_IMAGE_TYPE"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->hasDescriptor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAddSupported(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

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

.method public setBannerImageURL(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BANNER_IMAGE_URL"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCopyRightURL(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "COPYRIGHT_URL"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setImage(J[B)V
    .locals 2

    const-string v0, "BANNER_IMAGE_TYPE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    const-string p1, "BANNER_IMAGE"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getCurrentAsfChunkSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getImageData()[B

    move-result-object v2

    array-length v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-wide v0
.end method
