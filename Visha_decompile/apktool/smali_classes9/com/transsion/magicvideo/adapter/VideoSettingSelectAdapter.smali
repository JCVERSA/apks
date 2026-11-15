.class public abstract Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/magicvideo/data/VideoSettingItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->video_setting_item_raidobutton:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput p2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->o:I

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->d(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 1

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget p1, p0, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->o:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->o:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/magicvideo/data/VideoSettingItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->g(ILcom/transsion/magicvideo/data/VideoSettingItem;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/VideoSettingItem;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$id;->fl_bg_plus:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->rb_item:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->isTimer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget v2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->o:I

    if-eq v2, p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/magicvideo/R$color;->os_color_gray65:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$drawable;->timer_select_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/magicvideo/R$color;->black:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lv6c;

    invoke-direct {v0, p0, p2}, Lv6c;-><init>(Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/magicvideo/data/VideoSettingItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/VideoSettingItem;)V

    return-void
.end method

.method public abstract g(ILcom/transsion/magicvideo/data/VideoSettingItem;)V
.end method
