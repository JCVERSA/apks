.class public Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_hot_search:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_media_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_hot_search:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-gt v1, v4, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_hot_search_1:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v3, :cond_2

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_hot_search_2:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_hot_search_3:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_3
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    sget-boolean v1, Lpp3;->L:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->showVipLogo()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget-boolean v1, Lpp3;->L:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->showVipLogo()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lpcc;->d(Landroid/widget/ImageView;)V

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->showDisplayType()I

    move-result v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_tag:I

    if-lez v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-lez v0, :cond_8

    if-ne v0, v4, :cond_7

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_display_hot_tag:I

    goto :goto_3

    :cond_7
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_display_new_tag:I

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lpcc;->d(Landroid/widget/ImageView;)V

    :cond_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_media_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_collect:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getCoverY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;)V

    return-void
.end method
