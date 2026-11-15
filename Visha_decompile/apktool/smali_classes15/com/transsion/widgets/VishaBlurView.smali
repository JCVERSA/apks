.class public Lcom/transsion/widgets/VishaBlurView;
.super Leightbitlab/com/blurview/BlurView;
.source "SourceFile"


# static fields
.field public static final IS_SUPPORT_BLUR:Z = true


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setRootBlurView(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$attr;->min_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;)Lfg0;

    move-result-object p0

    .line 6
    invoke-interface {p0, v0}, Lfg0;->f(Landroid/graphics/drawable/Drawable;)Lfg0;

    move-result-object p0

    iget p1, p2, Landroid/util/TypedValue;->data:I

    .line 7
    invoke-interface {p0, p1}, Lfg0;->d(I)Lfg0;

    move-result-object p0

    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    invoke-interface {p0, p1}, Lfg0;->c(F)Lfg0;

    return-void
.end method


# virtual methods
.method public setRootBlurView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/VishaBlurView;->setRootBlurView(Landroid/view/View;Z)V

    return-void
.end method
