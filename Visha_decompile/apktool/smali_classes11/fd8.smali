.class public Lfd8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd8$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/PopupWindow;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

.field public e:Lfd8$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd8;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lfd8;->f()V

    return-void
.end method

.method public static synthetic a(Lfd8;ILub9;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfd8;->h(ILub9;)V

    return-void
.end method

.method public static synthetic b(Lfd8;)V
    .locals 0

    invoke-virtual {p0}, Lfd8;->g()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 5

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lfd8;->e(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-le p1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v4, :cond_1

    mul-int/2addr v0, v3

    goto :goto_1

    :cond_1
    mul-int/2addr v0, p1

    :goto_1
    iget-object p1, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    if-eqz v4, :cond_2

    iget-object p1, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    iget-object p1, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lfd8;->e(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(I)I
    .locals 1

    int-to-float p1, p1

    iget-object p0, p0, Lfd8;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lfd8;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$layout;->layout_universal_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lfd8;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v2, p0, Lfd8;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    sget v0, Lcom/transsion/onlinevideo/R$style;->PopupAnimation:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    new-instance v1, Ldd8;

    invoke-direct {v1, p0}, Ldd8;-><init>(Lfd8;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final synthetic g()V
    .locals 0

    iget-object p0, p0, Lfd8;->e:Lfd8$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lfd8$a;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final synthetic h(ILub9;)V
    .locals 1

    iget-object v0, p0, Lfd8;->d:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->r(I)V

    iget-object v0, p0, Lfd8;->e:Lfd8$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lfd8$a;->a(ILub9;)V

    :cond_0
    invoke-virtual {p0}, Lfd8;->d()V

    return-void
.end method

.method public i(Landroid/view/View;Ljava/util/List;Lfd8$a;)V
    .locals 1

    iput-object p3, p0, Lfd8;->e:Lfd8$a;

    new-instance p3, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-direct {p3, p2}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lfd8;->d:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    new-instance v0, Led8;

    invoke-direct {v0, p0}, Led8;-><init>(Lfd8;)V

    invoke-virtual {p3, v0}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->setOnItemClickListener(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;)V

    iget-object p3, p0, Lfd8;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lfd8;->d:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lfd8;->c(I)V

    invoke-virtual {p0, p1}, Lfd8;->j(Landroid/view/View;)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lfd8;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v7, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v9, v2, v7

    if-le v9, v6, :cond_0

    add-int/2addr v2, v3

    sub-int/2addr v2, v7

    :cond_0
    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lfd8;->e(I)I

    move-result v3

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    add-int v3, v4, v8

    if-le v3, v5, :cond_3

    sub-int/2addr v0, v8

    if-gez v0, :cond_2

    if-le v3, v5, :cond_3

    sub-int/2addr v5, v8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lfd8;->e(I)I

    move-result v0

    sub-int v4, v5, v0

    goto :goto_0

    :cond_2
    move v4, v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lfd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, v1, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
