.class public Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:Z

.field public d:Lcom/transsion/widgetslistitemlayout/a;

.field public e:Lcom/transsion/hubsdk/api/graphics/TranCanvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->b()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;)Lcom/transsion/widgetslistitemlayout/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->d:Lcom/transsion/widgetslistitemlayout/a;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_radius_l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->b:F

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->e:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->e:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$drawable;->os_list_item_view_bg_corners_normal:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Lcom/transsion/widgetslistitemlayout/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslistitemlayout/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->d:Lcom/transsion/widgetslistitemlayout/a;

    return-void
.end method

.method public collapseViews(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->collapseViews(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public collapseViews(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;-><init>(Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public collapseViewsWithAnim(Landroid/view/View;ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p3    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->collapseViewsWithAnim(Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public collapseViewsWithAnim(Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p3    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->d:Lcom/transsion/widgetslistitemlayout/a;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/widgetslistitemlayout/a;->f(Ljava/util/List;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->e:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->e:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget v7, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->b:F

    sget-object v8, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public expandViewsWithAnim(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p1    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->d:Lcom/transsion/widgetslistitemlayout/a;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/a;->h(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
