.class public Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;

    return-void
.end method


# virtual methods
.method public isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {p0}, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0}, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0, p3}, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;->writeInto(Ljava/io/OutputStream;)J

    move-result-wide v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {p0}, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v2

    const-wide/16 v6, 0x18

    sub-long v6, v2, v6

    invoke-virtual {p2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    sub-long/2addr v4, v2

    filled-new-array {p1}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p1

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    return-object p0
.end method
