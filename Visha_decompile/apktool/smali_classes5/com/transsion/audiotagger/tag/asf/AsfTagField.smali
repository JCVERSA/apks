.class public Lcom/transsion/audiotagger/tag/asf/AsfTagField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagField;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->createCopy()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescriptor()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawContent()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object p0

    return-object p0
.end method

.method public isBinary(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->isBinary()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No conversion supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method public isBinary()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCommon()Z
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
