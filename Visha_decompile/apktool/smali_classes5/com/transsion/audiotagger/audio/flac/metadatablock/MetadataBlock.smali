.class public Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mbd:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

.field private mbh:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->mbd:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    return-void
.end method


# virtual methods
.method public getData()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->mbd:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    return-object p0
.end method

.method public getHeader()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
