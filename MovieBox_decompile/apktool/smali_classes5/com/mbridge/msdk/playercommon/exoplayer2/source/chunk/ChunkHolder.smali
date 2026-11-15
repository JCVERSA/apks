.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkHolder;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public chunk:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;

.field public endOfStream:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 6
    .line 7
    return-void
.end method
