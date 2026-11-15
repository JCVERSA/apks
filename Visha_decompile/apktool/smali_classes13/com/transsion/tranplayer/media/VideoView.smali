.class public Lcom/transsion/tranplayer/media/VideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static sLibVLC:Lcom/transsion/tranplayer/LibVLC;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p0, Lcom/transsion/tranplayer/LibVLC;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/tranplayer/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object p0, Lcom/transsion/tranplayer/media/VideoView;->sLibVLC:Lcom/transsion/tranplayer/LibVLC;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/tranplayer/media/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/tranplayer/media/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public canPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSeekBackward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getBufferPercentage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    invoke-static {p1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p0

    return p0
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/transsion/tranplayer/Media;

    sget-object v0, Lcom/transsion/tranplayer/media/VideoView;->sLibVLC:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/transsion/tranplayer/Media;

    sget-object v0, Lcom/transsion/tranplayer/media/VideoView;->sLibVLC:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/media/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stopPlayback()V
    .locals 0

    return-void
.end method

.method public suspend()V
    .locals 0

    return-void
.end method
