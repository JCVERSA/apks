.class public Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->getTextureParams()I

    move-result v0

    instance-of v1, p0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getTextureParams()I
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getShowType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public addView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)V
    .locals 12

    move-object v0, p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getRenderType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz v1, :cond_0

    move-object v7, v1

    check-cast v7, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->addSurfaceView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->addSurfaceView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getRenderType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz v1, :cond_2

    move-object v11, v1

    check-cast v11, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v2 .. v11}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GSYVideoType;->getRenderType()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz v1, :cond_4

    move-object v7, v1

    check-cast v7, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;->addTextureView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;->addTextureView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0
.end method

.method public getShowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initCover()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->initCover()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initCoverHigh()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->initCoverHigh()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->onRenderPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->onRenderResume()V

    :cond_0
    return-void
.end method

.method public releaseAll()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->releaseRenderAll()V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public saveFrame(Ljava/io/File;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V

    :cond_0
    return-void
.end method

.method public setEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->setGLEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    :cond_0
    return-void
.end method

.method public setGLRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public setGLRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->setGLRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setMatrixGL([F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->setGLMVPMatrix([F)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->getRenderView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->setRenderTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V

    return-void
.end method

.method public taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->mShowView:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;->taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V

    :cond_0
    return-void
.end method
