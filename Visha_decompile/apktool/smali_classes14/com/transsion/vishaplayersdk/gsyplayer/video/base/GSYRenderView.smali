.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field protected bHardwareAccelerated:Z

.field protected mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

.field protected mFullPauseBitmap:Landroid/graphics/Bitmap;

.field protected mMatrixGL:[F

.field protected mMode:I

.field protected mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

.field protected mRotate:I

.field protected mSurface:Landroid/view/Surface;

.field protected mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

.field protected mTextureViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMatrixGL:[F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->bHardwareAccelerated:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMatrixGL:[F

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->bHardwareAccelerated:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMatrixGL:[F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->bHardwareAccelerated:Z

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    return-void
.end method


# virtual methods
.method public addTextureView()V
    .locals 10

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getRenderType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setCustomRender(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMatrixGL:[F

    iget-object v8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget v9, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMatrixGL:[F

    iget-object v8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget v9, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)V

    :goto_0
    return-void
.end method

.method public changeTextureViewShowType()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->getTextureParams()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getRenderProxy()Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    return-object p0
.end method

.method public getTextureParams()I
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getShowType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public initCover()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->initCover()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public isbHardwareAccelerated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->bHardwareAccelerated:Z

    return p0
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getShowView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->pauseLogic(Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setDisplay(Landroid/view/Surface;)V

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->releaseSurface(Landroid/view/Surface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->releasePauseCover()V

    return-void
.end method

.method public pauseLogic(Landroid/view/Surface;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mSurface:Landroid/view/Surface;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->showPauseCover()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public abstract releasePauseCover()V
.end method

.method public abstract releaseSurface(Landroid/view/Surface;)V
.end method

.method public abstract setCustomRender(Landroid/view/ViewGroup;)V
.end method

.method public abstract setDisplay(Landroid/view/Surface;)V
.end method

.method public setEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->setEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    :cond_0
    return-void
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->bHardwareAccelerated:Z

    return-void
.end method

.method public abstract setSmallVideoTextureView()V
.end method

.method public setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setSmallVideoTextureView()V

    return-void
.end method

.method public abstract showPauseCover()V
.end method
