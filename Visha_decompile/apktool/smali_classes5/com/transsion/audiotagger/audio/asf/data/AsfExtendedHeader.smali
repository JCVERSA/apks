.class public final Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;
.super Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
.source "SourceFile"


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-class v1, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->getFirst(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;

    return-object p0
.end method

.method public getExtendedContentDescription()Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-class v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->getFirst(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    return-object p0
.end method

.method public getLanguageList()Lcom/transsion/audiotagger/audio/asf/data/LanguageList;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-class v1, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->getFirst(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;

    return-object p0
.end method

.method public getMetadataLibraryObject()Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-class v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->getFirst(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    return-object p0
.end method

.method public getMetadataObject()Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-class v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->getFirst(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    return-object p0
.end method
