.class public Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;
.super Lcom/transsion/preload/OptimizeListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/preload/OptimizeListAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public q:Z

.field public r:Z

.field public s:J

.field public t:J

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    invoke-direct {p0, v0}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    return-void
.end method

.method public static l(Landroid/widget/ImageView;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;)V

    return-void
.end method

.method public j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;)V
    .locals 12

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_media_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    sget-boolean v1, Lpp3;->L:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->showVipLogo()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget-boolean v1, Lpp3;->L:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->showVipLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lpcc;->d(Landroid/widget/ImageView;)V

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->showDisplayType()I

    move-result v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_tag:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSerial_count()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getFinish_status()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-lez v0, :cond_4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_display_hot_tag:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_display_new_tag:I

    :goto_2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->l(Landroid/widget/ImageView;I)V

    invoke-static {v1}, Lpcc;->d(Landroid/widget/ImageView;)V

    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_media_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_collect:I

    sget-object v2, Lea;->d:Ljava/util/Set;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/transsion/onlinevideo/R$drawable;->ic_collected_recommend:I

    goto :goto_3

    :cond_5
    sget v4, Lcom/transsion/onlinevideo/R$drawable;->ic_collect_recommend:I

    :goto_3
    invoke-static {v2, v4}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->l(Landroid/widget/ImageView;I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_x()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_y()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    if-eqz v2, :cond_7

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_5

    :cond_7
    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_5
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    if-eqz v2, :cond_8

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_6

    :cond_8
    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_6
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->r:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_media_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getShort_describe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getShort_describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_7

    :cond_9
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->s:J

    iget-object v8, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->u:Ljava/lang/String;

    iget-wide v9, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->t:J

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lr16;->c(Landroid/view/View;JLjava/lang/String;JLjava/lang/String;JI)V

    return-void
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->s:J

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    iget-boolean p2, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->r:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_horizontal_grid_item:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_horizontal_item:I

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->r:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_grid_item:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->r:Z

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->q:Z

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->u:Ljava/lang/String;

    return-void
.end method

.method public u(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->t:J

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
