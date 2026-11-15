.class public Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;
.super Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
.source "SourceFile"


# instance fields
.field public I:Z

.field public J:Landroid/widget/TextView;

.field public K:Landroidx/recyclerview/widget/RecyclerView;

.field public L:Landroid/widget/ImageView;

.field public M:Z

.field public N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

.field public O:Landroid/view/ViewGroup;

.field public P:Landroid/view/ViewGroup$MarginLayoutParams;

.field public Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public R:Landroid/view/GestureDetector;

.field public S:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    .line 3
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->R:Landroid/view/GestureDetector;

    .line 4
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    .line 5
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    .line 9
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->R:Landroid/view/GestureDetector;

    .line 10
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    .line 15
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->R:Landroid/view/GestureDetector;

    .line 16
    iput-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    .line 17
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic h(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static synthetic j(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->l(Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->P:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getVoteMessage()Lcom/mgmi/model/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->k(Lcom/mgmi/model/t;)V

    .line 5
    sget v0, Lcom/mgmi/R$id;->listview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->K:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 8
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->K:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->K:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    .line 11
    sget v2, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->L:Landroid/widget/ImageView;

    .line 12
    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$c;

    invoke-direct {v3, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->L:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getVoteMessage()Lcom/mgmi/model/t;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/mgmi/model/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    sget v0, Lcom/mgmi/R$id;->logbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->J:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1}, Lcom/mgmi/model/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/mgmi/model/t;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg4d;->w(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xcc

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 23
    :cond_1
    sget p1, Lcom/mgmi/R$id;->mainBg:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->w:Landroid/widget/FrameLayout;

    .line 24
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->x:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->c()V

    .line 26
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->b()V

    :cond_2
    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->P:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->a()V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->R:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->M:Z

    return p0
.end method

.method public final k(Lcom/mgmi/model/t;)V
    .locals 4

    invoke-virtual {p1}, Lcom/mgmi/model/t;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/model/t;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v0, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    :goto_0
    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;Lcom/mgmi/model/t;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->a(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final l(Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/t;->a(Z)V

    :cond_0
    invoke-static {p3}, Lcom/mgmi/model/u;->a(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, p3, v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p1, p3, v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    :goto_0
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->K:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->N:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2}, Lcom/mgmi/model/u;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/mgmi/net/a/a;

    invoke-direct {p1}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mgmi/model/u;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$b;

    invoke-direct {p2, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;)V

    invoke-static {p1, p2}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->I:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->onFinishInflate()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->I:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->R:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->O:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->P:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setFullSreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->S:Z

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startTurning()V
    .locals 0

    return-void
.end method

.method public stopTurning()V
    .locals 0

    return-void
.end method
