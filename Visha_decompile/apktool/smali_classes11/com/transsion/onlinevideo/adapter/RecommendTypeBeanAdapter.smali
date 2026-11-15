.class public Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->media_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;)V
    .locals 4

    instance-of v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_media_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    sget-boolean v3, Lpp3;->L:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->showVipLogo()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSerial_count()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getFinish_status()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

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

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_x()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_y()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_1
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_2

    :cond_3
    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_2
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_8

    :cond_4
    instance-of v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_media_title:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    sget-boolean v3, Lpp3;->L:Z

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->showVipLogo()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

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

    iget-boolean v3, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgX:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v3, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgY:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz v3, :cond_7

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_5

    :cond_7
    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_5
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    if-eqz p0, :cond_8

    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_6

    :cond_8
    sget p0, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_6
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->tag:I

    if-ne p0, v2, :cond_9

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->arg1:Ljava/lang/Object;

    if-eqz p0, :cond_9

    check-cast p0, [Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;

    array-length p1, p0

    :goto_7
    if-ge v1, p1, :cond_9

    aget-object p2, p0, v1

    iget-object v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;->url:Ljava/lang/String;

    iget-object v2, p2, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;->method:Ljava/lang/String;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;->data:Ljava/lang/String;

    invoke-static {v0, v2, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    return-void
.end method

.method public c(Landroid/content/Context;I)V
    .locals 13

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    instance-of v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    const-string v2, "vd_ott_detail_related_cl"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v11, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->serialId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->title:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/16 v5, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v11}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-object p1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->id:Ljava/lang/String;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->serialId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->isPay:I

    invoke-static {v2}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->q:Ljava/lang/String;

    invoke-static {p1, v1, p2, v2, p0}, Ly06;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->tag:I

    if-ne p0, v3, :cond_2

    iget-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->arg2:Ljava/lang/Object;

    if-eqz p0, :cond_2

    check-cast p0, [Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    iget-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;->method:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;->data:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v11, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v5, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v11}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->q:Ljava/lang/String;

    invoke-static {p1, v1, p2, v0, p0}, Ly06;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->p:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    iget-boolean p2, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->o:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->p:Z

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

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->p:Z

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
