.class public Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;
.super Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter<",
        "Lcom/mgmi/model/k;",
        ">;"
    }
.end annotation


# instance fields
.field public q:Landroid/content/Context;

.field public r:I


# direct methods
.method public static synthetic E(Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;)Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/k;Ljava/util/List;)V
    .locals 3

    sget p2, Lcom/mgmi/R$id;->left:I

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p2

    sget p4, Lcom/mgmi/R$id;->ll_content:I

    invoke-virtual {p1, p4}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    sget v0, Lcom/mgmi/R$id;->mgmi_id_title_text_2:I

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/model/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p4, :cond_3

    iget-boolean v0, p3, Lcom/mgmi/model/k;->a:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->q:Landroid/content/Context;

    invoke-static {v0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->r:I

    invoke-virtual {p4, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->q:Landroid/content/Context;

    invoke-static {p2, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p2

    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/dynamicview/c;->b()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/dynamicview/c;->b()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;

    invoke-direct {p2, p0, p3}, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;Lcom/mgmi/model/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public r(I)I
    .locals 0

    sget p0, Lcom/mgmi/R$layout;->mgmi_multichoose_item:I

    return p0
.end method

.method public bridge synthetic w(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p3, Lcom/mgmi/model/k;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgadplus/viewgroup/dynamicview/MultiAdapter;->F(Lcom/mgadplus/viewgroup/dynamicview/c;ILcom/mgmi/model/k;Ljava/util/List;)V

    return-void
.end method
