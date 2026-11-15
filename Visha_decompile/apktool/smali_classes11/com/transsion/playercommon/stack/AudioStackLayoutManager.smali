.class public Lcom/transsion/playercommon/stack/AudioStackLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public g:Landroid/content/Context;

.field public h:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;-><init>(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)V

    iput-object v0, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->g:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->f:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le p2, v3, :cond_2

    move p2, v3

    :goto_0
    if-ltz p2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v10, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v8, v6, v4

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    add-int v9, v7, v4

    move-object v4, p0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-ne p2, v3, :cond_0

    add-int/lit8 v4, p2, -0x1

    int-to-float v5, v4

    mul-float/2addr v5, v0

    sub-float v5, v1, v5

    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    int-to-float v4, p2

    mul-float/2addr v4, v0

    sub-float v4, v1, v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    mul-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v9, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-lez p2, :cond_3

    int-to-float v3, p2

    mul-float/2addr v3, v0

    sub-float v3, v1, v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method
