.class public Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_PADDING:I = 0x28


# instance fields
.field public b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->c:I

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->d:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    .line 7
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->g:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    .line 9
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 10
    sget v1, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_maxMarkerNum:I

    const/16 v2, 0x9

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->d:I

    .line 11
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x28

    .line 12
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0x11

    .line 14
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->d:I

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMaxMarkerNum(I)V

    .line 19
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addMarker()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    return-void
.end method

.method public addMarkers(IZ)V
    .locals 1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSpringPageIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    return p0
.end method

.method public onCreateMinusOne(ZI)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setSearchVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->updateProgress(F)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllMarkers(Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeAllMarkers()V

    :cond_0
    return-void
.end method

.method public removeMarker(IZ)V
    .locals 0

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->g:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeMarker(I)V

    :cond_1
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->c:I

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setNormalColor(I)V

    return-void
.end method

.method public setPageIndicatorMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$a;)V

    :cond_0
    return-void
.end method

.method public setSearchVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->addMarker()V

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->c:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->removeMarker(IZ)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->f:Z

    :goto_1
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setSelectedColor(I)V

    return-void
.end method

.method public updateProgress(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->b:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->update(F)V

    :cond_0
    return-void
.end method
