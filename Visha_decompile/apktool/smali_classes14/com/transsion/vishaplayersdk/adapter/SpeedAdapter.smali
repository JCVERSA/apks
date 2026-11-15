.class public Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedItemPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/vishaplayersdk/R$layout;->vishasdk_player_speed_choose_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->tv_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/vishaplayersdk/R$id;->iv_forward:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/vishaplayersdk/R$id;->ll_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget p0, p0, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;->mSelectedItemPosition:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x41a00000    # 20.0f

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->ic_speed_bg_select:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 10
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x41900000    # 18.0f

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    sget p0, Lcom/transsion/vishaplayersdk/R$drawable;->ic_speed_bg:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;->mSelectedItemPosition:I

    return-void
.end method
