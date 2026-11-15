.class public Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public p:Ljava/util/ArrayList;

.field public q:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->rv_bookmark_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 7

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_bookmark_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_bookmark_url:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->bookmark_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->custom_bookmark_cover:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageResId()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-lez v3, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    sget v6, Lcom/transsion/sniffer_load/R$drawable;->ic_bookmark_placeholder:I

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;

    invoke-direct {v3, p0, v1}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;-><init>(Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lb23;->o(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->o:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->o:Z

    if-eqz p0, :cond_5

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;Ljava/util/List;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    goto :goto_0

    :cond_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_checkBox:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->o:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->o:Z

    if-eqz p0, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method public bridge synthetic convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;Ljava/util/List;)V

    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->q:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;

    invoke-interface {v0, p1}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;->c(Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public i(Lcom/transsion/dbdata/beans/sniff/Bookmark;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->q:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;->b(I)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->o:Z

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->q:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;

    return-void
.end method
