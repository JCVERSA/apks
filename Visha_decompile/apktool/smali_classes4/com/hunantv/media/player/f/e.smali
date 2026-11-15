.class public Lcom/hunantv/media/player/f/e;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/f/e$b;,
        Lcom/hunantv/media/player/f/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/f/c;

.field private b:Lcom/hunantv/media/player/d/f;

.field private c:Z

.field private d:Lcom/hunantv/media/utils/FpsStatistic;

.field private e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private f:Lcom/hunantv/media/player/d/f$a;

.field private g:Lcom/hunantv/media/player/f/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/hunantv/media/utils/FpsStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/utils/FpsStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    iput-boolean p2, p0, Lcom/hunantv/media/player/f/e;->c:Z

    iput-object p3, p0, Lcom/hunantv/media/player/f/e;->e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iput-object p4, p0, Lcom/hunantv/media/player/f/e;->f:Lcom/hunantv/media/player/d/f$a;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/f/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/f/e;)Lcom/hunantv/media/player/f/e$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance p1, Lcom/hunantv/media/player/f/c;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    new-instance p1, Lcom/hunantv/media/player/f/e$b;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-direct {p1, p0, v0}, Lcom/hunantv/media/player/f/e$b;-><init>(Lcom/hunantv/media/player/f/e;Lcom/hunantv/media/utils/FpsStatistic;)V

    iput-object p1, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/e;->c:Z

    invoke-static {}, Lcom/hunantv/media/player/d/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/f/e;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isRenderOpenglOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/d/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hunantv/media/player/d/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e;->e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e;->f:Lcom/hunantv/media/player/d/f$a;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/d/f$a;)Lcom/hunantv/media/player/d/f;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/d/f;->a(I)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/f;->b()Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/f/e$b;->a(Lcom/hunantv/media/player/d/f;)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/e;->setAntiAliasing(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/e$b;->a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public bind(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/widget/IVideoView;)V

    :cond_0
    return-void
.end method

.method public bindResizableFrameView(Lcom/hunantv/media/player/l;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/c;->a(Lcom/hunantv/media/player/l;)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e;->releaseFilter()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/c;->a()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFps()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->i()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->getFps()I

    move-result p0

    return p0
.end method

.method public getRenderFilter()Lcom/hunantv/media/player/d/a/d;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->j()Lcom/hunantv/media/player/d/a/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceHolder()Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;
    .locals 4

    new-instance v0, Lcom/hunantv/media/player/f/e$a;

    iget-object v1, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-static {v1}, Lcom/hunantv/media/player/f/e$b;->a(Lcom/hunantv/media/player/f/e$b;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    iget-object v3, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hunantv/media/player/f/e$a;-><init>(Lcom/hunantv/media/player/f/e;Landroid/graphics/SurfaceTexture;Lcom/hunantv/media/player/f/b;Lcom/hunantv/media/player/d/f;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/f/e$b;->c()V

    :try_start_0
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$b;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/f/e$b;->a()V

    :try_start_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow faild,msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvTextureRenderView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/e$b;->b()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lcom/hunantv/media/player/f/e;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lcom/hunantv/media/player/f/e;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/media/player/f/c;->c(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p1}, Lcom/hunantv/media/player/f/c;->b()I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p2}, Lcom/hunantv/media/player/f/c;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/f/c;->d(II)V

    return-void
.end method

.method public releaseFilter()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    :cond_0
    return-void
.end method

.method public removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->g:Lcom/hunantv/media/player/f/e$b;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/e$b;->b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public resetFilter()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->f()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->resetFps()V

    :goto_0
    return-void
.end method

.method public setAntiAliasing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x3f800054    # 1.00001f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setAntiShake(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->b(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->a(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsInScaleAnim(Z)V
    .locals 0

    return-void
.end method

.method public setManualRotation(IIIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManualRotation,rotation_degree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvTextureRenderView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x5a

    if-gt p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-gt p5, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-gt p5, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x168

    if-gt p5, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/f/e;->setVideoRotation(I)V

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/f/e;->setVideoSize(II)V

    invoke-virtual {p0, p3, p4}, Lcom/hunantv/media/player/f/e;->setVideoSampleAspectRatio(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setRenderFilter(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/f;->a(I)V

    :cond_0
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->a(I)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->b(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/d/f;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startFps()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->g()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->startFps()V

    :goto_0
    return-void
.end method

.method public stopFps()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/e;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->h()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/f/e;->d:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->stopFps()V

    :goto_0
    return-void
.end method
