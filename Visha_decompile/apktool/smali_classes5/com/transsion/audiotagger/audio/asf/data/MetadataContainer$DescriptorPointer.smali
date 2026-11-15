.class final Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorPointer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    instance-of v3, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    check-cast p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    iget-object p1, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/2addr v2, v3

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result p1

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    and-int/2addr v2, v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->desc:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    return-object p0
.end method
