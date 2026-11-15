.class public Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public p:Landroid/view/View;

.field public final synthetic q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 11

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2d;

    invoke-virtual {v0}, Ll2d;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->contactTitle:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->contactIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v4}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2d;

    invoke-virtual {v4}, Ll2d;->f()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Llbd;->E:Llbd;

    invoke-static {v4, v5}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v4

    invoke-virtual {v4, v2}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v4

    invoke-virtual {v4, v2}, Llbd$b;->n(I)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    invoke-static {v0, v3, v2, v1}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;

    invoke-direct {v1, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2d;

    invoke-virtual {v0}, Ll2d;->i()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->contactTitle:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->contactIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v5}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll2d;

    invoke-virtual {v5}, Ll2d;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v5, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Llbd$b;->n(I)Llbd$b;

    move-result-object v5

    invoke-virtual {v5}, Llbd$b;->t()Llbd;

    move-result-object v5

    invoke-static {v0, v3, v5, v1}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg4d;->l(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x1e

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v3, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v5}, Llbd$b;->G(I)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Llbd$b;->R(Z)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Llbd$b;->n(I)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Llbd$b;->s(Z)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v3, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v5}, Llbd$b;->G(I)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Llbd$b;->R(Z)Llbd$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Llbd$b;->n(I)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2d;

    invoke-virtual {v3}, Ll2d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$b;

    invoke-direct {v1, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2d;

    invoke-virtual {v0}, Ll2d;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->leftArea:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->leftText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2d;

    invoke-virtual {v1}, Ll2d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->rightArea:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->rightText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2d;

    invoke-virtual {p1}, Ll2d;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->p:Landroid/view/View;

    sget v3, Lcom/mgmi/R$id;->bubble_option_item:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->q:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-static {v3}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    const p0, 0x3f19999a    # 0.6f

    invoke-static {p1, p0}, Ll4d;->a(Landroid/view/View;F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$c;

    move-object v5, v3

    move-object v6, p0

    move-object v8, p1

    move-object v9, v0

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;

    move-object v5, v3

    move-object v7, v2

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b$d;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method
