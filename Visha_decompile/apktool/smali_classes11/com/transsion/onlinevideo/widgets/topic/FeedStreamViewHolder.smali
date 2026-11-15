.class public Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;
.super Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
.source "SourceFile"


# instance fields
.field public r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-boolean p2, p0, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;->r:Z

    return-void
.end method

.method public static synthetic d(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;->e(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    rsub-int v1, v1, 0xa0

    div-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    sget v5, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceName()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getViews()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCreated()Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v6, v7, v8, v5}, Ldt7;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/transsion/onlinevideo/R$id;->tv_duration:I

    invoke-virtual {p0, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getDuration()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;->r:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getChannelName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getShortDescribe()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget v5, Lcom/transsion/onlinevideo/R$id;->tv_sec_title:I

    invoke-virtual {p0, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_3

    :cond_6
    sget v6, Lcom/transsion/onlinevideo/R$id;->tv_sec_title:I

    invoke-virtual {p0, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_3
    sget v5, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag:I

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSerialCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getFinishStatus()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/onlinevideo/R$id;->iv_cover:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v7, Lcom/transsion/onlinevideo/R$id;->iv_logo:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getImages()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ldt7;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_feed_stream_placeholder:I

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    new-instance v8, Lof0;

    invoke-direct {v8}, Lof0;-><init>()V

    invoke-static {v8}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    :cond_7
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCoverX()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_feed_stream_placeholder:I

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v7, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_4
    iget-boolean v5, p0, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;->r:Z

    if-nez v5, :cond_9

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v9, v10}, Loc2;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/bumptech/glide/load/Transformation;

    aput-object v7, v9, v0

    aput-object v8, v9, v1

    invoke-virtual {v5, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_feed_small_default:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCoverY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_7

    :cond_9
    :goto_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getChannelConver()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_avator_default:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_7
    sget v1, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_8

    :cond_b
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lsp3;

    invoke-direct {v0, v1}, Lsp3;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1, v4}, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;->f(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Z)V

    return-void
.end method

.method public final f(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Z)V
    .locals 34

    move-object/from16 v0, p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v3

    new-instance v4, Lcom/transsion/dbdata/beans/VideoIndex;

    if-eqz p2, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    :goto_0
    const/4 v7, 0x1

    invoke-direct {v4, v7, v5, v6}, Lcom/transsion/dbdata/beans/VideoIndex;-><init>(IJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getSort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRecommendPart()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-static/range {v8 .. v20}, Lr16;->f(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getSort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v27

    invoke-static {v1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRecommendPart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v30

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v31

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    move/from16 v32, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v33

    const/16 v29, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v33}, Lr16;->g(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markViewIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarkViewIds"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
