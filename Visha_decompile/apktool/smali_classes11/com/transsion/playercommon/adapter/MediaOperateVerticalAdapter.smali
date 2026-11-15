.class public Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/data/MediaOperateMenuBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->item_media_operate_menu_vertical:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->d(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V
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

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->o:Landroid/widget/PopupWindow;

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

.method private g(Landroid/view/View;)V
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

    new-instance v1, Lhk6;

    invoke-direct {v1, p0, p1, v0}, Lhk6;-><init>(Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-wide/16 p0, 0x12c

    invoke-static {v1, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/MediaOperateMenuBean;)V
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_media_operate_menu_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/playercommon/R$id;->icon_text:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->getIconName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->getIconName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget v5, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->iconResId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const/16 v5, 0x8

    if-eqz v3, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/playercommon/R$id;->tv_media_operate_menu_name:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v7, Lcom/transsion/playercommon/R$id;->bv_point:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v7, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isNeedPoint:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lydc;->e()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v3, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget p2, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->flagId:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->g(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/MediaOperateMenuBean;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->o:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method
