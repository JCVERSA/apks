.class public Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_media_progress_info:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->seekbar_media_play_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_play_current_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->c:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_media_play_total_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->d:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->title_line:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->e:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lvha;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v0, Lcl6;

    invoke-direct {v0, p0}, Lcl6;-><init>(Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public updateGuidelineMediaPlayBottom(Landroid/content/Context;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->e:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_0

    int-to-float p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x42d80000    # 108.0f

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->e:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
