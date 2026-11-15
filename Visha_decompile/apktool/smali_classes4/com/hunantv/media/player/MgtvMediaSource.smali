.class public Lcom/hunantv/media/player/MgtvMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLV:Ljava/lang/String; = "FLV"

.field public static final HLS_FMP4:Ljava/lang/String; = "HLS-FMP4"

.field public static final HLS_TS:Ljava/lang/String; = "HLS-TS"

.field public static final MPEG_4:Ljava/lang/String; = "MPEG-4"

.field public static final MPEG_TS:Ljava/lang/String; = "MPEG-TS"


# instance fields
.field public audioFormat:Ljava/lang/String;

.field public def:Ljava/lang/String;

.field public fileFormat:Ljava/lang/String;

.field isReleased:Z

.field private key:I

.field public p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

.field protected playingUrl:Ljava/lang/String;

.field public proxyUrl:Ljava/lang/String;

.field public readType:I

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public videoFormat:Ljava/lang/String;

.field private videoHeight:I

.field private videoWidth:I

.field public vsri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0|0_0|0_0"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vsri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased:Z

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->init()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0|0_0|0_0"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vsri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased:Z

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    const-string v1, "0|0_0|0_0"

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vsri:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased:Z

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/hunantv/media/global/GlobalKeyGenerator;->genKey()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->key:I

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getAudioFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->audioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getDef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->def:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->fileFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->key:I

    return p0
.end method

.method public getP2pTask()Lcom/hunantv/media/p2p/IP2pTask;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    return-object p0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getReadType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoWidth:I

    return p0
.end method

.method public getVsri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vsri:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->audioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setDef(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->def:Ljava/lang/String;

    return-object p0
.end method

.method public setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->fileFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    return-object p0
.end method

.method public setPlayingUrl(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setReadType(I)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 5

    const-string v0, "h265"

    const-string v1, "h264"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "hevc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v4, "avc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object p1, v0

    goto :goto_1

    :pswitch_1
    move-object p1, v1

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoFormat:Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17ace -> :sswitch_3
        0x300908 -> :sswitch_2
        0x300909 -> :sswitch_1
        0x30d06a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setVideoHeight(I)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoHeight:I

    return-object p0
.end method

.method public setVideoWidth(I)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoWidth:I

    return-object p0
.end method

.method public setVsri(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vsri:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgtvMediaSource{readType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->readType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", proxyUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playingUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->playingUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->fileFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", def=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->def:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaSource;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaSource;->key:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateProxyUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->proxyUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaSource;->url:Ljava/lang/String;

    return-void
.end method
