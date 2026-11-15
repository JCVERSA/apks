.class public Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;
.super Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;
.source "SourceFile"


# instance fields
.field private codecId:[B

.field private pictureHeight:J

.field private pictureWidth:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    return-void
.end method


# virtual methods
.method public getCodecId()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getCodecIdAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    if-nez v0, :cond_0

    const-string p0, "Unknown"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->getCodecId()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getPictureHeight()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    return-wide v0
.end method

.method public getPictureWidth()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|->VideoStream"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Video info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      |->Width  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->getPictureWidth()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      |->Heigth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->getPictureHeight()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      |->Codec  : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->getCodecIdAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCodecId([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    return-void
.end method

.method public setPictureHeight(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    return-void
.end method

.method public setPictureWidth(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    return-void
.end method
