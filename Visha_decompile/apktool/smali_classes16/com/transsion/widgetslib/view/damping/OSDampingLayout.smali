.class public Lcom/transsion/widgetslib/view/damping/OSDampingLayout;
.super Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/view/damping/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;
    }
.end annotation


# instance fields
.field public E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->j()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getHeaderHelper()Lcom/transsion/widgetslib/view/damping/HeaderHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    return-object p0
.end method

.method public initHeaderHelper()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-void
.end method

.method public isRefreshing()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o()Z

    move-result p0

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->p()V

    return-void
.end method

.method public onFinishHeaderInflate(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->q(Landroid/view/View;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title2:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, -0x1

    invoke-virtual {v4, v2, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v4, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->onFinishHeaderInflate(Landroid/view/View;)V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->r(F)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;)V

    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setRefreshEnabled(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->E:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setTextColor(I)V

    return-void
.end method
