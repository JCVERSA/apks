.class public Lcom/transsion/playercommon/adapter/SettingMenuAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/data/SettingMenu;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->video_settings_menu_item_button:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/SettingMenu;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/SettingMenu;->getIconStringId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget v2, Lcom/transsion/playercommon/R$id;->icontext_setting_menu:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget v1, Lcom/transsion/playercommon/R$id;->iv_setting_menu:I

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/SettingMenu;->getIconStringId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/SettingMenu;->getIconTextColor()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/SettingMenu;->getIconTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    iget v0, p2, Lcom/transsion/playercommon/data/SettingMenu;->mStateResId:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    iget-boolean v0, p2, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-boolean v0, p2, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/playercommon/R$id;->iv_setting_menu_name:I

    iget v3, p2, Lcom/transsion/playercommon/data/SettingMenu;->mTitleResId:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v4, p2, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const v4, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget v3, p2, Lcom/transsion/playercommon/data/SettingMenu;->mFlag:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/SettingMenu;->getIconStringId()I

    move-result p2

    if-eqz p2, :cond_9

    if-eqz v2, :cond_8

    iput-object v2, p0, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->o:Landroid/view/View;

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->o:Landroid/view/View;

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->o:Landroid/view/View;

    :goto_4
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->o:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/SettingMenu;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/SettingMenu;)V

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/SettingMenuAdapter;->o:Landroid/view/View;

    return-object p0
.end method
