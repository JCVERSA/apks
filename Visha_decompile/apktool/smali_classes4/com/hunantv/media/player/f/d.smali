.class public Lcom/hunantv/media/player/f/d;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/f/d$b;,
        Lcom/hunantv/media/player/f/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/f/c;

.field private b:Lcom/hunantv/media/player/d/f;

.field private c:Z

.field private d:Lcom/hunantv/media/widget/IVideoView;

.field private e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private f:Lcom/hunantv/media/player/d/f$a;

.field private g:Lcom/hunantv/media/player/f/d$b;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/d;->h:Z

    iput-boolean p2, p0, Lcom/hunantv/media/player/f/d;->c:Z

    iput-object p3, p0, Lcom/hunantv/media/player/f/d;->e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iput-object p4, p0, Lcom/hunantv/media/player/f/d;->f:Lcom/hunantv/media/player/d/f$a;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/f/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/hunantv/media/player/f/c;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    new-instance p1, Lcom/hunantv/media/player/f/d$b;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/f/d$b;-><init>(Lcom/hunantv/media/player/f/d;)V

    iput-object p1, p0, Lcom/hunantv/media/player/f/d;->g:Lcom/hunantv/media/player/f/d$b;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->g:Lcom/hunantv/media/player/f/d$b;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/d;->c:Z

    invoke-static {}, Lcom/hunantv/media/player/d/f;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/hunantv/media/player/f/d;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/hunantv/media/player/d/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/hunantv/media/player/d/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    iget-object v1, p0, Lcom/hunantv/media/player/f/d;->e:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    iget-object v1, p0, Lcom/hunantv/media/player/f/d;->f:Lcom/hunantv/media/player/d/f$a;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/d/f;->a(Lcom/hunantv/media/player/d/f$a;)Lcom/hunantv/media/player/d/f;

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/f;->a()V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/d/f;->a(I)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/f;->b()Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->g:Lcom/hunantv/media/player/f/d$b;

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/f/d$b;->a(Lcom/hunantv/media/player/d/f;)V

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->g:Lcom/hunantv/media/player/f/d$b;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/d$b;->a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public bind(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/f/d;->d:Lcom/hunantv/media/widget/IVideoView;

    return-void
.end method

.method public bindResizableFrameView(Lcom/hunantv/media/player/l;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

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

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/d;->releaseFilter()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/f/c;->a()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFps()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->i()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRenderFilter()Lcom/hunantv/media/player/d/a/d;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->j()Lcom/hunantv/media/player/d/a/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lcom/hunantv/media/player/f/d;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lcom/hunantv/media/player/f/d;

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

    iget-object v2, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/media/player/f/c;->c(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p1}, Lcom/hunantv/media/player/f/c;->b()I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p2}, Lcom/hunantv/media/player/f/c;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/f/c;->d(II)V

    return-void
.end method

.method public releaseFilter()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/f;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    :cond_0
    return-void
.end method

.method public removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->g:Lcom/hunantv/media/player/f/d$b;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/f/d$b;->b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    return-void
.end method

.method public resetFilter()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->f()V

    :cond_0
    return-void
.end method

.method public setAntiAliasing(Z)V
    .locals 0

    return-void
.end method

.method public setAntiShake(Z)V
    .locals 0

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->b(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->a(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsInScaleAnim(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsInScaleAnim :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvSurfaceRenderView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/player/f/d;->h:Z

    return-void
.end method

.method public setManualRotation(IIIII)V
    .locals 0

    return-void
.end method

.method public setRenderFilter(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/f;->a(I)V

    :cond_0
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->b(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/d/f;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/f/d;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->a(II)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/f/d;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startFps()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->g()V

    :cond_0
    return-void
.end method

.method public stopFps()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/f/d;->b:Lcom/hunantv/media/player/d/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->h()V

    :cond_0
    return-void
.end method
