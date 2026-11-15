.class public abstract Law6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILcom/transsion/audio/player/MusicPlayManager;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeVolume volume:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",maxVolume:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicTypeVolumeUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    const/4 v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public static final b(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/transsion/audio/data/AudioOpStatus;FLcom/transsion/audio/player/MusicPlayManager;)V
    .locals 3

    iget v0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicMaxVolume:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Law6;->b(III)I

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicVolume:I

    iput p1, p0, Lcom/transsion/audio/data/AudioOpStatus;->mAudioVolume:F

    iget p0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicMaxVolume:I

    invoke-static {v0, p0, p2}, Law6;->a(IILcom/transsion/audio/player/MusicPlayManager;)V

    return-void
.end method

.method public static d(Lcom/transsion/audio/data/AudioOpStatus;ZLcom/transsion/audio/player/MusicPlayManager;)F
    .locals 2

    iget v0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicMaxVolume:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, v1, v0}, Law6;->b(III)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicVolume:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, v1, v0}, Law6;->b(III)I

    move-result p0

    :goto_0
    invoke-static {p0, v0, p2}, Law6;->a(IILcom/transsion/audio/player/MusicPlayManager;)V

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static e(Lcom/transsion/audio/data/AudioOpStatus;)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->u()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t()I

    move-result v0

    iput v1, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicMaxVolume:I

    iput v0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mMusicVolume:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/transsion/audio/data/AudioOpStatus;->mAudioVolume:F

    return-void
.end method
