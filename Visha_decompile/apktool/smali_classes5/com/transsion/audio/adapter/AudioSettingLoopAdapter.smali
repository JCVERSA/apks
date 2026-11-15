.class public abstract Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/audio/data/AudioSettingItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isForceNight:Z

.field private repeatMode:I

.field private selectPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;IZ)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$layout;->audio_loop_item_layout:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput p2, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->repeatMode:I

    iput-boolean p3, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->isForceNight:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->c(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(ILandroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->selectPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->selectPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/data/AudioSettingItem;

    invoke-virtual {p1}, Lcom/transsion/audio/data/AudioSettingItem;->getValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->repeatMode:I

    iget p2, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->selectPosition:I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->selectItem(ILcom/transsion/audio/data/AudioSettingItem;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/data/AudioSettingItem;)V
    .locals 5

    .line 2
    iget v0, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->repeatMode:I

    invoke-virtual {p2}, Lcom/transsion/audio/data/AudioSettingItem;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    sget v1, Lcom/transsion/audio/R$id;->fl_bg:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceNight: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->isForceNight:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AudioSettingLoop"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v2, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->isForceNight:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/transsion/audio/R$drawable;->audio_loop_select_item_light:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/audio/R$drawable;->audio_loop_select_item:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    :goto_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lc00;

    invoke-direct {v2, p0, v3}, Lc00;-><init>(Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v1, Lcom/transsion/audio/R$id;->image:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    .line 10
    invoke-virtual {p2}, Lcom/transsion/audio/data/AudioSettingItem;->getIconResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    if-eqz v0, :cond_4

    .line 11
    iget-boolean p0, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->isForceNight:Z

    if-eqz p0, :cond_3

    const/high16 p0, -0x1000000

    goto :goto_3

    :cond_3
    const p0, -0xd0d0e

    goto :goto_3

    :cond_4
    const p0, -0x404041

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/audio/data/AudioSettingItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/data/AudioSettingItem;)V

    return-void
.end method

.method public notifyByNightType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->isForceNight:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract selectItem(ILcom/transsion/audio/data/AudioSettingItem;)V
.end method

.method public updateRepeatMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->repeatMode:I

    return-void
.end method
