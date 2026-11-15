.class Lcom/transsion/liblan/LanVideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LibLAN/VideoHelper"


# instance fields
.field private mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

.field private mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSubtitlesSurface:Landroid/view/SurfaceView;

.field private mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoSurface:Landroid/view/SurfaceView;

.field private mVideoSurfaceFrame:Landroid/widget/FrameLayout;

.field private mVideoTexture:Landroid/view/TextureView;

.field private mVideoVisibleHeight:I

.field private mVideoVisibleWidth:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaPlayer;Lcom/transsion/liblan/util/LANVideoLayout;Lcom/transsion/liblan/util/DisplayManager;ZZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoHeight:I

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoWidth:I

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleWidth:I

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarNum:I

    iput v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarDen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    xor-int/lit8 v7, p5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/transsion/liblan/LanVideoHelper;->init(Lcom/transsion/liblan/TranMediaPlayer;Lcom/transsion/liblan/util/LANVideoLayout;Lcom/transsion/liblan/util/DisplayManager;ZZ)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/LanVideoHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/LanVideoHelper;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/liblan/LanVideoHelper;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private changeMediaPlayerLayout(II)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/liblan/LanVideoHelper$2;->$SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType:[I

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const-string p2, "4:3"

    invoke-virtual {p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v2}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const-string p2, "16:9"

    invoke-virtual {p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v2}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->getCurrentVideoTrack()Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v3, v0, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->orientation:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    sget-object v5, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    if-ne v4, v5, :cond_7

    iget v2, v0, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->width:I

    iget v4, v0, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->height:I

    if-eqz v3, :cond_4

    move v6, v4

    move v4, v2

    move v2, v6

    :cond_4
    iget v3, v0, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->sarNum:I

    iget v0, v0, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;->sarDen:I

    if-eq v3, v0, :cond_5

    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    :cond_5
    int-to-float v0, v2

    int-to-float v2, v4

    div-float v3, v0, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v4, p1, p2

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_6

    div-float/2addr p1, v0

    goto :goto_2

    :cond_6
    div-float p1, p2, v2

    :goto_2
    iget-object p2, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const-string v0, ":"

    const-string v1, ""

    if-nez v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v2}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Lcom/transsion/liblan/TranMediaPlayer;Lcom/transsion/liblan/util/LANVideoLayout;Lcom/transsion/liblan/util/DisplayManager;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    iput-object p3, p0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/liblan/util/DisplayManager;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->getSurfaceFrame()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;->getSubtitlesSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    goto/16 :goto_7

    :cond_1
    :goto_0
    sget p1, Lcom/transsion/liblan/R$id;->player_surface_frame:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    if-eqz p5, :cond_4

    sget p2, Lcom/transsion/liblan/R$id;->surface_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :goto_1
    check-cast p1, Landroid/view/SurfaceView;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/liblan/R$id;->surface_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :goto_2
    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/liblan/R$id;->subtitles_surface_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :goto_3
    check-cast p1, Landroid/view/SurfaceView;

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/liblan/R$id;->surface_subtitles:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :goto_4
    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x3

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_7

    :cond_4
    sget p2, Lcom/transsion/liblan/R$id;->texture_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :goto_5
    check-cast p1, Landroid/view/TextureView;

    goto :goto_6

    :cond_5
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/liblan/R$id;->texture_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_5

    :goto_6
    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    :cond_6
    :goto_7
    return-void
.end method


