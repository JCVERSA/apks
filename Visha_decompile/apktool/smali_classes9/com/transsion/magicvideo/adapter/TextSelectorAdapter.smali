.class public Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;
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

.field public p:I

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    sget v0, Lcom/transsion/magicvideo/R$layout;->text_selector_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->o:I

    iput v0, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->r:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->p:I

    sget v0, Lcom/transsion/magicvideo/R$color;->os_text_primary_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->q:I

    iput-boolean p2, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->r:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->o:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_head:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_sort_name:I

    iget v1, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_head:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_sort_name:I

    iget v1, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 7
    :goto_0
    sget v0, Lcom/transsion/magicvideo/R$id;->item_root:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_sort_name:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    iget-boolean v4, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->r:Z

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, -0x1

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 11
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 13
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 14
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/16 v2, 0x10

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 16
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x43440000    # 196.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 17
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 18
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/TextSelectorAdapter;->o:I

    return-void
.end method
