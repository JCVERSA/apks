.class public Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;
    }
.end annotation


# static fields
.field public static U:I

.field public static V:I

.field public static W:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:F

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:F

.field public O:Landroid/view/WindowManager;

.field public P:Landroid/view/GestureDetector;

.field public Q:I

.field public final R:Landroid/os/Handler;

.field public S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

.field public T:Ljava/lang/Runnable;

.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/magicvideo/services/VideosService;

.field public d:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public e:Landroid/view/SurfaceHolder;

.field public f:F

.field public g:F

.field public h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

.field public i:I

.field public j:I

.field public k:Landroid/view/WindowManager$LayoutParams;

.field public l:Landroid/view/SurfaceView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/ImageView;

.field public r:Landroidx/constraintlayout/widget/Group;

.field public s:Landroidx/constraintlayout/widget/Group;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/SeekBar;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public final y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    .line 14
    sget-object v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    .line 15
    new-instance v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    iput v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    .line 17
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    .line 3
    sget-object v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    .line 4
    new-instance v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    .line 6
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->H(II)V

    int-to-float p1, p2

    mul-float/2addr p1, v1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->s(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    .line 23
    sget-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    .line 24
    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    .line 26
    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    .line 27
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    .line 28
    new-instance p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    .line 29
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 31
    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    .line 32
    sget-object p3, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    .line 33
    new-instance p3, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;

    invoke-direct {p3, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$1;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 34
    iput p3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    .line 35
    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    .line 36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    .line 37
    new-instance p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method private E(Z)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_play_pause:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_pause:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_play:I

    :goto_0
    invoke-static {p0, p1}, Lkdc;->b(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private F(JJJ)V
    .locals 0

    iget p5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->v:I

    const/4 p6, 0x6

    if-ne p5, p6, :cond_0

    move-wide p1, p3

    :cond_0
    const-wide/16 p5, 0x64

    mul-long/2addr p1, p5

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->u:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->v(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->x(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(IILcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->t(IILcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Lcom/transsion/magicvideo/player/VideoPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->e:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method private getRate()F
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->i:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    :goto_0
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->e:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->n()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->setControlGroupVisibility(Z)V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setControlGroupVisibility(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setControlGroupVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FloatingVideoWidget"

    invoke-static {v1, v0}, Lcom/transsion/core/log/LogUtils;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->r:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->s:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static synthetic t(IILcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Ljava/util/List;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ltpb;->M(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Llz3;

    invoke-direct {v0}, Llz3;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "..."

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 6

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    sub-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final A(II)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, p2, :cond_2

    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/avery/subtitle/R$dimen;->subtitle_text_size_pip_min:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/2addr p0, p1

    sget p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    div-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextSize(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final B(IIZ)V
    .locals 5

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    if-le p1, v0, :cond_0

    int-to-float p1, v0

    iget p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    :goto_0
    div-float/2addr p1, p2

    float-to-int p2, p1

    move p1, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    if-ge p1, v0, :cond_1

    int-to-float p1, v0

    iget p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    if-le p2, v0, :cond_2

    int-to-float p1, v0

    iget p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    :goto_2
    mul-float/2addr p1, p2

    float-to-int p1, p1

    move p2, v0

    goto :goto_3

    :cond_2
    sget v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    if-ge p2, v0, :cond_3

    int-to-float p1, v0

    iget p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p3, :cond_4

    sget p3, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    if-eqz p3, :cond_4

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p3

    int-to-float p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-double v0, p3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p3, v0

    iput p3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetSizePosition mScaleRate:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FloatingVideoWidget"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget p3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D:I

    if-lt p1, p3, :cond_5

    move p1, p3

    :cond_5
    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E:I

    if-lt p2, v0, :cond_6

    move p2, v0

    :cond_6
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v4, p3, v3

    if-le v2, v4, :cond_7

    sub-int/2addr p3, v3

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_7
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v3, v0, v2

    if-le p3, v3, :cond_8

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A(II)V

    return-void
.end method

.method public C(Z)V
    .locals 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x0

    const-wide/16 v10, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v8, v5

    :try_start_1
    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    cmp-long p1, v8, v3

    if-gtz p1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->u:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_1
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->F(JJJ)V

    return-void

    :catchall_0
    move-exception v5

    :goto_1
    move-object v12, v5

    goto :goto_2

    :catchall_1
    move-exception v5

    move-wide v8, v3

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    cmp-long p1, v8, v3

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->F(JJJ)V

    throw v12
.end method

.method public final D(ILjava/util/List;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lkz3;

    invoke-direct {v1}, Lkz3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    if-nez p2, :cond_2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setFirstTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setFirstTrackDelay(J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setSecondTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setSecondTrackDelay(J)V

    goto :goto_1

    :cond_2
    const-string v0, "FloatingVideoWidget"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setFirstTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    iget p1, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    float-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setFirstTrackDelay(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackInfo1 ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    invoke-virtual {p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setSecondTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    iget p1, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    float-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->setSecondTrackDelay(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackInfo2 ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->f(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->i(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->H:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenSize screenW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",screenH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",statusBarHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->F:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FloatingVideoWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final H(II)V
    .locals 9

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->B:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->C:I

    if-eq v0, p2, :cond_5

    :cond_0
    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->B:I

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->C:I

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    double-to-float p1, p1

    float-to-double v2, p1

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double p2, v2, v4

    const v6, 0x43918000    # 291.0f

    const/high16 v7, 0x435a0000    # 218.0f

    const/high16 v8, 0x43240000    # 164.0f

    if-gtz p2, :cond_1

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v8}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43c20000    # 388.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    goto/16 :goto_0

    :cond_1
    cmpl-double p2, v2, v4

    const-wide v4, 0x3feb333333333333L    # 0.85

    if-lez p2, :cond_2

    cmpg-double p2, v2, v4

    if-gtz p2, :cond_2

    const/high16 p2, 0x42960000    # 75.0f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v8}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    goto/16 :goto_0

    :cond_2
    cmpl-double p2, v2, v4

    const-wide v4, 0x3ff199999999999aL    # 1.1

    if-lez p2, :cond_3

    cmpg-double p2, v2, v4

    if-gtz p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v8}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    goto/16 :goto_0

    :cond_3
    cmpl-double p2, v2, v4

    const/high16 v4, 0x43a40000    # 328.0f

    if-lez p2, :cond_4

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpg-double p2, v2, v5

    if-gtz p2, :cond_4

    const/high16 p2, 0x43050000    # 133.0f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v8}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42f60000    # 123.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43760000    # 246.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    goto :goto_0

    :cond_4
    const/high16 p2, 0x43310000    # 177.0f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v8}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42b80000    # 92.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43380000    # 184.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateVideoRate origin_rate:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",w_h_rate:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",min_size_w:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",min_size_h:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",max_size_w:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",max_size_h:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->A:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FloatingVideoWidget"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final I(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attchWindow()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public bindWindow(Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->c:Lcom/transsion/magicvideo/services/VideosService;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public exitWindow()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lvha;->u(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->b:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    sget v0, Lcom/transsion/magicvideo/R$layout;->floating_video_widget_copy:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->black_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->t:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->video_detail_full_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->q:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->p:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->n:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_previous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->player_surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l:Landroid/view/SurfaceView;

    sget v1, Lcom/transsion/magicvideo/R$id;->seekbar_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->u:Landroid/widget/SeekBar;

    sget v1, Lcom/transsion/magicvideo/R$id;->tracks_subtitle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->f0()Lcom/transsion/playercommon/player/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->bindToIPlayer(Lcom/transsion/playercommon/player/b;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setPictureInPictureMode(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->S:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setSettingDrag(ZZ)V

    invoke-static {}, Lpp3;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->subtitle_surface_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->L(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, -0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    sget v1, Lcom/transsion/magicvideo/R$id;->control_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->r:Landroidx/constraintlayout/widget/Group;

    sget v1, Lcom/transsion/magicvideo/R$id;->play_control_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->s:Landroidx/constraintlayout/widget/Group;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$b;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->P:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x43100000    # 144.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42d80000    # 108.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->W:I

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->C(Z)V

    invoke-direct {p0, v3}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->setControlGroupVisibility(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->u:Landroid/widget/SeekBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->queryVideoSubtitles(I)V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 8

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const-string v2, "zoomin"

    const-string v3, "zoomout"

    if-eqz v1, :cond_1

    float-to-double v4, v0

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    iput-object v3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->x:Ljava/lang/String;

    const-string v1, "draft"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lp06;->l0(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lp06;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v3}, Lp06;->l0(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final l(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public m(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createLayoutParams width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",paddingleft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",paddingtop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingVideoWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x40028

    const/4 v7, -0x3

    const/16 v5, 0x7f6

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p1, 0x33

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/magicvideo/R$string;->video:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->r:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayMissControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatingVideoWidget"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->setControlGroupVisibility(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final o(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->r()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_close:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->c:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/magicvideo/services/VideosService;->u()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->c:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    const-string p0, "off"

    invoke-static {p0}, Lp06;->l0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->video_detail_full_screen:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->c:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPipMute:Z

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->PLAY_FROM_PIP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->c:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->o()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    const-string p0, "return"

    invoke-static {p0}, Lp06;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_next:I

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    const-string p0, "next"

    invoke-static {p0}, Lp06;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_pause:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "pause"

    goto :goto_0

    :cond_4
    const-string p1, "play"

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    invoke-static {p1}, Lp06;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_play_previous:I

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r1()V

    const-string p0, "pre"

    invoke-static {p0}, Lp06;->l0(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingVideoWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->B(IIZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    return-void
.end method

.method public onInfo(II)Z
    .locals 0

    invoke-static {}, Lpp3;->w()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const-string p1, "FloatingVideoWidget"

    const-string p2, "onInfo hide cover, first video frame "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->t:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    const-string v0, "FloatingVideoWidget"

    const-string v1, "onPlayItemChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->queryVideoSubtitles(I)V

    :cond_1
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    :cond_0
    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->v:I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E(Z)V

    return-void
.end method

.method public onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    const-string p1, "FloatingVideoWidget"

    const-string v0, "onStartChangedPlayItem start "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lpp3;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->l:Landroid/view/SurfaceView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    sget-object v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->SCALE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->P:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    if-eq v3, v5, :cond_a

    if-eq v3, v4, :cond_6

    const/4 v6, 0x5

    if-eq v3, v6, :cond_c

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    goto/16 :goto_1

    :cond_2
    if-ne v3, v4, :cond_5

    if-nez v0, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->p(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->J:I

    if-nez v0, :cond_4

    move v2, v5

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->q(Landroid/view/MotionEvent;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->K:I

    sget-object p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->MOVING:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    goto/16 :goto_1

    :cond_5
    sget-object p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->L:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->M:I

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->L:I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->J:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_7

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->M:I

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->K:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, v0, :cond_8

    :cond_7
    const-string p1, "draft"

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->x:Ljava/lang/String;

    :cond_8
    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->L:I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->J:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->M:I

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->K:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->y(II)V

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->L:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->J:I

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->M:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->K:I

    goto/16 :goto_1

    :cond_9
    if-lt v0, v4, :cond_d

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, p1, v5}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->p(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-virtual {p0, p1, v5}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->q(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o(FFFF)F

    move-result p1

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->g:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v5}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->B(IIZ)V

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->g:F

    iput v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->i:I

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->j:I

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k()V

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->J:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->K:I

    sget-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->MOVING:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->x:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->N:F

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, p1, v5}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->p(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-virtual {p0, p1, v5}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->q(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o(FFFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->j:I

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    invoke-direct {p0, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->setControlGroupVisibility(Z)V

    :cond_d
    :goto_1
    return v5
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingVideoWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->z(II)V

    return-void
.end method

.method public final p(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    add-int/lit8 v0, p2, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    add-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pointIndex is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    add-int/lit8 v0, p2, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pointIndex is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryTrackSubtitle(II)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lgz3;

    invoke-direct {v1, p1, p2}, Lgz3;-><init>(II)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    new-instance v0, Lhz3;

    invoke-direct {v0}, Lhz3;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Liz3;

    invoke-direct {v0, p0, p2}, Liz3;-><init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;I)V

    new-instance p0, Ljz3;

    invoke-direct {p0}, Ljz3;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public queryVideoSubtitles(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->queryTrackSubtitle(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->queryTrackSubtitle(II)V

    return-void
.end method

.method public final s(F)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->Q:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G()V

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->Q:I

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    sget v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    sget v2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    iget v3, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E:I

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->O:Landroid/view/WindowManager;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public updateConfig(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingVideoWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->G()V

    :cond_0
    return-void
.end method

.method public updateNextAndPreviousState(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_previous:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_previous_disable:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_next:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_floating_next_disable:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    return-void
.end method

.method public final synthetic v(ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D(ILjava/util/List;)V

    return-void
.end method

.method public final y(II)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p2, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x0

    if-gez p1, :cond_0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->D:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v4, v2, v3

    if-le p1, v4, :cond_1

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->E:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v2, p1, v1

    if-le p2, v2, :cond_3

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public final z(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->k:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->H(II)V

    sget p1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->U:I

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->I:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    sget v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->V:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->B(IIZ)V

    :cond_2
    :goto_0
    return-void
.end method
