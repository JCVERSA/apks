.class public Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;
    }
.end annotation


# static fields
.field public static final MODE_LAYOUT_SIZE:I = 0x0

.field public static final MODE_RENDER_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

.field private mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

.field private mMVPMatrix:[F

.field private mMode:I

.field private mOnGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;

.field private mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

.field private mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    move-object v4, p0

    invoke-direct {v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    :cond_1
    move-object/from16 v1, p5

    .line 5
    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    move-object v1, p4

    .line 6
    invoke-virtual {v2, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    move/from16 v9, p8

    .line 7
    invoke-virtual {v2, v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    move-object v7, p3

    .line 8
    invoke-virtual {v2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V

    move v6, p2

    int-to-float v3, v6

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 10
    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->initRender()V

    .line 11
    new-instance v10, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$2;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$2;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V

    invoke-virtual {v2, v10}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V

    if-eqz v0, :cond_2

    .line 12
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 13
    invoke-virtual {v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    :cond_2
    move-object v0, p1

    .line 14
    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2
.end method

.method public static addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-nez p9, :cond_1

    .line 17
    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    move-object v4, p0

    invoke-direct {v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object/from16 v2, p9

    .line 18
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    :cond_3
    move-object/from16 v1, p5

    .line 21
    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    move-object v1, p4

    .line 22
    invoke-virtual {v2, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    move/from16 v9, p8

    .line 23
    invoke-virtual {v2, v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    move-object v7, p3

    .line 24
    invoke-virtual {v2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V

    move v6, p2

    int-to-float v3, v6

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 26
    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->initRender()V

    .line 27
    new-instance v10, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V

    invoke-virtual {v2, v10}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V

    if-eqz v0, :cond_4

    .line 28
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 29
    invoke-virtual {v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    :cond_4
    move-object v0, p1

    .line 30
    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;

    invoke-direct {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewSimpleRender;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-direct {p1, p0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public getCurrentVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEffect()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object p0
.end method

.method public getIGSYSurfaceListener()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    return-object p0
.end method

.method public getMVPMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMVPMatrix:[F

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    return p0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getRenderer()Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    return-object p0
.end method

.method public getSizeH()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getSizeW()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initCover()Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support initCover now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initCoverHigh()Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support initCoverHigh now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initRender()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public initRenderMeasure()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentViewWidth(I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentViewHeight(I)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentVideoWidth(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentVideoHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->prepareMeasure(III)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->initRenderMeasure()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->prepareMeasure(III)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onRenderPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onRenderResume()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->onResume()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->initRenderSize()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public releaseAll()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->releaseAll()V

    :cond_0
    return-void
.end method

.method public releaseRenderAll()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->releaseAll()V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->takeShotPic()V

    return-void
.end method

.method public setCustomRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->initRenderMeasure()V

    return-void
.end method

.method public setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mEffect:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setEffect(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    return-void
.end method

.method public setGLRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYVideoGLRenderErrorListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V

    return-void
.end method

.method public setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setOnGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMVPMatrix:[F

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setMVPMatrix([F)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mMode:I

    return-void
.end method

.method public setOnGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mOnGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GLSurfaceListener;)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setMode(I)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support setRenderTransform now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method

.method public takeShotPic()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->takeShotPic()V

    return-void
.end method

.method public taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->takeShotPic()V

    :cond_0
    return-void
.end method
