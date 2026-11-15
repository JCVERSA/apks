.class public Lcom/aliyun/player/nativeclass/TrackInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/nativeclass/TrackInfo$Type;,
        Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;
    }
.end annotation


# static fields
.field public static final AUTO_SELECT_INDEX:I = -0x1


# instance fields
.field public audioChannels:I

.field public audioLang:Ljava/lang/String;

.field public audioSampleFormat:I

.field public audioSampleRate:I

.field public description:Ljava/lang/String;

.field public index:I

.field public mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public subtitleLang:Ljava/lang/String;

.field public videoBitrate:I

.field public videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

.field public videoHeight:I

.field public videoWidth:I

.field public vodDefinition:Ljava/lang/String;

.field public vodFileSize:J

.field public vodFormat:Ljava/lang/String;

.field public vodPlayUrl:Ljava/lang/String;

.field public vodWaterMarkPlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 7
    .line 8
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 11
    .line 12
    return-void
.end method

.method private nGetType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private setType(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne p1, v1, :cond_2

    .line 30
    .line 31
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne p1, v1, :cond_3

    .line 41
    .line 42
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getAudioChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioLang:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAudioSampleFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioSampleFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubtitleLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->subtitleLang:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/aliyun/player/nativeclass/TrackInfo$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoHDRType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getVodDefinition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodDefinition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVodFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVodFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVodPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodPlayUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVodWaterMarkPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodWaterMarkPlayUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setVideoHDRType(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