# virtual methods
.method public attachViews()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/transsion/liblan/interfaces/ITranLANVout;->setVideoView(Landroid/view/SurfaceView;)V

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/transsion/liblan/interfaces/ITranLANVout;->setSubtitlesView(Landroid/view/SurfaceView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Lcom/transsion/liblan/interfaces/ITranLANVout;->setVideoView(Landroid/view/TextureView;)V

    :cond_2
    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/liblan/interfaces/ITranLANVout;->attachViews(Lcom/transsion/liblan/interfaces/ITranLANVout$OnNewLanVideoLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/liblan/LanVideoHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/LanVideoHelper$1;-><init>(Lcom/transsion/liblan/LanVideoHelper;)V

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_3
    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_4
    return-void
.end method

.method public detachViews()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrackEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/liblan/interfaces/ITranLANVout;->detachViews()V

    return-void
.end method

.method public getVideoScale()Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    return-object p0
.end method

.method public onLanNewVideoLayout(Lcom/transsion/liblan/interfaces/ITranLANVout;IIIIII)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iput p2, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoWidth:I

    iput p3, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoHeight:I

    iput p4, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleWidth:I

    iput p5, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    iput p6, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarNum:I

    iput p7, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarDen:I

    invoke-virtual {p0}, Lcom/transsion/liblan/LanVideoHelper;->updateVideoSurfaces()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/liblan/LanVideoHelper;->detachViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/liblan/LanVideoHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    return-void
.end method

.method public setVideoScale(Lcom/transsion/liblan/TranMediaPlayer$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-virtual {p0}, Lcom/transsion/liblan/LanVideoHelper;->updateVideoSurfaces()V

    return-void
.end method

.method public updateVideoSurfaces()V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/transsion/liblan/TranMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/liblan/TranMediaPlayer;->getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/liblan/interfaces/ITranLANVout;->areViewsAttached()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/liblan/util/DisplayManager;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    const/4 v4, 0x0

    if-nez v1, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/liblan/util/AndroidUtil;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_3

    :cond_4
    iget-object v6, v0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {v6}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {v6}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/liblan/LanVideoHelper;->mDisplayManager:Lcom/transsion/liblan/util/DisplayManager;

    invoke-virtual {v7}, Lcom/transsion/liblan/util/DisplayManager;->getPresentation()Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_3
    mul-int v8, v6, v7

    if-nez v8, :cond_5

    const-string v0, "LibLAN/VideoHelper"

    const-string v1, "Invalid surface size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v8, v0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v8}, Lcom/transsion/liblan/TranMediaPlayer;->getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lcom/transsion/liblan/interfaces/ITranLANVout;->setWindowSize(II)V

    iget-object v8, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurface:Landroid/view/SurfaceView;

    if-nez v8, :cond_6

    iget-object v8, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoTexture:Landroid/view/TextureView;

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v10, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoWidth:I

    iget v11, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoHeight:I

    mul-int/2addr v10, v11

    const/4 v11, -0x1

    if-eqz v10, :cond_16

    sget-boolean v10, Lcom/transsion/liblan/util/AndroidUtil;->IS_NOUGAT_OR_LATER:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_7

    :cond_7
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v10, :cond_8

    if-ne v5, v11, :cond_8

    iget-object v5, v0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v5, v4}, Lcom/transsion/liblan/TranMediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsion/liblan/LanVideoHelper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/transsion/liblan/TranMediaPlayer;->setScale(F)V

    :cond_8
    int-to-double v4, v6

    int-to-double v10, v7

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_9

    move v2, v3

    :cond_9
    if-le v6, v7, :cond_a

    if-nez v2, :cond_b

    :cond_a
    if-ge v6, v7, :cond_c

    if-nez v2, :cond_c

    :cond_b
    move-wide/from16 v16, v4

    move-wide v4, v10

    move-wide/from16 v10, v16

    :cond_c
    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarDen:I

    iget v2, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSarNum:I

    if-ne v1, v2, :cond_d

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleWidth:I

    int-to-double v6, v1

    int-to-double v1, v1

    iget v12, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    int-to-double v12, v12

    div-double/2addr v1, v12

    goto :goto_4

    :cond_d
    iget v6, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleWidth:I

    int-to-double v6, v6

    int-to-double v12, v2

    mul-double/2addr v6, v12

    int-to-double v1, v1

    div-double/2addr v6, v1

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    int-to-double v1, v1

    div-double v1, v6, v1

    :goto_4
    div-double v12, v4, v10

    sget-object v14, Lcom/transsion/liblan/LanVideoHelper$2;->$SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType:[I

    iget-object v15, v0, Lcom/transsion/liblan/LanVideoHelper;->mCurrentScaleType:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v3, :cond_13

    const/4 v3, 0x2

    if-eq v14, v3, :cond_12

    const/4 v1, 0x4

    if-eq v14, v1, :cond_11

    const/4 v1, 0x5

    if-eq v14, v1, :cond_f

    const/4 v1, 0x6

    if-eq v14, v1, :cond_e

    goto :goto_6

    :cond_e
    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    int-to-double v10, v1

    move-wide v4, v6

    goto :goto_6

    :cond_f
    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    cmpg-double v3, v12, v1

    if-gez v3, :cond_10

    :goto_5
    div-double v10, v4, v1

    goto :goto_6

    :cond_10
    mul-double v4, v10, v1

    goto :goto_6

    :cond_11
    const-wide v1, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpg-double v3, v12, v1

    if-gez v3, :cond_10

    goto :goto_5

    :cond_12
    cmpl-double v3, v12, v1

    if-ltz v3, :cond_10

    goto :goto_5

    :cond_13
    cmpg-double v3, v12, v1

    if-gez v3, :cond_10

    goto :goto_5

    :goto_6
    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoWidth:I

    int-to-double v1, v1

    mul-double/2addr v4, v1

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleWidth:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoHeight:I

    int-to-double v1, v1

    mul-double/2addr v10, v1

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoVisibleHeight:I

    int-to-double v1, v1

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    iget-object v0, v0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void

    :cond_16
    :goto_7
    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mSubtitlesSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    iget-object v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoWidth:I

    iget v2, v0, Lcom/transsion/liblan/LanVideoHelper;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-nez v1, :cond_18

    invoke-direct {v0, v6, v7}, Lcom/transsion/liblan/LanVideoHelper;->changeMediaPlayerLayout(II)V

    :cond_18
    :goto_8
    return-void
.end method
