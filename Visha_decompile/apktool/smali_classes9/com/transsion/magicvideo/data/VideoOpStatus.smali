.class public Lcom/transsion/magicvideo/data/VideoOpStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MUSIC_TYPE:I = 0x3

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1

.field public static final RESIZE_MODE_ZOOM:I = 0x4

.field public static defScreenBrightness:F = -1.0f


# instance fields
.field public mAudioVolume:F

.field public mBeginScale:F

.field public mCurrentScale:F

.field public mDuration:J

.field public mInitLightValue:I

.field public mInitMusicVolume:I

.field public mMovePosition:J

.field public mMusicMaxVolume:I

.field public mMusicVolume:I

.field public mPlayWhenReady:Z

.field public mPlaybackState:I

.field public mScreenBrightness:F

.field public mTimePosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mCurrentScale:F

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mBeginScale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mInitLightValue:I

    return-void
.end method

.method public static initDefBrightness(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    invoke-static {}, Lrtb;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    sput p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->defScreenBrightness:F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyy5;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initMusicVolumeForDrag()V
    .locals 1

    iget v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicVolume:I

    iput v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mInitMusicVolume:I

    return-void
.end method

.method public lightInt2Float()F
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mInitLightValue:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    invoke-static {}, Lrtb;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public newPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mTimePosition:J

    return-wide v0
.end method

.method public touchDown()Lcom/transsion/magicvideo/data/VideoOpStatus;
    .locals 0

    return-object p0
.end method
