.class public Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lfx5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;
    }
.end annotation


# instance fields
.field private flPlayer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mH:I

.field private mIsSurfaceCRecreated:Z

.field private mIsVideoVisible:Z

.field private mMVDisplaySurfaceView:Landroid/view/SurfaceView;

.field private mResizeMode:I

.field private final mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceListener:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

.field private mVideoHeight:I

.field private final mVideoRect:Landroid/graphics/RectF;

.field private mVideoWidth:I

.field private mW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/RectF;

    const/high16 p3, 0x44870000    # 1080.0f

    const/high16 v0, 0x44f00000    # 1920.0f

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    const/4 p2, 0x4

    .line 5
    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mResizeMode:I

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoWidth:I

    .line 7
    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoHeight:I

    .line 8
    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mW:I

    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mH:I

    .line 9
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mIsVideoVisible:Z

    .line 10
    new-instance p2, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$1;-><init>(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 11
    iput-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->lambda$setDisplaySurfaceView$0(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSurfaceListener:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mIsSurfaceCRecreated:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->mv_surface_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->mv_display_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mMVDisplaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget v0, Lcom/transsion/audio/R$id;->fl_player:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mW:I

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mContext:Landroid/content/Context;

    const v1, 0x43808000    # 257.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mH:I

    iget v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mW:I

    iput v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoWidth:I

    iput v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoHeight:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private synthetic lambda$setDisplaySurfaceView$0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mMVDisplaySurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mMVDisplaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeVisible(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public fixVideoSize(IIII)V
    .locals 6

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p3

    mul-float/2addr v0, p2

    int-to-float v1, p4

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mResizeMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ne v0, v3, :cond_0

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p4

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    int-to-float p1, p3

    int-to-float p2, p4

    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    if-ne v5, v2, :cond_3

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ne v0, v3, :cond_2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_1

    :cond_2
    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p4

    :goto_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    int-to-float p1, p3

    int-to-float p2, p4

    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v4, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public hideLayout()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mIsVideoVisible:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->changeVisible(II)V

    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lfx5;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onMediaPlayerStateChange(I)V
    .locals 0

    invoke-super {p0, p1}, Lfx5;->onMediaPlayerStateChange(I)V

    return-void
.end method

.method public bridge synthetic onShowError(Landroid/net/Uri;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lfx5;->onShowError(Landroid/net/Uri;I)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lfx5;->onVideoSizeChanged(II)V

    return-void
.end method

.method public reLayout(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mW:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mH:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->flPlayer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setDisplaySurfaceView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mMVDisplaySurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    new-instance v0, Lgx5;

    invoke-direct {v0, p0, p1}, Lgx5;-><init>(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 3

    iput p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mResizeMode:I

    iget p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoWidth:I

    iget v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoHeight:I

    iget v1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mW:I

    iget v2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mH:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->fixVideoSize(IIII)V

    return-void
.end method

.method public setSurfaceListener(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mSurfaceListener:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    return-void
.end method

.method public setVideoViewSize(II)V
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoWidth:I

    iput p2, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mVideoHeight:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->setResizeMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLayout()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->mIsVideoVisible:Z

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->reLayout(Z)V

    return-void
.end method
