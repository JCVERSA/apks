.class public Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OggVorbisHeaderSizes"
.end annotation


# instance fields
.field private commentHeaderSize:I

.field private commentHeaderStartPosition:J

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private setupHeaderSize:I

.field private setupHeaderStartPosition:J


# direct methods
.method public constructor <init>(JJIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    iput-wide p3, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    iput p5, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    iput p6, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    return-void
.end method


# virtual methods
.method public getCommentHeaderSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    return p0
.end method

.method public getCommentHeaderStartPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    return-wide v0
.end method

.method public getExtraPacketDataSize()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getExtraPacketList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    return-object p0
.end method

.method public getSetupHeaderSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    return p0
.end method

.method public getSetupHeaderStartPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    return-wide v0
.end method
