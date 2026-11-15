.class public Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;
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
.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->item_media_operate_menu_horizontal:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/MediaOperateMenuBean;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_media_operate_menu_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/playercommon/R$id;->icon_text:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->getIconName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->getIconName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isNeedThemeColor()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->d(Z)I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget p0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->iconResId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    iget-boolean p0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->showDescription:Z

    const/16 v5, 0x8

    if-nez p0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p0, v4

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v5

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean p0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->showDescription:Z

    if-nez p0, :cond_6

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v5, v4

    :cond_6
    :goto_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/transsion/playercommon/R$id;->tv_media_operate_menu_name:I

    iget-object v0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean p0, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->showDescription:Z

    if-eqz p0, :cond_7

    sget p0, Lcom/transsion/playercommon/R$id;->tv_media_operate_menu_text:I

    invoke-virtual {p1, p0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p2, p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_5

    :cond_7
    sget p0, Lcom/transsion/playercommon/R$id;->tv_media_operate_menu_text:I

    invoke-virtual {p1, p0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/MediaOperateMenuBean;)V

    return-void
.end method

.method public final d(Z)I
    .locals 4

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->p:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->p:I

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$color;->os_icon_secondary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->o:I

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->p:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;->o:I

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
