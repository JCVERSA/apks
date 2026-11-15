.class public Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSourceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    }
.end annotation


# static fields
.field public static final FILE_FORMAT_FMP4:Ljava/lang/String; = "fmp4"

.field public static final H264:Ljava/lang/String; = "h264"

.field public static final H265:Ljava/lang/String; = "h265"

.field public static final INIT_VALUE:Ljava/lang/String; = "init"

.field public static final MPEG2:Ljava/lang/String; = "mpeg2"

.field public static final MPEG4:Ljava/lang/String; = "mpeg4"

.field public static final OTHER:Ljava/lang/String; = "other"


# instance fields
.field private audioChildInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;

.field private audioFormat:Ljava/lang/String;

.field private bitRate:Ljava/lang/String;

.field private fileFormat:Ljava/lang/String;

.field private videoFormat:Ljava/lang/String;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$13800(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$13900(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$14000(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->fileFormat:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAudioChildInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioChildInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;

    return-object p0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->bitRate:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->fileFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoWidth:I

    return p0
.end method

.method public setAudioChildInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioChildInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;

    return-object p0
.end method

.method public setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setBitRate(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->bitRate:Ljava/lang/String;

    return-object p0
.end method

.method public setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->fileFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
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
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoFormat:Ljava/lang/String;

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

.method public setVideoHeight(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoHeight:I

    return-object p0
.end method

.method public setVideoWidth(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoWidth:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSourceInfo{videoFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bitRate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->bitRate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->fileFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->audioFormat:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
