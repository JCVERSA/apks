.class public Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;
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
.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->player_speed_choose_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->tv_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/playercommon/R$id;->iv_forward:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/playercommon/R$id;->ll_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    iget v5, p0, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;->o:I

    if-ne v4, v5, :cond_0

    .line 7
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/playercommon/R$string;->play_speed_forward:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x41a00000    # 20.0f

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_speed_bg_select:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 11
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x41900000    # 18.0f

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_speed_bg:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;->o:I

    return-void
.end method
