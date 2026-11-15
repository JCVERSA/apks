.class public Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
.super Lcom/transsion/audiotagger/audio/asf/data/Chunk;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field private final descriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 3
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 4
    new-instance p2, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    new-instance p3, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    const-string p4, ""

    invoke-direct {p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 5
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->determineType(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method

.method private static determineType(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->values()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown metadata container specified by GUID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    invoke-virtual {v2, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isMultiValued()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Container does not allow multiple values of descriptors with same name, language index and stream number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Descriptor cannot be added, see isAddSupported(...)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertDescriptor(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final assertDescriptor(Ljava/lang/String;I)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public final containsDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-object p0
.end method

.method public getCurrentAsfChunkSize()J
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x1a

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v3, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final getDescriptorCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getDescriptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getValueFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final hasDescriptor(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAddSupported(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isMultiValued()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptorCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    move-result v0

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |-> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final removeDescriptorsByName(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getCurrentAsfChunkSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v3, p1, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I

    goto :goto_0

    :cond_0
    return-wide v0
.end method
