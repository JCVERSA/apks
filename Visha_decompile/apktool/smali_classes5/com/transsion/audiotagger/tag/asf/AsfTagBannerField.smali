.class public Lcom/transsion/audiotagger/tag/asf/AsfTagBannerField;
.super Lcom/transsion/audiotagger/tag/asf/AbstractAsfTagImageField;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v2, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    .line 4
    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 6
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method


# virtual methods
.method public getImageDataSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result p0

    return p0
.end method

.method public getRawImageData()[B
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->getRawContent()[B

    move-result-object p0

    return-object p0
.end method
