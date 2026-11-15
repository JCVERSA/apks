.class public Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;
.super Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter<",
        "Lcom/mgmi/model/u;",
        ">;"
    }
.end annotation


# instance fields
.field public q:I

.field public r:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput p3, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->q:I

    return-void
.end method

.method public static synthetic E(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;)Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;

    return-object p0
.end method


# virtual methods
.method public A(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public B()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/u;Ljava/util/List;)V
    .locals 8

    iget p2, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->q:I

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    sget p2, Lcom/mgmi/R$id;->votecontacticon:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Llbd;->E:Llbd;

    invoke-static {v3, v4}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Llbd$b;->n(I)Llbd$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v0

    invoke-virtual {v0}, Llbd$b;->t()Llbd;

    move-result-object v0

    invoke-static {p2, v2, v0, p4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_0
    sget p2, Lcom/mgmi/R$id;->name:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    if-nez p2, :cond_2

    sget p2, Lcom/mgmi/R$id;->name:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x3

    const/16 v3, 0xe6

    const/16 v4, 0xf

    if-eq p2, v2, :cond_d

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x4

    const/16 v5, 0x8

    if-eq p2, v2, :cond_7

    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p4, 0x2

    if-ne p2, p4, :cond_10

    sget p2, Lcom/mgmi/R$id;->name:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget p2, Lcom/mgmi/R$id;->good_best:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/mgmi/model/u;->c()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {p2, v0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_6
    invoke-static {p2, v5}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    sget p2, Lcom/mgmi/R$id;->voteprogressbar:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;

    invoke-virtual {p3}, Lcom/mgmi/model/u;->f()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->setProgress(I)V

    goto/16 :goto_3

    :cond_7
    :goto_1
    sget p2, Lcom/mgmi/R$id;->contactIcon:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Llbd;->E:Llbd;

    invoke-static {v6, v7}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v6

    invoke-virtual {v6, v1}, Llbd$b;->R(Z)Llbd$b;

    move-result-object v1

    invoke-virtual {v1, v4}, Llbd$b;->G(I)Llbd$b;

    move-result-object v1

    invoke-virtual {v1}, Llbd$b;->t()Llbd;

    move-result-object v1

    invoke-static {p2, v2, v1, p4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_8
    sget p2, Lcom/mgmi/R$id;->contactcount:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_9

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/mgmi/model/u;->f()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    sget p2, Lcom/mgmi/R$id;->vote_item_bottom:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/mgmi/model/u;->d()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Lcom/mgmi/model/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg4d;->w(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_a
    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    sget p2, Lcom/mgmi/R$id;->good_best:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/mgmi/model/u;->c()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-static {p2, v0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_3

    :cond_c
    invoke-static {p2, v5}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_3

    :cond_d
    :goto_2
    sget p2, Lcom/mgmi/R$id;->contactIcon:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_e

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mgmi/model/u;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Llbd;->E:Llbd;

    invoke-static {v2, v5}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Llbd$b;->R(Z)Llbd$b;

    move-result-object v1

    invoke-virtual {v1, v4}, Llbd$b;->G(I)Llbd$b;

    move-result-object v1

    invoke-virtual {v1}, Llbd$b;->t()Llbd;

    move-result-object v1

    invoke-static {p2, v0, v1, p4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_e
    sget p2, Lcom/mgmi/R$id;->contactname:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_f

    invoke-virtual {p3}, Lcom/mgmi/model/u;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {p3}, Lcom/mgmi/model/u;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    sget p2, Lcom/mgmi/R$id;->vote_item_bottom:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/model/u;->d()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lg4d;->w(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_10
    :goto_3
    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/dynamicview/c;->b()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/dynamicview/c;->b()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;

    invoke-direct {p2, p0, p3}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;Lcom/mgmi/model/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public a(Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter$b;

    return-void
.end method

.method public b(I)I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->p:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/u;

    invoke-virtual {p0}, Lcom/mgmi/model/u;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r(I)I
    .locals 2

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->q:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget p0, Lcom/mgmi/R$layout;->vote_sheme_icon_item:I

    return p0

    :cond_0
    if-nez p0, :cond_1

    sget p0, Lcom/mgmi/R$layout;->vote_sheme_noicon_item:I

    return p0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    if-ne p1, v0, :cond_2

    sget p0, Lcom/mgmi/R$layout;->vote_sheme_result_item:I

    return p0

    :cond_2
    sget p0, Lcom/mgmi/R$layout;->vote_sheme_result_item02:I

    return p0

    :cond_3
    const/4 p1, 0x3

    if-ne p0, p1, :cond_4

    sget p0, Lcom/mgmi/R$layout;->vote_float_item:I

    return p0

    :cond_4
    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    sget p0, Lcom/mgmi/R$layout;->vote_float_item_result:I

    return p0

    :cond_5
    const/4 p1, 0x5

    if-ne p0, p1, :cond_6

    sget p0, Lcom/mgmi/R$layout;->vote_float_item_harscreen:I

    return p0

    :cond_6
    const/4 p1, 0x6

    if-ne p0, p1, :cond_7

    sget p0, Lcom/mgmi/R$layout;->vote_float_item_result_harscreen:I

    return p0

    :cond_7
    sget p0, Lcom/mgmi/R$layout;->vote_sheme_noicon_item:I

    return p0
.end method

.method public bridge synthetic w(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p3, Lcom/mgmi/model/u;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgadplus/viewgroup/dynamicview/VoteAdapter;->F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/u;Ljava/util/List;)V

    return-void
.end method
