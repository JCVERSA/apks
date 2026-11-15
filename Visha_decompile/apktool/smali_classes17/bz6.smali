.class public Lbz6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public final c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lbz6;->d(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lbz6;-><init>(Landroid/view/View;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbz6;->a:Landroid/view/View;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 5
    iput p2, p0, Lbz6;->c:F

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 6
    invoke-static {p1}, Lbz6;->d(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lbz6;-><init>(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    iget-boolean v0, p0, Lbz6;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lbz6;->a:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbz6;->b:Z

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lbz6;->d:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lbz6;->e:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lbz6;->b:Z

    if-nez v2, :cond_3

    iget v2, p0, Lbz6;->c:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    iput-boolean v1, p0, Lbz6;->b:Z

    iget-object p0, p0, Lbz6;->a:Landroid/view/View;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lbz6;->b:Z

    iget-object p0, p0, Lbz6;->a:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lbz6;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lbz6;->e:F

    :cond_3
    :goto_0
    return-void
.end method
