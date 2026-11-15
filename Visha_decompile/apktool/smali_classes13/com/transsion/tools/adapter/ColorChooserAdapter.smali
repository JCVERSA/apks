.class public Lcom/transsion/tools/adapter/ColorChooserAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/tools/beans/ThemeColor;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/tools/R$layout;->item_color_chooser_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$layout;->item_color_chooser:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/beans/ThemeColor;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->iv_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/tools/R$id;->iv_selector:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget v3, p0, Lcom/transsion/tools/adapter/ColorChooserAdapter;->o:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/tools/R$id;->iv_image_select:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget p0, p0, Lcom/transsion/tools/adapter/ColorChooserAdapter;->o:I

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget p0, p2, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/tools/beans/ThemeColor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/beans/ThemeColor;)V

    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/adapter/ColorChooserAdapter;->o:I

    return p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/adapter/ColorChooserAdapter;->o:I

    return-void
.end method
