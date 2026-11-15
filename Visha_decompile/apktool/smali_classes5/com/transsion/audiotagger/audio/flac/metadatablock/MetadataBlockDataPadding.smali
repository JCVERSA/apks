.class public Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    return-void
.end method


# virtual methods
.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    return p0
.end method
