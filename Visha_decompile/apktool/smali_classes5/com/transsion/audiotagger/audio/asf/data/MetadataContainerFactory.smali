.class public final Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INSTANCE:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;->INSTANCE:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;->INSTANCE:Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;

    return-object v0
.end method


# virtual methods
.method public createContainer(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;->createContainer(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    move-result-object p0

    return-object p0
.end method

.method public createContainer(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 0

    .line 2
    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-ne p1, p0, :cond_0

    .line 3
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-ne p1, p0, :cond_1

    .line 5
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    :goto_0
    return-object p0
.end method

.method public createContainers([Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)[Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainerFactory;->createContainer(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
