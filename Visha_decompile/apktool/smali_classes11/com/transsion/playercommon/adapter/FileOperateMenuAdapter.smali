.class public Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/data/FileOperateItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->file_operate_item_view:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->h(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 7

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->isEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/transsion/playercommon/R$id;->item_name:I

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getTextResId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/playercommon/R$id;->item_icon:I

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getImageResId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    iput-object v3, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->o:Landroid/widget/ImageView;

    :cond_2
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/playercommon/R$id;->bv_point:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    invoke-static {}, Lydc;->e()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->isEnable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->isEnable()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/transsion/playercommon/R$id;->icon_text:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getIconText()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getIconText()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getIconText()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->i(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/FileOperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileOperateItem;)V

    return-void
.end method

.method public g()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final synthetic h(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->visha_one_click_to_match_audio_info:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lea7;->p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->p:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_show_audio_smart_edit_tip"

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "mmkv_key_show_audio_smart_edit_tip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    new-instance v1, Ltq3;

    invoke-direct {v1, p0, p1, v0}, Ltq3;-><init>(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-wide/16 p0, 0x12c

    invoke-static {v1, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->p:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method
