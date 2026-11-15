.class public Lcom/hunantv/media/player/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/hunantv/media/player/IMgtvRenderView;

.field private e:Z

.field private f:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private g:Lcom/hunantv/media/player/d/f$a;

.field private h:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImgoRendView"

    iput-object v0, p0, Lcom/hunantv/media/player/j;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/player/j;->c:I

    new-instance v0, Lcom/hunantv/media/player/j$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/j$1;-><init>(Lcom/hunantv/media/player/j;)V

    iput-object v0, p0, Lcom/hunantv/media/player/j;->h:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/j;->a(Landroid/content/Context;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImgoRendView"

    iput-object v0, p0, Lcom/hunantv/media/player/j;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/player/j;->c:I

    new-instance v0, Lcom/hunantv/media/player/j$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/j$1;-><init>(Lcom/hunantv/media/player/j;)V

    iput-object v0, p0, Lcom/hunantv/media/player/j;->h:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iput-boolean p3, p0, Lcom/hunantv/media/player/j;->e:Z

    iput-object p4, p0, Lcom/hunantv/media/player/j;->f:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iput-object p5, p0, Lcom/hunantv/media/player/j;->g:Lcom/hunantv/media/player/d/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/j;->a(Landroid/content/Context;I)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    return-void
.end method

.method private a(ILandroid/content/Context;)Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 3

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/j;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invalid render %d\n"

    invoke-static {p2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/hunantv/media/player/f/e;

    iget-boolean v2, p0, Lcom/hunantv/media/player/j;->e:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/hunantv/media/player/j;->a:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/player/j;->h:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object p0, p0, Lcom/hunantv/media/player/j;->g:Lcom/hunantv/media/player/d/f$a;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/hunantv/media/player/f/e;-><init>(Landroid/content/Context;ZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/hunantv/media/player/f/d;

    iget-boolean v2, p0, Lcom/hunantv/media/player/j;->e:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/hunantv/media/player/j;->a:Z

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/hunantv/media/player/j;->h:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object p0, p0, Lcom/hunantv/media/player/j;->g:Lcom/hunantv/media/player/d/f$a;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/hunantv/media/player/f/d;-><init>(Landroid/content/Context;ZLcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;Lcom/hunantv/media/player/d/f$a;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/j;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/hunantv/media/player/j;->f:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-object p0
.end method

.method private h()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->releaseFilter()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 1

    .line 3
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi14_IceCreamSandwichOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/hunantv/media/player/j;->c:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/hunantv/media/player/j;->c:I

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/player/j;->a(ILandroid/content/Context;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;I)Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 2

    .line 4
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi14_IceCreamSandwichOrLater()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput v0, p0, Lcom/hunantv/media/player/j;->c:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/hunantv/media/player/j;->c:I

    :goto_0
    iget p2, p0, Lcom/hunantv/media/player/j;->c:I

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/j;->a(ILandroid/content/Context;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setVideoRotation(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/IMgtvRenderView;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public a(IIIII)V
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/hunantv/media/player/IMgtvRenderView;->setManualRotation(IIIII)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->addRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/player/l;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->bindResizableFrameView(Lcom/hunantv/media/player/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->bind(Lcom/hunantv/media/widget/IVideoView;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setAntiAliasing(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p0, Lcom/hunantv/media/player/f/e;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/hunantv/media/player/f/d;

    :cond_1
    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/IMgtvRenderView;->setVideoSampleAspectRatio(II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->removeRenderCallback(Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setAntiShake(Z)V

    :cond_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->getView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setRenderFilter(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/IMgtvRenderView;->setIsInScaleAnim(Z)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->shouldWaitForResize()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/j;->f:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-direct {p0}, Lcom/hunantv/media/player/j;->h()V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/j;->d:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->resetFilter()V

    :cond_0
    return-void
.end method
