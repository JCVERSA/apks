.class public Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public b:Landroid/view/ViewGroup$MarginLayoutParams;

.field public c:Z

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/view/animation/Animation;

.field public f:Landroid/view/animation/Animation;

.field public g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

.field public h:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public i:Lcom/mgmi/model/e;

.field public j:Lcom/mgmi/e/a/a;

.field public k:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    .line 3
    new-instance p1, Lcom/mgmi/e/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mgmi/e/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    .line 6
    new-instance p1, Lcom/mgmi/e/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mgmi/e/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    .line 9
    new-instance p1, Lcom/mgmi/e/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mgmi/e/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)Lcom/mgmi/model/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->i:Lcom/mgmi/model/e;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->disappear(Z)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->i:Lcom/mgmi/model/e;

    invoke-virtual {v2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/a;->a(Lcom/mgmi/model/d;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->h:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->e(Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V

    return-void
.end method

.method private d(Lcom/mgmi/model/t;)V
    .locals 4

    invoke-virtual {p1}, Lcom/mgmi/model/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgmi/model/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/u;

    invoke-virtual {v2}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    :goto_0
    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;Lcom/mgmi/model/t;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->a(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;)V

    return-void
.end method

.method private e(Lcom/mgmi/model/t;Lcom/mgmi/model/u;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgmi/model/t;->a(Z)V

    invoke-static {p3}, Lcom/mgmi/model/u;->a(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/mgmi/model/u;->a(Z)V

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, p3, v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    iget-object p3, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    invoke-virtual {p0, p2}, Lcom/mgmi/e/a/a;->a(Lcom/mgmi/model/u;)V

    return-void
.end method

.method public static synthetic f(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)Lcom/mgmi/e/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    return-object p0
.end method

.method public static synthetic g(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->h:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/e;)V
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    invoke-virtual {v0}, Lcom/mgmi/model/d;->a()Lcom/mgmi/model/t;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    invoke-virtual {v0}, Lcom/mgmi/model/d;->a()Lcom/mgmi/model/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/t;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->i:Lcom/mgmi/model/e;

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    invoke-virtual {v0}, Lcom/mgmi/model/d;->a()Lcom/mgmi/model/t;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->isVisiblity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->appear(Z)V

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->d(Lcom/mgmi/model/t;)V

    .line 9
    sget v2, Lcom/mgmi/R$id;->listview:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 12
    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->k:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    sget v2, Lcom/mgmi/R$id;->headview:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/mgmi/model/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/mgmi/model/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_1
    sget v2, Lcom/mgmi/R$id;->adbanner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/mgmi/model/t;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/mgmi/model/t;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mgmi/model/t;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Llbd;->E:Llbd;

    invoke-static {v6, v7}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v6

    invoke-virtual {v6, v1}, Llbd$b;->n(I)Llbd$b;

    move-result-object v6

    invoke-virtual {v6}, Llbd$b;->t()Llbd;

    move-result-object v6

    invoke-static {v2, v5, v6, v4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    .line 20
    :cond_2
    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$c;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget v2, Lcom/mgmi/R$id;->logPic:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/mgmi/model/t;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/mgmi/model/t;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mgmi/model/t;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v0, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Llbd$b;->n(I)Llbd$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v0

    invoke-virtual {v0}, Llbd$b;->t()Llbd;

    move-result-object v0

    .line 25
    invoke-static {v2, v5, v0, v4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    :cond_4
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->j:Lcom/mgmi/e/a/a;

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/d;

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/a;->c(Lcom/mgmi/model/d;)V

    :cond_5
    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->e:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lcom/mgmi/model/e;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->a(Lcom/mgmi/model/e;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->f:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$b;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->f:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView$3;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;)V

    invoke-static {p1}, Lj4d;->b(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public getSchemeView()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">()TV;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->c:Z

    return p0
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->d:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->h:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->e:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteSchemeView;->f:Landroid/view/animation/Animation;

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
