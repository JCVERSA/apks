.class public Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/IGSYRenderView;
.implements Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field private mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

.field private mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->init()V

    return-void
.end method

.method public static addSurfaceView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->setVideoParamsListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    int-to-float p0, p2

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    .line 7
    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method public static addSurfaceView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;
    .locals 1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-nez p5, :cond_1

    .line 10
    new-instance p5, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    invoke-direct {p5, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;-><init>(Landroid/content/Context;)V

    .line 11
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    :cond_2
    new-instance p5, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;

    invoke-direct {p5, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p5, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V

    .line 15
    invoke-virtual {p5, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->setVideoParamsListener(Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    int-to-float p0, p2

    .line 16
    invoke-virtual {p5, p0}, Landroid/view/View;->setRotation(F)V

    .line 17
    invoke-static {p1, p5}, Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object p5
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-direct {v0, p0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    return-void
.end method


# virtual methods
.method public getCurrentVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIGSYSurfaceListener()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    return-object p0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

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

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->prepareMeasure(III)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRenderPause()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support onRenderPause now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderResume()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support onRenderResume now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public releaseRenderAll()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support releaseRenderAll now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support saveFrame now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support setGLEffectFilter now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support setGLMVPMatrix now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLRenderer(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support setGLRenderer now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support setRenderMode now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceDestroyed(Landroid/view/Surface;)Z

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public taskShotPic(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not support taskShotPic now"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method
