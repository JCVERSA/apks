.class public abstract Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;
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

.field public p:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->video_loop_item_layout:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput p2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->p:I

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->g(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic g(ILandroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->o:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/data/VideoSettingItem;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->p:I

    iget p2, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->o:I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->h(ILcom/transsion/magicvideo/data/VideoSettingItem;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/VideoSettingItem;)V
    .locals 4

    sget v0, Lcom/transsion/magicvideo/R$id;->image:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->fl_bg:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->d(Lcom/transsion/magicvideo/data/VideoSettingItem;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget v3, p0, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->p:I

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result p2

    if-ne v3, p2, :cond_0

    sget p2, Lcom/transsion/magicvideo/R$drawable;->loop_select_item:I

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 p2, -0x1000000

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const p2, -0x59000001

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lu6c;

    invoke-direct {p2, p0, v2}, Lu6c;-><init>(Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/magicvideo/data/VideoSettingItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/VideoSettingItem;)V

    return-void
.end method

.method public final d(Lcom/transsion/magicvideo/data/VideoSettingItem;)I
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getIconResId()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->os_play:I

    return p0
.end method

.method public abstract h(ILcom/transsion/magicvideo/data/VideoSettingItem;)V
.end method
