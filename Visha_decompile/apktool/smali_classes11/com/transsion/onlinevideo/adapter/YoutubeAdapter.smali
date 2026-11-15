.class public Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;)V
    .locals 5

    if-eqz p2, :cond_3

    sget p0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object p0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_sec_title:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;->getChannelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p2, ""

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;->getWidth()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, p2

    move-object p2, v4

    goto :goto_0

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_feed_stream_placeholder:I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method

.method public c(Landroid/content/Context;IZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;->getChannelName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object v7, p2

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v7, p2

    move-object v8, v1

    goto :goto_0

    :cond_2
    move-object v7, v1

    move-object v8, v7

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getThumbnails()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v9, v1

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p0

    const-string p2, "vd_ott_detail_related_cl"

    invoke-virtual {p0, p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->o:Ljava/lang/String;

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_search_youtube:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
