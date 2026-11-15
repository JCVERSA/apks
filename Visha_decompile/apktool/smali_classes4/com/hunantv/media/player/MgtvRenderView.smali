.class public Lcom/hunantv/media/player/MgtvRenderView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MGTV_AR_16_9_FIT_PARENT:I = 0x4

.field public static final MGTV_AR_4_3_FIT_PARENT:I = 0x5

.field public static final MGTV_AR_ASPECT_FILL_PARENT:I = 0x1

.field public static final MGTV_AR_ASPECT_FIT_PARENT:I = 0x0

.field public static final MGTV_AR_ASPECT_WRAP_CONTENT:I = 0x2

.field public static final MGTV_AR_MATCH_PARENT:I = 0x3

.field public static final MGTV_RENDER_SURFACE_VIEW:I = 0x0

.field public static final MGTV_RENDER_TEXTURE_VIEW:I = 0x1


# instance fields
.field private mFakeFrameView:Lcom/hunantv/media/player/c;

.field private mRenderView:Lcom/hunantv/media/player/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/j;

    invoke-direct {v0, p1}, Lcom/hunantv/media/player/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/hunantv/media/player/d/d;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/report/c/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    new-instance p3, Lcom/hunantv/media/player/j;

    move-object v0, p3

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/media/player/j;-><init>(Landroid/content/Context;IZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V

    iput-object p3, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    return-void
.end method

.method private checkLastFrameValid(Landroid/view/TextureView;II)Z
    .locals 10

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    mul-int v0, p2, p3

    new-array v9, v0, [I

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v9

    move v4, p2

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move p1, p0

    :goto_0
    if-ge p1, v0, :cond_2

    aget p2, v9, p1

    aget p3, v9, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p2, p3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return p0
.end method

.method public static getAspectRatioName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "4_3"

    return-object p0

    :cond_1
    const-string p0, "16_9"

    return-object p0

    :cond_2
    const-string p0, "MATCH_PARENT"

    return-object p0

    :cond_3
    const-string p0, "WRAP_CONTENT"

    return-object p0

    :cond_4
    const-string p0, "FILL_PARENT"

    return-object p0

    :cond_5
    const-string p0, "FIT_PARENT"

    return-object p0
.end method

.method public static getRenderTypeName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "TextureView"

    return-object p0

    :cond_1
    const-string p0, "SurfaceView"

    return-object p0
.end method


# virtual methods
.method public addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public bind(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/widget/IVideoView;)V

    return-void
.end method

.method public bindFakeFrameView(Lcom/hunantv/media/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    return-void
.end method

.method public bindResizableFrameView(Lcom/hunantv/media/player/l;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/player/l;)V

    return-void
.end method

.method public getDisplayCoordinate()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->e()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    move-result-object p0

    return-object p0
.end method

.method public getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->a()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p0

    return-object p0
.end method

.method public getRenderViewType()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->b()I

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->c()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->f()V

    :cond_0
    return-void
.end method

.method public removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->g()V

    :cond_0
    return-void
.end method

.method public saveLastValidFrame()V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvRenderView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/TextureView;

    const/16 v1, 0xa0

    const/16 v2, 0x5a

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/MgtvRenderView;->checkLastFrameValid(Landroid/view/TextureView;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->c()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setAntiAliasing(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Z)V

    :cond_0
    return-void
.end method

.method public setAntiShake(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->b(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/j;->b(I)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/c;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    return-void
.end method

.method public setIsInScaleAnim(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->c(Z)V

    :cond_0
    return-void
.end method

.method public setManualRotation(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hunantv/media/player/j;->a(IIIII)V

    return-void
.end method

.method public setRenderFilter(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->c(I)V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/j;->a(I)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/c;->setVideoRotation(I)V

    :cond_0
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/j;->b(II)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/j;->a(II)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mFakeFrameView:Lcom/hunantv/media/player/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/c;->a(II)V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvRenderView;->mRenderView:Lcom/hunantv/media/player/j;

    invoke-virtual {p0}, Lcom/hunantv/media/player/j;->d()Z

    move-result p0

    return p0
.end method
