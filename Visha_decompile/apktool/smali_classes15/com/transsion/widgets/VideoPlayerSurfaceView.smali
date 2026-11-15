.class public Lcom/transsion/widgets/VideoPlayerSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1

.field public static final RESIZE_MODE_ZOOM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoPlayerSurfaceView"


# instance fields
.field private mResizeMode:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceListener:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

.field private mVideoAspectRatio:F

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/VideoPlayerSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/VideoPlayerSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->initVideoView()V

    return-void
.end method

.method private initVideoView()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getResizeMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mResizeMode:I

    return p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    iget v0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoAspectRatio:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    int-to-float v0, p1

    int-to-float v2, p2

    div-float v3, v0, v2

    iget v4, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoAspectRatio:F

    div-float v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    iget v7, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mResizeMode:I

    if-eqz v7, :cond_3

    const/4 v5, 0x4

    if-eq v7, v5, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v5, v3, v6

    if-gez v5, :cond_2

    cmpl-float v5, v4, v1

    if-lez v5, :cond_2

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_2
    cmpl-float v2, v3, v6

    if-lez v2, :cond_5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    div-float/2addr v6, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    :cond_3
    cmpl-float v3, v4, v1

    if-eqz v3, :cond_5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    :cond_4
    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    iput p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoWidth:I

    iput p2, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mVideoWidth="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mVideoHeight="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mSurfaceHolder:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerSurfaceView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoWidth:I

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoHeight:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mVideoAspectRatio:F

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResizeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mResizeMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSurfaceListener(Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceListener:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceListener:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object p0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceListener:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceListener:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerSurfaceView"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgets/VideoPlayerSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method
