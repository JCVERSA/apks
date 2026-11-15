.class public Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V
    .locals 3

    if-eqz p2, :cond_4

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_media_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getSerial_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getFinish_status()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    sget-boolean v1, Lpp3;->L:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->showVipLogo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_media_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_x()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_y()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_2
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_3

    :cond_3
    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_3
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->p:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    return-void
.end method

.method public getDefItemViewType(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    iget-boolean p2, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->o:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->p:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->adapter_topicdetail_hor:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/onlinevideo/R$layout;->media_horizontal_item:I

    :goto_0
    invoke-virtual {v1, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->p:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/onlinevideo/R$layout;->adapter_topicdetail_ver:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    :goto_1
    invoke-virtual {v1, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
