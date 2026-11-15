.class public Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_search_video_serials:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->l(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->t(Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->r(Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->s(Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->u(Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static synthetic l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V

    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V
    .locals 13

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCoverY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->score:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->isVip()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getScores()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setRating(F)V

    new-instance v1, Lng7;

    invoke-direct {v1}, Lng7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_score_point:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getScores()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTagList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/onlinevideo/R$id;->rv_tag:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    new-instance v3, Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;

    invoke-direct {v3}, Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_2

    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_2
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Log7;

    invoke-direct {v0, p0, v3}, Log7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;)V

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->isMgTvVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    sget v3, Lcom/transsion/onlinevideo/R$id;->intro_date:I

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v4, Lcom/transsion/onlinevideo/R$id;->intro_date_line:I

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    sget v4, Lcom/transsion/onlinevideo/R$id;->intro_time:I

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v7, Lcom/transsion/onlinevideo/R$id;->intro_time_line:I

    invoke-virtual {p1, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    invoke-static {v7, v8}, Lwna;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_4

    :cond_5
    sget v0, Lcom/transsion/onlinevideo/R$id;->score_container:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->lay_date:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->rv_serials:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    if-eqz v3, :cond_7

    move v5, v2

    :cond_7
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;

    invoke-direct {v3}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCategory()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->r(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCategory()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCategory()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_8

    goto :goto_7

    :cond_8
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x6

    invoke-direct {v4, v5, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_9

    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->i(Z)V

    goto :goto_6

    :cond_9
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->i(Z)V

    :goto_6
    invoke-virtual {v3, v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v0, Lrg7;

    move-object v7, v0

    move-object v8, p0

    move-object v10, v3

    move-object v11, p2

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lrg7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_8

    :cond_a
    :goto_7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_b

    invoke-interface {v1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/transsion/onlinevideo/R$layout;->more_btn_view:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFooterView(Landroid/view/View;)I

    new-instance v4, Lpg7;

    invoke-direct {v4, p0, p2}, Lpg7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    new-instance v0, Lqg7;

    invoke-direct {v0, p0, v1, p2, p1}, Lqg7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_c
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V

    :cond_d
    return-void
.end method

.method public final synthetic r(Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$TagListBean;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$TagListBean;->getType()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSourceType(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$TagListBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setChannel(J)V

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string p2, "vd_ott_label_cl"

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic s(Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Landroid/view/View;)V
    .locals 3

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.transsion.onlinevideo.search.OnlineVideoSerialsActivity"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serial_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "serial_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "serial_list"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "bundle"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic t(Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    new-instance p4, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p4

    new-instance p5, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v1, p6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialId()Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v4, p6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JLjava/lang/String;Z)V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p5, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p4}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getVideoId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "vd_ott_search_result_click"

    const-string v1, "keyword"

    const-string v3, "video_id"

    const-string v5, "rank"

    invoke-static/range {v0 .. v6}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic u(Ljava/util/List;Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-ne p7, p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.transsion.onlinevideo.search.OnlineVideoSerialsActivity"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object p4

    const-string p5, "serial_title"

    invoke-virtual {p2, p5, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getCategory()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const-string p5, "serial_type"

    invoke-virtual {p2, p5, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p4, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p3, "serial_list"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p3, "bundle"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p5, 0x1

    invoke-virtual {p2, p5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p5, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v1, p6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialId()Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v4, p6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JLjava/lang/String;Z)V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p5, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->o:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getVideoId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "vd_ott_search_result_click"

    const-string v1, "keyword"

    const-string v3, "video_id"

    const-string v5, "rank"

    invoke-static/range {v0 .. v6}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->o:Ljava/lang/String;

    return-void
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$a;

    invoke-direct {v1, p0, p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$a;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_video_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter$b;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
